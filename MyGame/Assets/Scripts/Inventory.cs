using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

using UnityEngine.SceneManagement;

public class Inventory : MonoBehaviour {

    public int slot;
    bool _foundLantern;

    public GameObject _Player;
    public GameObject PanelInventory;

    //Weapons
    public RawImage[] WeaponsSlots;
    public Texture[] WeaponsSprites;

    //KeyItems
    public RawImage[] KeyItemsSlots;
    public List<Texture> Key_Sprites;
   
    void Update()
    {
        Weapons();
        KeyItems();

        if (Input.GetKeyDown(KeyCode.Mouse1))
        {
            if(PanelInventory.activeSelf)
                PanelInventory.SetActive(false);
            else
                PanelInventory.SetActive(true);
        } 

    }

    void Weapons()
    {
        if (_Player != null)
        {
            slot = _Player.GetComponent<InventoryC>().weaponHand;
            _foundLantern = _Player.GetComponent<InventoryC>().hasaLantern;

            switch (slot)
            {
                case -1:
                    WeaponsSlots[1].texture = WeaponsSprites[3];
                    WeaponsSlots[0].texture = WeaponsSprites[1];
                    WeaponsSlots[2].texture = WeaponsSprites[0];
                    break;

                case 0:
                    WeaponsSlots[1].texture = WeaponsSprites[1];
                    WeaponsSlots[0].texture = WeaponsSprites[0];
                    if (_foundLantern)
                        WeaponsSlots[2].texture = WeaponsSprites[2];
                    else
                        WeaponsSlots[2].texture = WeaponsSprites[3];
                    break;

                case 1:
                    if (_foundLantern)
                    {
                        WeaponsSlots[1].texture = WeaponsSprites[0];
                        WeaponsSlots[0].texture = WeaponsSprites[2];
                        WeaponsSlots[2].texture = WeaponsSprites[3];
                    }
                    break;
            }

            if (Input.GetKeyDown(KeyCode.Backspace))
            {
                Application.Quit();
            }
        }
    }

    void KeyItems()
    {
        if (_Player != null)
        {
                Key_Sprites = _Player.GetComponent<InventoryC>().Key_Sprites;

                for (int i = 0; i < Key_Sprites.Count; i++)
            {
                KeyItemsSlots[i].texture = Key_Sprites[i];
            }
        }
    }
}
