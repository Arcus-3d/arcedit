# arviewer

A fast 3D Gcode Viewer for the Arcus-3D-M1 printer for easier visualization of multi-material weighted mixing.
This was created to speed up *manually* adding the M codes needed for mixing filaments.  Support for multi-color 3D printing is still young, and support for mixed/full color filament printing is non-existant.
Adapted from https://github.com/jonathanwin/yagv

## Features:

* Fast, easy to use, 3D inteface
* Display of weighted material mixing results
* Layer by layer/Line by line playback of gcode.
* Streamlined matching of line segments to gcode line numbers.
* Support for Machinekit velocity extrusion


You assign the colors of each supplied filament as RGB values in the python script, and based on the weights of each 
filament at that point in the file, the resulting mixed color of the output is rendered in the interface.

M163 S1 P10 = feed filament 1 at 10% rate.

## Requires:

* python 2.x (2.7.3 tested)
  http://python.org/
* pyglet 1.1+ (1.1.4 tested)
  http://www.pyglet.org

## Usage:

* Generate gcode using the velocity extrusion patched version of Slic3r for Machinekit.
* Edit config.cfg and setup your filament color RGB values.
* Load the resulting gcode in your favorite text editor.
* Add the starting filament weights somewhere near the top of your file:
  *  M163 S1 P0
  *  M163 S2 P0
  *  M163 S3 P0
  *  M163 S4 P0
  *  M163 S5 P100
* Execute: arviewer [file.gcode]
* Locate the next point you wish to change the color at by line number.
* Add the appropriate filament weights at that line number in source file and save
* Press R in arviewer to reload the gcode and see the results.

## Issues:

* Panning for close inspection not yet supported.
* Designed with Slic3r output in mind, may not support other slicing programs (suggestions/patches welcome).
* Many gcodes unsupported, in particular:
  * G20: Set Units to Inches (usage unknown) 
  * Arcs (G2 & G3 ?)
