// Shader created with Shader Forge v1.17 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.17;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2865,x:34203,y:32405,varname:node_2865,prsc:2|diff-1616-OUT,spec-358-OUT,gloss-1813-OUT,normal-1214-XYZ;n:type:ShaderForge.SFN_Tex2d,id:5964,x:29888,y:31845,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:33781,y:31911,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5726496,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:33781,y:31811,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4068376,max:1;n:type:ShaderForge.SFN_Transform,id:8092,x:29822,y:31216,varname:node_8092,prsc:2,tffrom:0,tfto:1|IN-4197-OUT;n:type:ShaderForge.SFN_ViewVector,id:4197,x:29630,y:31216,varname:node_4197,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:2312,x:29659,y:30742,varname:node_2312,prsc:2;n:type:ShaderForge.SFN_Transform,id:5524,x:30076,y:30742,varname:node_5524,prsc:2,tffrom:0,tfto:1|IN-1437-OUT;n:type:ShaderForge.SFN_Normalize,id:5382,x:30158,y:31216,varname:node_5382,prsc:2|IN-1788-OUT;n:type:ShaderForge.SFN_Code,id:1426,x:30151,y:29670,varname:node_1426,prsc:2,code:cgBlAHQAdQByAG4AIAAxAC4AOwAKAH0ACgAKAAoACgBmAGwAbwBhAHQAMgAgAG0AYQBwACgAIABpAG4AIABmAGwAbwBhAHQAMwAgAHAAbwBzACAAKQB7AAoACgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAyACgAIABsAGUAbgBnAHQAaAAoACAAcABvAHMAIAAgACkAIAAtACAALgA0ACAAKwAgAHMAaQBuACgAIABwAG8AcwAuAHgAIAAqACAAMwAwAC4AIAArACAAXwBUAGkAbQBlAEUAZABpAHQAbwByAC4AeAAgACoAIAAzADAALgAgACkAIAAqACAALgAwADMAIAArACAAcwBpAG4AKAAgAHAAbwBzAC4AeQAgACoAIAAyADAALgAgACkAKgAgAC4AMAA0ACAAKwAgAHMAaQBuACgAIABwAG8AcwAuAHoAIAAqACAAMwAzAC4ANQAgACkAIAAqACAALgAwADIAIAAsACAAMAAuACAAKQA7ACAACgAKAAoA,output:0,fname:maphodler,width:811,height:233,input:0,input_1_label:A|A-3198-TTR;n:type:ShaderForge.SFN_Code,id:3935,x:30153,y:29936,varname:node_3935,prsc:2,code:CQAKAHIAZQB0AHUAcgBuACAAMQAuADsACgB9AAoACgAKAAoAZgBsAG8AYQB0ADMAIABjAGEAbABjAE4AbwByAG0AYQBsACgAIABpAG4AIABmAGwAbwBhAHQAMwAgAHAAbwBzACAAKQB7AAoACQBmAGwAbwBhAHQAMwAgAGUAcABzACAAPQAgAGYAbABvAGEAdAAzACgAIAAwAC4AMAAwADEALAAgADAALgAwACwAIAAwAC4AMAAgACkAOwAKAAkAZgBsAG8AYQB0ADMAIABuAG8AcgAgAD0AIABmAGwAbwBhAHQAMwAoAAoACQAgACAAIAAgAG0AYQBwACgAcABvAHMAKwBlAHAAcwAuAHgAeQB5ACkALgB4ACAALQAgAG0AYQBwACgAcABvAHMALQBlAHAAcwAuAHgAeQB5ACkALgB4ACwACgAJACAAIAAgACAAbQBhAHAAKABwAG8AcwArAGUAcABzAC4AeQB4AHkAKQAuAHgAIAAtACAAbQBhAHAAKABwAG8AcwAtAGUAcABzAC4AeQB4AHkAKQAuAHgALAAKAAkAIAAgACAAIABtAGEAcAAoAHAAbwBzACsAZQBwAHMALgB5AHkAeAApAC4AeAAgAC0AIABtAGEAcAAoAHAAbwBzAC0AZQBwAHMALgB5AHkAeAApAC4AeAAgACkAOwAKAAkAcgBlAHQAdQByAG4AIABuAG8AcgBtAGEAbABpAHoAZQAoAG4AbwByACkAOwAKAAoA,output:0,fname:CalcNormalHolder,width:808,height:313;n:type:ShaderForge.SFN_Code,id:7821,x:31533,y:30413,varname:node_7821,prsc:2,code:CQAKAAoAZgBsAG8AYQB0ACAATQBBAFgAXwBUAFIAQQBDAEUAXwBEAEkAUwBUAEEATgBDAEUAIAA9ACAANgAuADAAOwAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAC8ALwAgAG0AYQB4ACAAdAByAGEAYwBlACAAZABpAHMAdABhAG4AYwBlAAoAZgBsAG8AYQB0ACAASQBOAFQARQBSAFMARQBDAFQASQBPAE4AXwBQAFIARQBDAEkAUwBJAE8ATgAgAD0AIAAwAC4AMAAwADEAOwAgACAAIAAgACAAIAAgACAALwAvACAAcAByAGUAYwBpAHMAaQBvAG4AIABvAGYAIAB0AGgAZQAgAGkAbgB0AGUAcgBzAGUAYwB0AGkAbwBuAAoAaQBuAHQAIABOAFUATQBfAE8ARgBfAFQAUgBBAEMARQBfAFMAVABFAFAAUwAgAD0AIAAxADAAOwAKAAoACgAgACAAIAAgAAoAIAAgACAAIABmAGwAbwBhAHQAIABoACAAPQAgACAAaQBuAHQAZQByAHMAZQBjAHQAaQBvAG4AUAByAGUAYwBpAHMAaQBvAG4AIAAqADIALgAwADsACgAgACAAIAAgAGYAbABvAGEAdAAgAHQAIAA9ACAAMAAuADAAOwAKACAAIAAgACAAZgBsAG8AYQB0ACAAcgBlAHMAIAA9ACAALQAxAC4AMAA7AAoAIAAgACAAIABmAGwAbwBhAHQAIABpAGQAIAA9ACAALQAxAC4AMAA7AAoAIAAgACAAIAAKACAAIAAgACAAZgBvAHIAKAAgAGkAbgB0ACAAaQA9ADAAOwAgAGkAPAAgAG4AdQBtAFMAdABlAHAAcwAgADsAIABpACsAKwAgACkAewAKACAAIAAgACAAIAAgACAAIAAKACAAIAAgACAAIAAgACAAIABpAGYAKAAgAGgAIAA8ACAAaQBuAHQAZQByAHMAZQBjAHQAaQBvAG4AUAByAGUAYwBpAHMAaQBvAG4AIAB8AHwAIAB0ACAAPgAgAG0AYQB4AFQAcgBhAGMAZQBEAGkAcwB0AGEAbgBjAGUAIAApACAAYgByAGUAYQBrADsACgAKACAAIAAgACAAIAAgACAAIABmAGwAbwBhAHQAMwAgAHAAbwBzACAAPQAgAHIAbwArAHIAZAAqAHQAOwAKACAAIAAgACAAIAAgACAAIABmAGwAbwBhAHQAMgAgAG0AIAA9ACAAbQBhAHAAKAAgAHAAbwBzACAAKQA7AAoAIAAgACAAIAAgACAAIAAgAGgAIAA9ACAAbQAuAHgAOwAKACAAIAAgACAAIAAgACAAIAB0ACAAKwA9ACAAaAA7AAoAIAAgACAAIAAgACAAIAAgAGkAZAAgAD0AIABtAC4AeQA7AAoAIAAgACAAIAAgACAAIAAgAAoAIAAgACAAIAB9AAoACgAKACAAIAAgACAAaQBmACgAIAB0ACAAPAAgAG0AYQB4AFQAcgBhAGMAZQBEAGkAcwB0AGEAbgBjAGUAIAApACAAcgBlAHMAIAA9ACAAdAA7AAoAIAAgACAAIABpAGYAKAAgAHQAIAA+ACAAbQBhAHgAVAByAGEAYwBlAEQAaQBzAHQAYQBuAGMAZQAgACkAIABpAGQAIAA9AC0AMQAuADAAOwAKACAAIAAgACAACgAgACAAIAAgAHIAZQB0AHUAcgBuACAAZgBsAG8AYQB0ADIAKAAgAHIAZQBzACAALAAgAGkAZAAgACkAOwAKACAAIAAgACAACgA=,output:1,fname:Function_node_7821,width:628,height:467,input:2,input:2,input:0,input:0,input:0,input:0,input:0,input_1_label:ro,input_2_label:rd,input_3_label:calcNormalHolder,input_4_label:mapHolder,input_5_label:numSteps,input_6_label:intersectionPrecision,input_7_label:maxTraceDistance|A-5524-XYZ,B-5382-OUT,C-3935-OUT,D-1426-OUT,E-9987-OUT,F-6915-OUT,G-4129-OUT;n:type:ShaderForge.SFN_Code,id:6364,x:33901,y:30989,varname:node_6364,prsc:2,code:ZgBsAG8AYQB0ADMAIABjAG8AbAAgAD0AIABmAGwAbwBhAHQAMwAoACAAMAAuACAALAAgADAALgAgACwAIAAwAC4AIAApADsACgAKAGkAZgAoACAAcgBlAHMALgB5ACAAPgAgAC0ALgA1ACAAKQB7AAoACgAJAGYAbABvAGEAdAAzACAAcABvAHMAIAA9ACAAcgBvACAAKwAgAHIAZAAgACoAIAByAGUAcwAuAHgAOwAKAAkAZgBsAG8AYQB0ADMAIABuAG8AcgAgAD0AIABjAGEAbABjAE4AbwByAG0AYQBsACgAIABwAG8AcwAgACkAOwAKAAoACQBjAG8AbAAgAD0AIABuAG8AcgAgACoAIAAuADUAIAArACAALgA1ADsACgB9AAoACgAKAHIAZQB0AHUAcgBuACAAYwBvAGwAOwA=,output:2,fname:Function_node_6364,width:640,height:240,input:2,input:2,input:1,input_1_label:ro,input_2_label:rd,input_3_label:res|A-5524-XYZ,B-5382-OUT,C-7821-OUT;n:type:ShaderForge.SFN_Multiply,id:1788,x:29989,y:31216,varname:node_1788,prsc:2|A-8092-XYZ,B-7932-OUT;n:type:ShaderForge.SFN_Vector1,id:7932,x:29822,y:31396,varname:node_7932,prsc:2,v1:-1;n:type:ShaderForge.SFN_Code,id:1134,x:32447,y:32312,varname:node_1134,prsc:2,code:aQBmACgAIAByAGUAcwAuAHkAIAA+ACAALQAuADUAIAApAHsACgAKAGYAbABvAGEAdAAzACAAcABvAHMAIAA9ACAAcgBvACAAKwAgAHIAZAAgACoAIAByAGUAcwAuAHgAOwAKAHIAZQB0AHUAcgBuACAAbgBvAHIAbQBhAGwAaQB6AGUAKAAgAGkAbgBOAG8AcgBtACAAKwAgAGMAYQBsAGMATgBvAHIAbQBhAGwAKAAgAHAAbwBzACAAKQApADsACgAKAH0AZQBsAHMAZQB7AAoAcgBlAHQAdQByAG4AIABpAG4ATgBvAHIAbQA7AAoAfQA=,output:2,fname:calculateFullNormal,width:661,height:375,input:1,input:2,input:2,input:2,input_1_label:res,input_2_label:inNorm,input_3_label:ro,input_4_label:rd|A-7821-OUT,B-6273-OUT,C-5524-XYZ,D-5382-OUT;n:type:ShaderForge.SFN_Time,id:3198,x:29946,y:29506,varname:node_3198,prsc:2;n:type:ShaderForge.SFN_Vector3,id:1616,x:34431,y:32109,varname:node_1616,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Subtract,id:1437,x:29915,y:30742,varname:node_1437,prsc:2|A-2312-XYZ,B-7730-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:7730,x:29659,y:30888,varname:node_7730,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9987,x:31414,y:29898,ptovrint:False,ptlb:numSteps,ptin:_numSteps,varname:node_9987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:4129,x:31382,y:30010,ptovrint:False,ptlb:maxTraceDistance,ptin:_maxTraceDistance,varname:node_4129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_ValueProperty,id:6915,x:31421,y:30136,ptovrint:False,ptlb:intersectionPrecision,ptin:_intersectionPrecision,varname:node_6915,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Code,id:7251,x:31625,y:30550,varname:node_7251,prsc:2,code:YwBvAG4AbgBlAGMAdABpAG4AZwAgAG0AYQBwACAAaABvAGwAZABlAHIACgBhAG4AZAAgAGMAYQBsAGMATgBvAHIAbQBhAGwACgBzAG8AIAB0AGgAZQB5ACAAZABvAG4AJwB0ACAAZwBlAHQAIABjAG8AbQBwAGkAbABlAGQAIABvAHUAdAAKAA==,output:2,fname:comments1,width:252,height:112;n:type:ShaderForge.SFN_Transform,id:1214,x:33621,y:32607,varname:node_1214,prsc:2,tffrom:1,tfto:3|IN-1134-OUT;n:type:ShaderForge.SFN_Multiply,id:9176,x:33663,y:32366,varname:node_9176,prsc:2|A-1134-OUT,B-3928-OUT;n:type:ShaderForge.SFN_Vector1,id:3928,x:33768,y:32507,varname:node_3928,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:70,x:33845,y:32366,varname:node_70,prsc:2|A-9176-OUT,B-3928-OUT;n:type:ShaderForge.SFN_NormalVector,id:9571,x:29710,y:31626,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:2025,x:29888,y:31626,varname:node_2025,prsc:2,tffrom:0,tfto:1|IN-9571-OUT;n:type:ShaderForge.SFN_Add,id:6273,x:30079,y:31626,varname:node_6273,prsc:2|A-2025-XYZ,B-5964-RGB;proporder:5964-358-1813-6915-4129-9987;pass:END;sub:END;*/

