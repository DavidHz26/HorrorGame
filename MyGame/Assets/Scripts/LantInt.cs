using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LantInt : MonoBehaviour
{
    Light myLight;
    bool _switch;
    public float CD;

    // Start is called before the first frame update
    void Start()
    {
        myLight = gameObject.transform.GetChild(3).GetComponent<Light>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!_switch)
        {
            float _f = Random.Range(0, 3);

            if(myLight.intensity < _f)
            {
                myLight.intensity += 0.5f;

                if (myLight.intensity == _f)
                {
                    return;
                }
            }

            if (myLight.intensity > _f)
            {
                myLight.intensity -= 0.5f;

                if (myLight.intensity == _f)
                {
                    return;
                }
            }

            if(myLight.intensity == _f)
            {
                myLight.intensity = _f;
            }

            _switch = true;
            Invoke("RT", CD);
           
        }
    }

    public void RT()
    {
        _switch = false;

        
    }
}
