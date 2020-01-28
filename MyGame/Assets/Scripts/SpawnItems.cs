using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnItems : MonoBehaviour
{
    public GameObject ItemPrefab;
    public GameObject Building;

    GameObject[] Points;

    int numRandom;

    // Start is called before the first frame update
    void Start()
    {
        int temp = Building.transform.childCount;
        Points = new GameObject[temp];

        for (int i = 0; i <= temp - 1; i++)
        {
            Points[i] = Building.transform.GetChild(i).gameObject;

        }

        numRandom = Random.Range(0, temp);

        GameObject Item = Instantiate(ItemPrefab);
        Item.transform.position = Points[numRandom].transform.position;
    }

}
