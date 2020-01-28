// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33294,y:32614,varname:node_2865,prsc:2|diff-7703-OUT,spec-2880-OUT,gloss-1813-OUT,normal-199-OUT;n:type:ShaderForge.SFN_Slider,id:1813,x:32222,y:32763,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9075041,max:1;n:type:ShaderForge.SFN_Vector1,id:2880,x:32410,y:32690,varname:node_2880,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:5958,x:32067,y:32271,ptovrint:False,ptlb:Deep Color,ptin:_DeepColor,varname:node_5958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2358491,c3:0.2266602,c4:1;n:type:ShaderForge.SFN_Color,id:9702,x:32067,y:32438,ptovrint:False,ptlb:Shallow Color,ptin:_ShallowColor,varname:node_9702,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4413938,c2:0.772876,c3:0.8584906,c4:1;n:type:ShaderForge.SFN_Lerp,id:7703,x:32376,y:32427,varname:node_7703,prsc:2|A-5958-RGB,B-9702-RGB,T-6892-OUT;n:type:ShaderForge.SFN_Fresnel,id:6892,x:32154,y:32603,varname:node_6892,prsc:2|NRM-9559-OUT,EXP-7166-OUT;n:type:ShaderForge.SFN_NormalVector,id:9559,x:31934,y:32603,prsc:2,pt:True;n:type:ShaderForge.SFN_ValueProperty,id:9137,x:31760,y:32746,ptovrint:False,ptlb:Fresnel Color,ptin:_FresnelColor,varname:node_9137,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.336;n:type:ShaderForge.SFN_ConstantClamp,id:7166,x:31934,y:32746,varname:node_7166,prsc:2,min:0,max:4|IN-9137-OUT;n:type:ShaderForge.SFN_Tex2d,id:7617,x:31385,y:33097,varname:node_7617,prsc:2,ntxv:0,isnm:False|UVIN-3896-OUT,TEX-3676-TEX;n:type:ShaderForge.SFN_Tex2d,id:2629,x:31391,y:33393,varname:node_2629,prsc:2,ntxv:0,isnm:False|UVIN-9356-OUT,TEX-3676-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3676,x:31041,y:33209,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_3676,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4470,x:32264,y:33173,varname:node_4470,prsc:2|A-2581-OUT,B-6510-OUT,T-4682-OUT;n:type:ShaderForge.SFN_Slider,id:4682,x:31854,y:33706,ptovrint:False,ptlb:Normal Blend Strength,ptin:_NormalBlendStrength,varname:node_4682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:2753,x:29731,y:33236,varname:node_2753,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:8841,x:30525,y:31937,varname:node_8841,prsc:2;n:type:ShaderForge.SFN_Append,id:1081,x:30721,y:31966,varname:node_1081,prsc:2|A-8841-X,B-8841-Z;n:type:ShaderForge.SFN_Divide,id:3544,x:30965,y:31966,varname:node_3544,prsc:2|A-1081-OUT,B-54-OUT;n:type:ShaderForge.SFN_ValueProperty,id:54,x:30721,y:32151,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_54,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Set,id:4913,x:31125,y:31966,varname:worldUV,prsc:2|IN-3544-OUT;n:type:ShaderForge.SFN_Get,id:6517,x:29606,y:32751,varname:node_6517,prsc:2|IN-4913-OUT;n:type:ShaderForge.SFN_Set,id:9968,x:30852,y:32884,varname:UV2,prsc:2|IN-2923-OUT;n:type:ShaderForge.SFN_Set,id:9309,x:30836,y:32526,varname:UV1,prsc:2|IN-9747-OUT;n:type:ShaderForge.SFN_Vector4Property,id:110,x:29880,y:32520,ptovrint:False,ptlb:UV 1 Animator,ptin:_UV1Animator,varname:node_110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:701,x:29911,y:33040,ptovrint:False,ptlb:UV 2 Animator,ptin:_UV2Animator,varname:node_701,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:3382,x:30169,y:32737,varname:node_3382,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6122-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3916,x:30169,y:32906,varname:node_3916,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8795-OUT;n:type:ShaderForge.SFN_Multiply,id:1901,x:30179,y:32580,varname:node_1901,prsc:2|A-110-Y,B-2753-TSL;n:type:ShaderForge.SFN_Multiply,id:937,x:30179,y:32433,varname:node_937,prsc:2|A-110-X,B-2753-TSL;n:type:ShaderForge.SFN_Add,id:1328,x:30465,y:32463,varname:node_1328,prsc:2|A-937-OUT,B-3382-R;n:type:ShaderForge.SFN_Add,id:6457,x:30465,y:32635,varname:node_6457,prsc:2|A-1901-OUT,B-3382-G;n:type:ShaderForge.SFN_Append,id:9747,x:30652,y:32526,varname:node_9747,prsc:2|A-1328-OUT,B-6457-OUT;n:type:ShaderForge.SFN_Add,id:4415,x:30465,y:32822,varname:node_4415,prsc:2|A-3916-R,B-3327-OUT;n:type:ShaderForge.SFN_Add,id:7251,x:30465,y:32969,varname:node_7251,prsc:2|A-3916-G,B-1057-OUT;n:type:ShaderForge.SFN_Multiply,id:3327,x:30169,y:33087,varname:node_3327,prsc:2|A-701-X,B-2753-TSL;n:type:ShaderForge.SFN_Multiply,id:1057,x:30169,y:33227,varname:node_1057,prsc:2|A-701-Y,B-2753-TSL;n:type:ShaderForge.SFN_Append,id:2923,x:30676,y:32884,varname:node_2923,prsc:2|A-4415-OUT,B-7251-OUT;n:type:ShaderForge.SFN_Multiply,id:6122,x:29890,y:32710,varname:node_6122,prsc:2|A-6517-OUT,B-2014-OUT;n:type:ShaderForge.SFN_Multiply,id:8795,x:29890,y:32842,varname:node_8795,prsc:2|A-6517-OUT,B-9271-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2014,x:29641,y:32842,ptovrint:False,ptlb:UV 1 Tiling,ptin:_UV1Tiling,varname:node_2014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9271,x:29641,y:32930,ptovrint:False,ptlb:UV 2 Tiling,ptin:_UV2Tiling,varname:node_9271,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:3896,x:30997,y:33048,varname:node_3896,prsc:2|IN-9309-OUT;n:type:ShaderForge.SFN_Get,id:9356,x:30997,y:33112,varname:node_9356,prsc:2|IN-9968-OUT;n:type:ShaderForge.SFN_Multiply,id:9542,x:31807,y:33125,varname:node_9542,prsc:2|A-6548-OUT,B-6993-OUT;n:type:ShaderForge.SFN_Slider,id:6993,x:31346,y:33292,ptovrint:False,ptlb:Normal Map 1 Strength,ptin:_NormalMap1Strength,varname:node_6993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:6548,x:31596,y:33125,varname:node_6548,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7617-RGB;n:type:ShaderForge.SFN_Append,id:2581,x:32016,y:33158,varname:node_2581,prsc:2|A-9542-OUT,B-79-OUT;n:type:ShaderForge.SFN_Vector1,id:79,x:31781,y:33294,varname:node_79,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:2350,x:31594,y:33393,varname:node_2350,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2629-RGB;n:type:ShaderForge.SFN_Multiply,id:7340,x:31803,y:33393,varname:node_7340,prsc:2|A-2350-OUT,B-4794-OUT;n:type:ShaderForge.SFN_Slider,id:4794,x:31351,y:33574,ptovrint:False,ptlb:Normal Map 2 Strength,ptin:_NormalMap2Strength,varname:node_4794,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:6510,x:32027,y:33393,varname:node_6510,prsc:2|A-7340-OUT,B-79-OUT;n:type:ShaderForge.SFN_Set,id:7852,x:32434,y:33173,varname:normalMap,prsc:2|IN-4470-OUT;n:type:ShaderForge.SFN_Get,id:199,x:32972,y:32802,varname:node_199,prsc:2|IN-7852-OUT;proporder:5958-9702-9137-1813-3676-6993-4794-4682-110-701-54-2014-9271;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _DeepColor ("Deep Color", Color) = (0,0.2358491,0.2266602,1)
        _ShallowColor ("Shallow Color", Color) = (0.4413938,0.772876,0.8584906,1)
        _FresnelColor ("Fresnel Color", Float ) = 1.336
        _Glossiness ("Glossiness", Range(0, 1)) = 0.9075041
        _NormalMap ("Normal Map", 2D) = "black" {}
        _NormalMap1Strength ("Normal Map 1 Strength", Range(0, 1)) = 0
        _NormalMap2Strength ("Normal Map 2 Strength", Range(0, 1)) = 0
        _NormalBlendStrength ("Normal Blend Strength", Range(0, 1)) = 0
        _UV1Animator ("UV 1 Animator", Vector) = (0,0,0,0)
        _UV2Animator ("UV 2 Animator", Vector) = (0,0,0,0)
        _UVScale ("UV Scale", Float ) = 1
        _UV1Tiling ("UV 1 Tiling", Float ) = 0
        _UV2Tiling ("UV 2 Tiling", Float ) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float4 _DeepColor;
            uniform float4 _ShallowColor;
            uniform float _FresnelColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalBlendStrength;
            uniform float _UVScale;
            uniform float4 _UV1Animator;
            uniform float4 _UV2Animator;
            uniform float _UV1Tiling;
            uniform float _UV2Tiling;
            uniform float _NormalMap1Strength;
            uniform float _NormalMap2Strength;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_2753 = _Time;
                float2 worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale);
                float2 node_6517 = worldUV;
                float2 node_3382 = (node_6517*_UV1Tiling).rg;
                float2 UV1 = float2(((_UV1Animator.r*node_2753.r)+node_3382.r),((_UV1Animator.g*node_2753.r)+node_3382.g));
                float2 node_3896 = UV1;
                float4 node_7617 = tex2D(_NormalMap,TRANSFORM_TEX(node_3896, _NormalMap));
                float node_79 = 1.0;
                float2 node_3916 = (node_6517*_UV2Tiling).rg;
                float2 UV2 = float2((node_3916.r+(_UV2Animator.r*node_2753.r)),(node_3916.g+(_UV2Animator.g*node_2753.r)));
                float2 node_9356 = UV2;
                float4 node_2629 = tex2D(_NormalMap,TRANSFORM_TEX(node_9356, _NormalMap));
                float3 normalMap = lerp(float3((node_7617.rgb.rg*_NormalMap1Strength),node_79),float3((node_2629.rgb.rg*_NormalMap2Strength),node_79),_NormalBlendStrength);
                float3 normalLocal = normalMap;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Glossiness;
                float perceptualRoughness = 1.0 - _Glossiness;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
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
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float3 diffuseColor = lerp(_DeepColor.rgb,_ShallowColor.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_FresnelColor,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float4 _DeepColor;
            uniform float4 _ShallowColor;
            uniform float _FresnelColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalBlendStrength;
            uniform float _UVScale;
            uniform float4 _UV1Animator;
            uniform float4 _UV2Animator;
            uniform float _UV1Tiling;
            uniform float _UV2Tiling;
            uniform float _NormalMap1Strength;
            uniform float _NormalMap2Strength;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_2753 = _Time;
                float2 worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale);
                float2 node_6517 = worldUV;
                float2 node_3382 = (node_6517*_UV1Tiling).rg;
                float2 UV1 = float2(((_UV1Animator.r*node_2753.r)+node_3382.r),((_UV1Animator.g*node_2753.r)+node_3382.g));
                float2 node_3896 = UV1;
                float4 node_7617 = tex2D(_NormalMap,TRANSFORM_TEX(node_3896, _NormalMap));
                float node_79 = 1.0;
                float2 node_3916 = (node_6517*_UV2Tiling).rg;
                float2 UV2 = float2((node_3916.r+(_UV2Animator.r*node_2753.r)),(node_3916.g+(_UV2Animator.g*node_2753.r)));
                float2 node_9356 = UV2;
                float4 node_2629 = tex2D(_NormalMap,TRANSFORM_TEX(node_9356, _NormalMap));
                float3 normalMap = lerp(float3((node_7617.rgb.rg*_NormalMap1Strength),node_79),float3((node_2629.rgb.rg*_NormalMap2Strength),node_79),_NormalBlendStrength);
                float3 normalLocal = normalMap;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Glossiness;
                float perceptualRoughness = 1.0 - _Glossiness;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float3 diffuseColor = lerp(_DeepColor.rgb,_ShallowColor.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_FresnelColor,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float4 _DeepColor;
            uniform float4 _ShallowColor;
            uniform float _FresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float3 diffColor = lerp(_DeepColor.rgb,_ShallowColor.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_FresnelColor,0,4)));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 1.0 - _Glossiness;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
