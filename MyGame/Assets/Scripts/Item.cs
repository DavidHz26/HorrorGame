using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public float numRotation;

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, 6.0f * numRotation * Time.deltaTime, 0);
    }
}
