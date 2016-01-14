using UnityEngine;
using System.Collections;

public class LoopThroughWall : MonoBehaviour {

  public Vector3 v;
  public AudioSource hitWallAudio;
  private bool canPlay;

	// Use this for initialization
	void Start () {
    canPlay = true;
	
	}
	
	// Update is called once per frame
	void Update () {

    v = transform.position;
    v.z += .01f;

    //print( v.z);
    if( v.z >= 20.0f){ v.z -= 45.0f; canPlay = true;}

    if( v.z >= -15.0f  && canPlay == true ){print("PLAY"); hitWallAudio.Play(); canPlay = false;}

    transform.position = v;
	

	}
}
