#version 330 core
layout (location = 0) in vec4 vertex; // <vec2 pos, vec2 tex>
layout (location = 1) in vec2 depth; // <vec2 depth>
out vec2 TexCoords;

uniform mat4 projection;

void main()
{
    gl_Position = projection * vec4(vertex.xy, depth.x, 1.0);
    TexCoords = vertex.zw;
}  
