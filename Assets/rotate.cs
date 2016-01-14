using UnityEngine;
using System.Collections;

public class rotate : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(Vector3.forward * Time.deltaTime * 20.0f);
        //transform.Rotate(Vector3.up * Time.deltaTime, Space.World);
	
	}
}
