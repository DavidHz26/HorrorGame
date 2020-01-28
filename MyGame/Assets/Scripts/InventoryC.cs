using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventoryC : MonoBehaviour
{
    public int weaponHand = 0;

    public GameObject Flashlight;
    public GameObject Lantern;
    public GameObject CardBox;

    public bool lightOn;
    public GameObject fLight;
    public GameObject lLight;

    public bool hasaLantern;

    bool _isHiding;

    public GameObject CanvasPlayer;
    bool _interactableItem;

    public List<string> KeyItems;
    public List<Texture> Key_Sprites;

    public bool triggered;
    public Collider col;

    Animator anim;

    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if(gameObject != null)
            _isHiding = GetComponent<Player>().isHiding;

        float mouseScroll = Input.GetAxis("Mouse ScrollWheel");

        if (mouseScroll < 0)
        {
            weaponHand -= 1;

            if (weaponHand < -1)
            {
                weaponHand = -1;
            }
        }
        else if (mouseScroll > 0)
        {
            weaponHand += 1;

            if (weaponHand > 1)
            {
                weaponHand = 1;
            }
        }

        if (!_isHiding)
        {
            switch (weaponHand)
            {
                case -1:
                    Flashlight.SetActive(true);
                    Lantern.SetActive(false);
                    TurnLightOn();
                    break;

                case 0:
                    Flashlight.SetActive(false);
                    Lantern.SetActive(false);
                    break;
                case 1:
                    if (hasaLantern)
                    {
                        Flashlight.SetActive(false);
                        Lantern.SetActive(true);
                        TurnLightOn();
                    }
                    break;
            }
        } else
        {
            Flashlight.SetActive(false);
            Lantern.SetActive(false);
        }

        if (_interactableItem)
        {
            CanvasPlayer.SetActive(true);
        } else
        {
            CanvasPlayer.SetActive(false);
        }

        if (triggered && !col)
        {
            CanvasPlayer.SetActive(false);
            Invoke("RestoreValues", 0.5f);
        }
    }

    void TurnLightOn()
    {
        if (Input.GetKeyDown(KeyCode.Mouse0))
        {
            if (lightOn)
            {
                fLight.SetActive(false);
                lLight.SetActive(false);
                lightOn = false;
            }
            else if (!lightOn)
            {
                fLight.SetActive(true);
                lLight.SetActive(true);
                lightOn = true;
            }
        }
    }

    void OnTriggerStay(Collider _col)
    {
        if (_col.gameObject.CompareTag("InteractableItem"))
        {
            _interactableItem = true;
        }

        if (_col.gameObject.CompareTag("LanternItem") && Input.GetKeyDown(KeyCode.F))
        {
            triggered = true;
            col = _col;

            anim.SetTrigger("PickUp");

            hasaLantern = true;
            Destroy(_col.gameObject);
        }

        if (_col.gameObject.CompareTag("KeyItem") && Input.GetKeyDown(KeyCode.F) && !KeyItems.Contains(_col.gameObject.name))
        {
            triggered = true;
            col = _col;

            anim.SetTrigger("PickUp");

            KeyItems.Add(_col.gameObject.name);
            Key_Sprites.Add(_col.gameObject.transform.GetChild(2).gameObject.GetComponent<RawImage>().texture);
            Destroy(_col.gameObject);
        }
    }

    void OnTriggerExit()
    {
        _interactableItem = false;   
    }

    void RestoreValues()
    {
        triggered = false;
        col = null;
        _interactableItem = false;
    }
}