Shader "Shader Forge/pbrRaytraceNormal" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Metallic ("Metallic", Range(0, 1)) = 0.5726496
        _Gloss ("Gloss", Range(0, 1)) = 0.4068376
        _intersectionPrecision ("intersectionPrecision", Float ) = 0.001
        _maxTraceDistance ("maxTraceDistance", Float ) = 6
        _numSteps ("numSteps", Float ) = 10
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            float maphodler( float A ){
            return 1.;
            }
            
            
            
            float2 map( in float3 pos ){
            
            return float2( length( pos  ) - .4 + sin( pos.x * 30. + _TimeEditor.x * 30. ) * .03 + sin( pos.y * 20. )* .04 + sin( pos.z * 33.5 ) * .02 , 0. ); 
            
            
            
            }
            
            float CalcNormalHolder(){
            	
            return 1.;
            }
            
            
            
            float3 calcNormal( in float3 pos ){
            	float3 eps = float3( 0.001, 0.0, 0.0 );
            	float3 nor = float3(
            	    map(pos+eps.xyy).x - map(pos-eps.xyy).x,
            	    map(pos+eps.yxy).x - map(pos-eps.yxy).x,
            	    map(pos+eps.yyx).x - map(pos-eps.yyx).x );
            	return normalize(nor);
            
            
            }
            
            float2 Function_node_7821( float3 ro , float3 rd , float calcNormalHolder , float mapHolder , float numSteps , float intersectionPrecision , float maxTraceDistance ){
            	
            
            float MAX_TRACE_DISTANCE = 6.0;             // max trace distance
            float INTERSECTION_PRECISION = 0.001;        // precision of the intersection
            int NUM_OF_TRACE_STEPS = 10;
            
            
                
                float h =  intersectionPrecision *2.0;
                float t = 0.0;
                float res = -1.0;
                float id = -1.0;
                
                for( int i=0; i< numSteps ; i++ ){
                    
                    if( h < intersectionPrecision || t > maxTraceDistance ) break;
            
                    float3 pos = ro+rd*t;
                    float2 m = map( pos );
                    h = m.x;
                    t += h;
                    id = m.y;
                    
                }
            
            
                if( t < maxTraceDistance ) res = t;
                if( t > maxTraceDistance ) id =-1.0;
                
                return float2( res , id );
                
            
            }
            
            float3 calculateFullNormal( float2 res , float3 inNorm , float3 ro , float3 rd ){
            if( res.y > -.5 ){
            
            float3 pos = ro + rd * res.x;
            return normalize( inNorm + calcNormal( pos ));
            
            }else{
            return inNorm;
            }
            }
            
            uniform float _numSteps;
            uniform float _maxTraceDistance;
            uniform float _intersectionPrecision;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
            o.posWorld = mul(_Object2World, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_5524 = mul( _World2Object, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz;
            float3 node_5382 = normalize((mul( _World2Object, float4(viewDirection,0) ).xyz.rgb*(-1.0)));
            float4 node_3198 = _Time + _TimeEditor;
            float2 node_7821 = Function_node_7821( node_5524.rgb , node_5382 , CalcNormalHolder() , maphodler( node_3198.a ) , _numSteps , _intersectionPrecision , _maxTraceDistance );
            float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
            float3 node_1134 = calculateFullNormal( node_7821 , (mul( _World2Object, float4(i.normalDir,0) ).xyz.rgb+_BumpMap_var.rgb) , node_5524.rgb , node_5382 );
            float3 normalLocal = mul( UNITY_MATRIX_MV, float4(node_1134,0) ).xyz.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = _Gloss;
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
            UnityLight light;
            #ifdef LIGHTMAP_OFF
                light.color = lightColor;
                light.dir = lightDirection;
                light.ndotl = LambertTerm (normalDirection, light.dir);
            #else
                light.color = half3(0.f, 0.f, 0.f);
                light.ndotl = 0.0f;
                light.dir = half3(0.f, 0.f, 0.f);
            #endif
            UnityGIInput d;
            d.light = light;
            d.worldPos = i.posWorld.xyz;
            d.worldViewDir = viewDirection;
            d.atten = attenuation;
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
            d.boxMax[0] = unity_SpecCube0_BoxMax;
            d.boxMin[0] = unity_SpecCube0_BoxMin;
            d.probePosition[0] = unity_SpecCube0_ProbePosition;
            d.probeHDR[0] = unity_SpecCube0_HDR;
            d.boxMax[1] = unity_SpecCube1_BoxMax;
            d.boxMin[1] = unity_SpecCube1_BoxMin;
            d.probePosition[1] = unity_SpecCube1_ProbePosition;
            d.probeHDR[1] = unity_SpecCube1_HDR;
            UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
            lightDirection = gi.light.dir;
            lightColor = gi.light.color;
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float3 diffuseColor = float3(1,1,1); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            half grazingTerm = saturate( gloss + specularMonochrome );
            float3 indirectSpecular = (gi.indirect.specular);
            indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            fixed4 finalRGBA = fixed4(finalColor,1);
            UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
            return finalRGBA;
        }
        ENDCG
    }
    Pass {
        Name "FORWARD_DELTA"
        Tags {
            "LightMode"="ForwardAdd"
        }
        Blend One One
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_FORWARDADD
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform float4 _TimeEditor;
        uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
        uniform float _Metallic;
        uniform float _Gloss;
        float maphodler( float A ){
        return 1.;
        }
        
        
        
        float2 map( in float3 pos ){
        
        return float2( length( pos  ) - .4 + sin( pos.x * 30. + _TimeEditor.x * 30. ) * .03 + sin( pos.y * 20. )* .04 + sin( pos.z * 33.5 ) * .02 , 0. ); 
        
        
        
        }
        
        float CalcNormalHolder(){
        	
        return 1.;
        }
        
        
        
        float3 calcNormal( in float3 pos ){
        	float3 eps = float3( 0.001, 0.0, 0.0 );
        	float3 nor = float3(
        	    map(pos+eps.xyy).x - map(pos-eps.xyy).x,
        	    map(pos+eps.yxy).x - map(pos-eps.yxy).x,
        	    map(pos+eps.yyx).x - map(pos-eps.yyx).x );
        	return normalize(nor);
        
        
        }
        
        float2 Function_node_7821( float3 ro , float3 rd , float calcNormalHolder , float mapHolder , float numSteps , float intersectionPrecision , float maxTraceDistance ){
        	
        
        float MAX_TRACE_DISTANCE = 6.0;             // max trace distance
        float INTERSECTION_PRECISION = 0.001;        // precision of the intersection
        int NUM_OF_TRACE_STEPS = 10;
        
        
            
            float h =  intersectionPrecision *2.0;
            float t = 0.0;
            float res = -1.0;
            float id = -1.0;
            
            for( int i=0; i< numSteps ; i++ ){
                
                if( h < intersectionPrecision || t > maxTraceDistance ) break;
        
                float3 pos = ro+rd*t;
                float2 m = map( pos );
                h = m.x;
                t += h;
                id = m.y;
                
            }
        
        
            if( t < maxTraceDistance ) res = t;
            if( t > maxTraceDistance ) id =-1.0;
            
            return float2( res , id );
            
        
        }
        
        float3 calculateFullNormal( float2 res , float3 inNorm , float3 ro , float3 rd ){
        if( res.y > -.5 ){
        
        float3 pos = ro + rd * res.x;
        return normalize( inNorm + calcNormal( pos ));
        
        }else{
        return inNorm;
        }
        }
        
        uniform float _numSteps;
        uniform float _maxTraceDistance;
        uniform float _intersectionPrecision;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
            float3 normalDir : TEXCOORD4;
            float3 tangentDir : TEXCOORD5;
            float3 bitangentDir : TEXCOORD6;
            LIGHTING_COORDS(7,8)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
            o.posWorld = mul(_Object2World, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_5524 = mul( _World2Object, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz;
            float3 node_5382 = normalize((mul( _World2Object, float4(viewDirection,0) ).xyz.rgb*(-1.0)));
            float4 node_3198 = _Time + _TimeEditor;
            float2 node_7821 = Function_node_7821( node_5524.rgb , node_5382 , CalcNormalHolder() , maphodler( node_3198.a ) , _numSteps , _intersectionPrecision , _maxTraceDistance );
            float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
            float3 node_1134 = calculateFullNormal( node_7821 , (mul( _World2Object, float4(i.normalDir,0) ).xyz.rgb+_BumpMap_var.rgb) , node_5524.rgb , node_5382 );
            float3 normalLocal = mul( UNITY_MATRIX_MV, float4(node_1134,0) ).xyz.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = _Gloss;
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float3 diffuseColor = float3(1,1,1); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform float _Metallic;
        uniform float _Gloss;
        struct VertexInput {
            float4 vertex : POSITION;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv1 : TEXCOORD0;
            float2 uv2 : TEXCOORD1;
            float4 posWorld : TEXCOORD2;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.posWorld = mul(_Object2World, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float3 diffColor = float3(1,1,1);
            float specularMonochrome;
            float3 specColor;
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
            float roughness = 1.0 - _Gloss;
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}
