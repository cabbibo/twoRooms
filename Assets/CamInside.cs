 using UnityEngine;
using System.Collections;

public class CamInside : MonoBehaviour {

  public GameObject Light;
  public GameObject Dark;
  public GameObject Wall;

  bool inWall;
  bool inLight;
  bool inDark;

  bool hitWall;
  string lastIn;
  float whichRoom;

  private Renderer[] renderers;

	// Use this for initialization
	void Start () {

    //lastIn = "Dark";

	
	}
	
	// Update is called once per frame
	void Update () {

/*
    if( inWall == true ){
      renderChildren( Light , false );
      renderChildren( Dark  , false );
      renderChildren( Wall  , false );
    }else{
      renderChildren( Light , true );
      renderChildren( Dark  , true );
      renderChildren( Wall  , true );
    }*/

renderChildren( Light , true );
      renderChildren( Dark  , true );
      renderChildren( Wall  , true );

     // print( transform.position.x );

      float t = Mathf.Clamp( transform.position.x * 2.0f , -1 , 1 );
      t += 1.0f;

      Dark.GetComponent<AudioSource>().volume = t;
      Light.GetComponent<AudioSource>().volume = 2 - t;
	
	}

  void renderChildren(GameObject o , bool t ){

    renderers = o.GetComponentsInChildren<Renderer>();
    foreach (Renderer joint in renderers) {
      joint.enabled = t;
    }

  }

  void OnTriggerEnter( Collider other ){
    if( other.tag == "Wall" ){
      inWall = true;
      //hitWall = true;
     // lastIn = "Wall";
    }else{
      if( lastIn == null ){ 
        lastIn = other.tag;
      }
    }
    if( other.tag == "Light"){ 
      if( lastIn == "Light" && inWall == true ){
        inWall = false;
        lastIn = "Light"; 
      }else if( inWall == false && lastIn == "Dark" ){
        lastIn = "Light";
      }
    }
    if( other.tag == "Dark"  ){   
      if( lastIn == "Dark" && inWall == true  ){
        inWall = false;
        lastIn = "Dark"; 
      }else if( inWall == false && lastIn == "Light" ){
        lastIn = "Dark";
      }
    }
  }

  void OnTriggerExit( Collider other ){
    if( other.tag == "Wall" ){ 
      //inWall = false; 
    }
    if( other.tag == "Light" ){ inLight = false; }
    if( other.tag == "Dark" ){ inDark = false; }
  }
}
