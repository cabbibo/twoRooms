using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RemoveSide : MonoBehaviour {

	// Use this for initialization
	void Start () {

    Mesh mesh = GetComponent<MeshFilter>().mesh;
    int[] triangles = mesh.triangles;

    List<int> trianglesList = new List<int>();

    int i = 0;
    while( i < triangles.Length - 6 ){
 
      trianglesList.Add (triangles[i]);
      i++;

    }

    triangles = trianglesList.ToArray();
    mesh.triangles = triangles;
	
	}
	
	// Update is called once per frame
	void Update () {


	
	}
}
