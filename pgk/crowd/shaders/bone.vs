#version 330
uniform mat4 mvp;
uniform vec3 color;
layout(location = 0) in vec3 vertexPosition_modelspace;
layout(location = 1) in vec3 vertexBrightness;
out vec3 fragmentColor;

void main() {
	gl_Position = mvp * vec4(vertexPosition_modelspace, 1.0);
	fragmentColor = color * vertexBrightness;
}
