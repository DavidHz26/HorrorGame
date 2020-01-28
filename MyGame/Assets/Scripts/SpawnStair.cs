using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnStair : MonoBehaviour
{
    public GameObject ItemPrefab;
    public string ItemNeeded;
    public GameObject Building;

    GameObject[] Points;

    int numRandom;

    public bool myCondition;
    bool _lock;

    GameObject GC;


    // Start is called before the first frame update
    void Start()
    {
        GC = GameObject.Find("GameController");

        int temp = Building.transform.childCount;
        Points = new GameObject[temp];

        for (int i = 0; i <= temp - 1; i++)
        {
            Points[i] = Building.transform.GetChild(i).gameObject;

        }

        numRandom = Random.Range(0, temp);

       
    }

    void Update()
    {
        if (GC.GetComponent<GameController>()._ItemsCollected.Contains(ItemNeeded))
        {
            myCondition = true;
        }

        if (myCondition && !_lock)
        {
            GameObject Item = Instantiate(ItemPrefab);
            Item.transform.position = Points[numRandom].transform.position;
            _lock = true;
        }    
    }
}
