# arviewer

A fast 3D Gcode Viewer for the Arcus-3D-M1 printer for easier visualization of multi-material weighted mixing.

This was created to speed up *manually* adding the M163 codes needed for controlling active mixing filament printers, mainly... mine.  
Support for multi-material 3D printing is still young, and currently support for mixed/full color filament printing not bound by layers is non-existant.
This method gets around that shortcoming so I don't have to wait for real multi-material support in a slicer.

Adapted from the excellent: https://github.com/jonathanwin/yagv

## Features:

* Fast, easy to use, 3D inteface
* Display of weighted material mixing results (M163)
* Layer by layer/Line by line playback of gcode.
* Streamlined matching of line segments to gcode line numbers.
* Support for Machinekit velocity extrusion


M163 S1 P10 = feed filament 1 at 10% rate.

## Requires:

* python 2.x (2.7.3 tested)
  http://python.org/
* pyglet 1.1+ (1.1.4 tested)
  http://www.pyglet.org

## Usage:

Assign the color of each filament as an RGB value in config.cfg

* Generate gcode using the velocity extrusion patched version of Slic3r for Machinekit.
* Edit config.cfg and setup your filament color RGB values.
* Load the resulting gcode in your favorite text editor.
* Execute: arviewer [file.gcode]
* Use arviewer to locate a suitable point to alter the filament mix ratio.
* Add some 'M163 filament weights' to your gcode and save.  For example:
  *  M163 S1 P0  - Set filament 1 to no extrusion.
  *  M163 S2 P10 - Set filament 2 to 10% extrusion.
  *  M163 S3 P90 - Set filament 3 to 90% extrusion.
* Press R in arviewer to reload the gcode and see the changes.
* Repeat the last two steps... a lot.

The filament RGB value after mixing is calculated per line segment, and the resulting extrusion is displayed in the interface.

## Issues:

* Panning for close inspection not yet supported.
* Designed with Slic3r output in mind, may not support other slicing programs (suggestions/patches welcome).
* Many gcodes unsupported, in particular:
  * G20: Set Units to Inches (usage unknown) 
  * Arcs (G2 & G3 ?)
