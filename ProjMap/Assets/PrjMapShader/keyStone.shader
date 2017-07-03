Shader "keyStone" {
 
    Properties {
 
        _MainTex ("Base (RGB)", 2D) = "green" {}
    }
 
    SubShader {
     
        pass{
            CGPROGRAM
 
            uniform sampler2D _MainTex;
         
            #pragma vertex vert          
            #pragma fragment frag
         
 
        struct vertexInput {
            float4 vertex : POSITION;        
            float3 texcoord  : TEXCOORD0;
        };
 
        struct vertexOutput {
            float4 pos : SV_POSITION;
            float3 uv  : TEXCOORD0;
        };
 
        vertexOutput vert(vertexInput input)
        {
            vertexOutput output;

            output.pos = UnityObjectToClipPos (input.vertex);
         
            output.uv = input.texcoord;
         
            return output;
        }
 
        float4 frag(vertexOutput input) : COLOR
        {    
            return tex2D(_MainTex, float2(input.uv.xy)/(input.uv.z));
        }
     
         ENDCG // here ends the part in Cg
    }
    }
 
}