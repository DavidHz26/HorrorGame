using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstantiateCubes : MonoBehaviour
{
    public int Cubes;
    public int CircleSize;
    public float CubeSize;
    public float _maxScale;
    public GameObject _sampleCubePrefab;
    GameObject[] _sampleCube;

    GameObject Player;

    // Start is called before the first frame update
    void Start()
    {
        _sampleCube = new GameObject[Cubes];
        Player = GameObject.FindGameObjectWithTag("Player");

        for (int i = 0; i < Cubes; i++)
        {
            GameObject _instanceSampleCube = (GameObject)Instantiate (_sampleCubePrefab);
            _instanceSampleCube.transform.position = Player.transform.position;
            _instanceSampleCube.transform.parent = this.transform;
            _instanceSampleCube.name = "sampleCube" + i;
            _instanceSampleCube.transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
            _instanceSampleCube.transform.GetChild(0).gameObject.GetComponent<MeshRenderer>().material.color = new Color((float)Random.Range(0f, 1f), (float)Random.Range(0f, 1f), (float)Random.Range(0f, 1f), 0.2f);
            this.transform.eulerAngles = new Vector3(0, CircleSize * i, 0);
            _instanceSampleCube.transform.position = Vector3.forward;
            _sampleCube[i] = _instanceSampleCube;
            _sampleCube[i].transform.position = new Vector3(_sampleCube[i].transform.position.x + 3f, _sampleCube[i].transform.position.y + 0.2f, _sampleCube[i].transform.position.z);
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        for(int i= 0; i < Cubes; i++)
        {
            if(_sampleCube != null)
            {
                _sampleCube[i].transform.localScale = new Vector3(CubeSize, (AudioPeer._samples[i] * _maxScale - 1.9f) + 2, CubeSize);
            }
        }
    }
}
