using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PostProcessing;

public class Player : MonoBehaviour {

    public float FearLevel;
    bool inmunity;

    public float Speed;

    public bool isHiding;
    public bool canHide;

    public GameObject myModel;
    public GameObject CardBox;

    public PostProcessingProfile _CC;
    VignetteModel.Settings vignetteSettings;
    public float vignetteAmount;

    bool scared_1;
    bool scared_2;
    bool death;

    bool isScared;

    Animator anim;
   
    void Start () {
        vignetteSettings = _CC.vignette.settings;
        vignetteSettings.intensity = 0;

        anim = GetComponent<Animator>();
    }

    void Update()
    {

        if(FearLevel >= 20 && !death)
        {
            death = true;
            anim.SetTrigger("Death");
            Destroy(gameObject, 1f);
        }
      
        if (!isHiding && !isScared)
        {
            Movement();
        } else if(!isHiding && isScared)
        {
            Movement();
        }
     
        VignetteAmount();
        SoundsClose();

        if (Input.GetKeyDown(KeyCode.F) && canHide)
        {
            if (myModel.activeSelf)
            {
                myModel.SetActive(false);
                CardBox.SetActive(true);
                isHiding = true;

            }
            else
            {
                myModel.SetActive(true);
                CardBox.SetActive(false);
                isHiding = false;

            }
        }
    }

    void Movement()
    { 
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");

        if(h != 0 || v != 0)
        {
            anim.SetBool("Walk", true);
        } else
        {
            anim.SetBool("Walk", false);
        }

        transform.Translate(new Vector3(v, 0, -h) * Speed * Time.deltaTime, Space.World);


        Vector2 input = new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        Vector2 inputDir = input;


        if (input != Vector2.zero)
        {
            transform.eulerAngles = Vector3.up * Mathf.Atan2(inputDir.y, -inputDir.x) * Mathf.Rad2Deg;
        }
    }

    void VignetteAmount()
    {
        GameObject[] enemyList;
        enemyList = GameObject.FindGameObjectsWithTag("Enemy");
        for (int i = 0; i < enemyList.Length; i++)
        {
            if (Vector3.Distance(enemyList[i].transform.position, transform.position) <= 15 && Vector3.Distance(enemyList[i].transform.position, transform.position) >= 5)
            {
                if (!scared_1)
                {
                    anim.SetTrigger("Scared");
                    scared_1 = true;
                }

                isScared = false;
                Speed = 5;
                    
                if (vignetteSettings.intensity < 0.5f)
                {
                    vignetteSettings.intensity += vignetteAmount;

                    if (vignetteSettings.intensity > 0.5f)
                    {
                        vignetteSettings.intensity = 0.5f;
                    }

                }

                else if (vignetteSettings.intensity > 0.5f)
                {
                    vignetteSettings.intensity -= vignetteAmount;

                    if (vignetteSettings.intensity <= 0.5f)
                    {
                        vignetteSettings.intensity = 0.5f;
                    }
                }
            }
            else if (Vector3.Distance(enemyList[i].transform.position, transform.position) <= 5)
            {
                if (!scared_2)
                {
                    anim.SetTrigger("Scared");
                    scared_2 = true;
                }

                isScared = true;
                Speed = 7;

                if (vignetteSettings.intensity >= 0.5f)
                {
                    vignetteSettings.intensity += vignetteAmount;

                    if (vignetteSettings.intensity > 1f)
                    {
                        vignetteSettings.intensity = 1f;
                    }

                }
            }
            else
            {
                Speed = 3;
                isScared = false;
                Invoke("ResetFearLevel", 5f);

                scared_1 = false;
                scared_2 = false;

                if (vignetteSettings.intensity > 0f)
                {
                    vignetteSettings.intensity -= vignetteAmount;

                    if (vignetteSettings.intensity <= 0f)
                    {
                        vignetteSettings.intensity = 0f;
                    }
                }
            }

        }

        _CC.vignette.settings = vignetteSettings;
    }

    void SoundsClose()
    {
        GameObject[] Sounds = GameObject.FindGameObjectsWithTag("Sound");

        for (int i = 0; i <= Sounds.Length - 1; i++)
        {
            float dist = Vector3.Distance(transform.position, Sounds[i].transform.position);

            if (dist > 18)
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 0;
            }
            else if (dist <= 18 && dist > 14.4)
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 0.2f;
            }
            else if (dist <= 14.4 && dist > 10.8)
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 0.4f;
            }
            else if (dist <= 10.8 && dist > 7.2)
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 0.6f;
            } 
            else if(dist <= 7.2 && dist > 3.6)
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 0.8f;
            }
            else
            {
                transform.GetChild(5).transform.GetChild(1).gameObject.GetComponent<AudioSource>().volume = 1;
            }
        }
    }

    void OnTriggerStay(Collider _col)
    {
        if (_col.gameObject.CompareTag("Hide"))
        {
            canHide = true;
        }

        if (_col.gameObject.CompareTag("Enemy") && !inmunity)
        {
            inmunity = true;
            FearLevel += 1;
            Invoke("ResetInmunity", 1f);

            
        }
    }

    void OnTriggerExit()
    {
        canHide = false;
    }

    //void OnCollisionEnter(Collision _col)
    //{
    //    if (_col.gameObject.CompareTag("Enemy"))
    //    {
    //        FearLevel += 1;
    //    }
    //}

    void ResetFearLevel()
    {
        FearLevel = 0;
    }

    void ResetInmunity()
    {
        inmunity = false;
    }
}
