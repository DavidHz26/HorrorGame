using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InvObj : MonoBehaviour
{
    public Material ActMat;
    public Material InvShader;
    public GameObject tempGO;

    bool _lock;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        Ray ray = UnityEngine.Camera.main.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2, 0));
        RaycastHit hit;

        if(Physics.Raycast(ray, out hit, Mathf.Infinity))
        {
            if (hit.collider.gameObject.CompareTag("Environment"))
            {
                tempGO = hit.collider.gameObject;

                if (!_lock)
                {
                    ActMat = tempGO.GetComponent<Renderer>().material;
                    _lock = true;
                }

                if (_lock)
                {
                    tempGO.GetComponent<Renderer>().material = InvShader;
                }
       

            } else
            {
                if(tempGO != null)
                tempGO.GetComponent<Renderer>().material = ActMat;
            } 
        }
    }
}
