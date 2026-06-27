# Nameplate/Keychain

Design and print a nameplate or keychain! 



**Astro majors**: Your nameplate is intended for a satellite model in a future class. You may print an additional copy if you also want a keychain. 



**Aero majors**. Follow the same guidelines, but modify to make a keychain instead of a nameplate. 



## Objectives

Achieve basic familiarity with the design and manufacturing process for 3D objects, including:

- CAD modeling (Fusion)
- engineering drawings
- slicing (PrusaSlicer)
- FDM printing



## Documentation 

For this project, you may work with anyone, including your instructor and classmates. 



## Overview

- design object
- create engineering drawing
- slice object
- manufacture object
- document project



# Part 1: computer model

Use CAD software to design a nameplate or keychain. 

You can use Fusion in the browser without installing it. https://fusion.online.autodesk.com/



Design your nameplate according to the specification drawing: [nameplate_drawing.pdf](./nameplate_drawing.pdf). 



## Requirements

- include at least one graphic (use an svg file)
  - department logos are available in the assets folder, or find your own image
  - if desired, use [inkscape](https://inkscape.org/release/inkscape-1.4.4/)'s "trace bitmap" feature to convert another format to svg
- text
- chamfered edges and debossed features on the bottom face
- filleted edges and embossed features on the top face
- hole feature for holes



**Keychain**
Modify the instructions to make a keychain instead of a nameplate. Make one larger hole (approximately 6 mm) instead of 6 screw holes. 

**Nameplate** 
Your nameplate will look like this:

![nameplate](./assets/nameplate.svg)

Export the design to your repository in 3 formats:

- f3d (suitable for further Fusion editing)
- step (suitable for slicing)
- png screenshot of your model in Fusion—crop appropriately



# Part 2: engineering drawing

Create an engineering drawing. Your drawing should show key dimensions, although it does not need to be as thorough as the assignment instructions. 

Save the drawing to your repository as a pdf. You will also bring a printed copy to class



# Part 3: slice model

Use PrusaSlicer to *slice* your model—prepare it for additive manufacturing. 



Place the chamfered/debossed face down towards the build plate. 

## Settings

- printer: Prusa CoreOne
- nozzle: 0.4 mm
- material: PLA
- infill: 15% gyroid



Save the prepared model (3mf file) to your repository. 

Slice the project and export the sliced file (gcode file) to a USB stick for printing. 



# Part 4: print model

Print your model. PrusaSlicer will provide time and material estimates after slicing. 

Bring your printed model to class on the project due date. 



# Part 5: submission

Bring to class:

- printed model
- printed design drawing



Submit in your repository

- f3d file (fusion)
- step file (for slicing)
- pdf design drawing
- 3mf file (slicer file)
- screenshot of your model
- photo of your printed model—be creative
- brief submission report ([submission.md](submission.md))
