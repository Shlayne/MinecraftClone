#version 460 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texCoord;

out vec2 _texCoord;

uniform mat4 mvp;

void main()
{
	gl_Position = mvp * vec4(position, 1.0);
	_texCoord = texCoord;
}