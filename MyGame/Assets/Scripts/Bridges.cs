using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bridges : MonoBehaviour
{
    public string ItemNeeded;

    public GameObject newBridges;
    public GameObject oldBridges;

    public Vector3 pos1;
    public Vector3 pos2;

    public bool Condition;
    bool _lock;

    GameObject GC;

    // Start is called before the first frame update
    void Start()
    {
        GC = GameObject.Find("GameController");

        pos1 = newBridges.transform.position;
            pos2 = oldBridges.transform.position;
        

    }

    // Update is called once per frame
    void Update()
    {
        if (GC.GetComponent<GameController>()._ItemsCollected.Contains(ItemNeeded))
        {
            Condition = true;
        }

        if (Condition && !_lock)
        {

            oldBridges.transform.position = new Vector3(pos1.x - 3.5f, pos1.y, pos1.z);
                newBridges.transform.position = pos2;
            
        }
    }
}
