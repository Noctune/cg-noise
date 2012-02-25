rm float/*
rm half/*
for f in ../src/*.glsl
do
	sed -e '               s/vec2/float2/g;s/vec3/float3/g;s/vec4/float4/g;s/fract/frac/g;s/mix/lerp/g;s/mod(/fmod(/g' $f > float/`basename $f .glsl`.cg
	sed -e 's/float/half/g;s/vec2/half2/g; s/vec3/half3/g; s/vec4/half4/g; s/fract/frac/g;s/mix/lerp/g;s/mod(/fmod(/g' $f > half/`basename $f .glsl`.cg
done