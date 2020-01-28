using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Flashlight : MonoBehaviour
{
    GameObject Player;

    public float fieldofViewAngle;
    public float rangeofView;
    public bool enemyInSight;

    public GameObject[] Enemys;

    private Vector3 mousePosition;
    private Vector3 mouseDirection;

    public float rotSpeed;

    void Start()
    {
        Player = gameObject.transform.parent.gameObject;
        Enemys = GameObject.FindGameObjectsWithTag("Enemy");
        fieldofViewAngle = transform.GetChild(0).gameObject.GetComponent<Light>().spotAngle;
        rangeofView = transform.GetChild(0).gameObject.GetComponent<Light>().range;
    }

    void Update()
    {             
        //mouseDirection = new Vector3(0, /*Input.mousePosition.y * rotSpeed*/0, Input.mousePosition.x * rotSpeed);
        transform.LookAt(mousePosition);
        
        if (Enemys.Length > 0)
        {
            //Debug.Log("Iniciamos");
            for(int i = 0; i < Enemys.Length; i++)
            {
                enemyInSight = false;

                Vector3 direction = Enemys[i].transform.position - transform.position;
                float angle = Vector3.Angle(direction, transform.forward);


                if (angle >= 60 && angle <= 120)
                {
                    //Debug.Log("Lanzamos Raycast");
                    RaycastHit hit;

                    if(Physics.Raycast(transform.position + transform.up, direction.normalized, out hit, rangeofView)){

                        if (hit.collider.CompareTag("Enemy"))
                        {
                            enemyInSight = true;
                        }

                    }
                }
            }
        }
        
    }



}
