using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{
    GameObject Player;

    public List<string> _ItemsCollected;


    // Start is called before the first frame update
    void Start()
    {
        Player = GameObject.Find("ChaWitch");
    }

    // Update is called once per frame
    void Update()
    {
        _ItemsCollected = Player.GetComponent<InventoryC>().KeyItems;
    }
}
