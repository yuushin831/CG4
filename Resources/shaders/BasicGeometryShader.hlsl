#include "BasicShaderHeader.hlsli"

[maxvertexcount(3)]
void main
(
	//triangle VSOutput input[3] : SV_POSITION,
	point VSOutput input[1]: SV_POSITION,
	inout TriangleStream< GSOutput > output
	//inout PointStream< GSOutput > output
	//inout LineStream< GSOutput > output
)


{
	GSOutput element;
	//共通
	element.normal = input[0].normal;
	element.uv = input[0].uv;
	//1点目
	element.svpos = input[0].svpos;
	output.Append(element);
	//2点目
	element.svpos = input[0].svpos + float4(10.0f, 10.0f, 0, 0);
	output.Append(element);
	//3点目	
	element.svpos = input[0].svpos + float4(10.0f,0, 0, 0);
	output.Append(element);
		
		
		
		

	
	//output.RestartStrip();
	//for (uint i = 0; i < 3; i++)
	//{

	//	GSOutput element;
	//	element.svpos = input[i].svpos + float4(20.0f, 0.0f, 0.0f, 0.0f);
	//	element.normal = input[i].normal;
	//	//UVを5倍に
	//	element.uv = input[i].uv * 5.0f;
	//	output.Append(element);

	//}
		
}
