using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GateC : MonoBehaviour
{
    public GameObject gateInfo;

    GameObject Player;
    public List<string> keyItems_needed;
    public List<string> keyItems_obtained;

    public RawImage mainImage;

    public Texture[] textures;

    bool nextLevel;

    // Start is called before the first frame update
    void Start()
    {
        Player = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        if(Player != null)
        {
            keyItems_obtained = Player.GetComponent<InventoryC>().KeyItems;
        }

        for(int i=0; i<keyItems_needed.Count; i++)
        {
            if (keyItems_obtained.Contains(keyItems_needed[i])){
                mainImage.texture = textures[0];
                nextLevel = true;
            } else
            {
                mainImage.texture = textures[1];
                nextLevel = false;
            }
        }
    }

    void OnTriggerStay(Collider _col)
    {
        if (_col.gameObject.CompareTag("Player") )
        {
            gateInfo.SetActive(true);

            if(Input.GetKeyDown(KeyCode.F) && nextLevel)
            {
                SceneManager.LoadScene("Forest");
            }
        }
    }

    void OnTriggerExit(Collider _col)
    {
        if (_col.gameObject.CompareTag("Player"))
        {
            gateInfo.SetActive(false);
        }
    }
}
