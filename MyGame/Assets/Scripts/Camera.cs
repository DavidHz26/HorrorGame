using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour {

    GameObject Player;

    private Vector3 margen;

	// Use this for initialization
	void Start () {
        Player = GameObject.FindGameObjectWithTag("Player");

        margen = transform.position - Player.transform.position;
	}
	
	// Update is called once per frame
	void LateUpdate () {
        if(Player != null)
            transform.position = Player.transform.position + margen;
	}
}
