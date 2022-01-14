#version 330 core

in vec4 position;
in vec2 texture_coord;
out vec2 texture_coord_from_vshader;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
  gl_Position = projection * view * model * position;
  texture_coord_from_vshader = texture_coord;
}
