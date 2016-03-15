# yagv

A fast 3D Gcode Viewer for the Arcus-3D-M1 printer adapted from https://github.com/jonathanwin/yagv
I've added support for velocity extrusion, display of mixed color line segments, and ordered playback with line numbers.

This was to simplify *manually* adding the M codes I need to support color into gcode files.  Support for multi-color
3D printing is still young, and support for mixed/full color filament printing is non-existant.

You assign the colors of each supplied filament as RGB values in the python script, and based on the weights of each 
filament at that point in the file, the resulting mixed color of the output is rendered in the interface.

M163 S1 P10 = feed filament 1 at 10% rate.

## Requires:

* python 2.x (2.7.3 tested)
  http://python.org/
* pyglet 1.1+ (1.1.4 tested)
  http://www.pyglet.org

## Usage:

yagv [file.gcode]
* Hold left mouse button and pan to rotate part.
* Hold middle mouse button and pan to switch layers.
* Hold right mouse button and pan to playback extrusion for the current layer
* Scroll mousewheel to zoom.
* Press Control R to reload source file.

## Instructions

Modify
Generate gcode using the velocity extrusion patched version of Slic3r.
Add the initial extrusion weights somewhere near the top
  M163 S1 P0;
  M163 S2 P0
  M163 S3 P0
  M163 S4 P0
  M163 S5 P100
Load the resulting gcode in your favorite text editor.
Launch yagv: [file.gcode]
## Issues:

* Panning for close inspection not yet supported.
* Designed with Slic3r output in mind, may not support other slicing programs (suggestions/patches welcome).
* Some gcodes unsupported, in particular:
  * G20: Set Units to Inches (usage unknown) 
  * Arcs (G2 & G3 ?)
