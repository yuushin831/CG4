#include "Particle.hlsli"

VSOutput main(float4 pos : POSITION)
{
	VSOutput output; // ピクセルシェーダーに渡す値
	//output.svpos = mul(mat, pos);
	output.pos = pos;
	//output.normal = normal;
	//output.uv = uv;
	return output;
}