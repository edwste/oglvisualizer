#!/bin/bash
g++ $1 -I../local_includes -I/usr/include/freetype -I/usr/include/freetype2 -lglut -lglfw -lGL -lGLEW -lfreetype -o $1.out
chmod +x $1.out
