using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class Enemy : MonoBehaviour
{
    GameObject Player;
    NavMeshAgent Agent;

    public Transform[] Waypoints;
    public GameObject[] hidPlace;

    int nextPoint;

    public bool Patrol;
    float cdestiny = 3;

    GameObject _Flashlight;
    bool _enemyInSight;

    bool _isHiding;

    Animator anim;

    // Use this for initialization
    void Awake()
    {
        Player = GameObject.FindGameObjectWithTag("Player");
        _Flashlight = GameObject.FindGameObjectWithTag("Flashlight");
    }

    void Start()
    {
        Agent = GetComponent<NavMeshAgent>();
        Agent.autoBraking = false;

        anim = GetComponent<Animator>();

        OnMyWay();
    }

    // Update is called once per frame
    void Update()
    {
        if(Player != null)
        {
            _isHiding = Player.GetComponent<Player>().isHiding;
        }

        if (_Flashlight != null)
        {
            _enemyInSight = _Flashlight.GetComponent<Flashlight>().enemyInSight;
        }

        cdestiny -= Time.deltaTime;

        if (cdestiny <= 0)
            cdestiny = 0;


        //Detecta al jugador
        if (!_enemyInSight && Player != null)
        {
            if (Vector3.Distance(Player.transform.position, transform.position) <= 13f && !_isHiding)
            {
                gameObject.transform.LookAt(Player.transform);
                Agent.SetDestination(Player.transform.position);

                anim.SetBool("Walk", false);
                anim.SetBool("Run", true);
            }
            else
            {
                if (Patrol)
                {
                    if (!Agent.pathPending)
                    {
                        if (Agent.remainingDistance < Agent.stoppingDistance)
                        {
                            anim.SetBool("Walk", true);
                            anim.SetBool("Run", false);
                            OnMyWay();
                        }
                    }
                }
            }
        } else if(_enemyInSight)
        {
            Hide();
        }

    }

    void OnMyWay()
    {
        anim.SetBool("Walk", true);
        anim.SetBool("Run", false);

        if (Waypoints.Length == 0)
            return;

        Agent.destination = Waypoints[nextPoint].position;

        nextPoint = (nextPoint + 1) % Waypoints.Length;
    }

    void Hide()
    {
        //anim.SetBool("Walk", false);
        //anim.SetBool("Run", true);

        hidPlace = GameObject.FindGameObjectsWithTag("HPlace");
        Vector3 tempPosition;

        Vector3 b = gameObject.transform.position;
        tempPosition = hidPlace[0].transform.position;


        for (int i = 0; i < hidPlace.Length; i++)
        {
            Vector3 a = hidPlace[i].transform.position;

            if (Vector3.Distance(b, tempPosition) < Vector3.Distance(b, a))
            {
                tempPosition = hidPlace[i].transform.position;
            }
        }

        Debug.DrawLine(b, tempPosition);

        Agent.destination = tempPosition;

    }

    void ResetMovement()
    {
        Agent.isStopped = false;
    }

    void OnTriggerEnter(Collider _col)
    {
        if (_col.gameObject.CompareTag("Player"))
        {
            anim.SetTrigger("Attack");
            Agent.isStopped = true;
            Invoke("ResetMovement", 2f);
        }

        //if (collision.gameObject.CompareTag("HPlace"))
        //{
        //    Agent.isStopped = true;
        //    Invoke("ResteMovement", 5f);

        //}
    }

}

