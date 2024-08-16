shader_type spatial;
uniform float onoff: hint_range(0.0, 0.4) = 0.4;
render_mode unshaded, depth_draw_never;

//uniform vec4 shine_color : source_color = vec4( 0.3, 0.3, 0.3, 0.05 );

void fragment( )
{
	ALBEDO = vec3(0.0, 0.0, 0.0);
	//ALBEDO = mix(ALBEDO, vec3(0.0, 0.0, 0.0), onoff);
	ALPHA = 0.0;
}