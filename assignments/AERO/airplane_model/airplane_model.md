# Airplane Model 

 The goal of this project is to create a digital 3D drawing and print a 3D model of an airplane suitable for wind tunnel testing. You can choose to model an existing airplane or a brand new airplane you make up for this project. 

## Objectives

Mature skills using a computer aided design (CAD) software (Fusion 360) to create a 3D airplane model. Mature familiarity using a 3D printer slicer software (PrusaSlicer). Mature familiarity using a 3D printer to create a prototype object using additive manufacturing. 

## Documentation

For this project, you may work with anyone, including your instructor and classmates. You MAY use generative artificial intelligence (Gen AI). 

## Outcomes 

1) Demonstrate creation of aerodynamic wings in CAD 
2) Use parametric definitions to create an aircraft that is sized according to design specifications 
3) Create a realistic fuselage shape using Forms 
4) Create an assembly with joints and good CAD results using rendering and 2D drawings 
5) Create a physical model of the aircraft using FFF 3D printing 

# Part 1: Create a wing with parameterized dimensions 

Follow the video to create your aircraft wing: 

1.  create wing dimension parameters- Root Chord, Tip Chord, HalfSpan, Sweep 
2. Import root airfoil using “ImportSplineCSV” or the Airfoil Generator 
3. Scale root airfoil to (desired length) / (current length) 
4. Create a construction plane at the wing tip 
5. Import and scale tip chord to the correct size and move to the tip plane 
6. Create sketch lines for rail at the leading and trailing edge of the wing 
7. Loft wing using the root and tip airfoils as profiles and the rails 
8. Mirror wing to make a full wing 

Add sweep, dihedral or twist as desired by changing the tip airfoil location and orientation in the Tip Airfoil sketch 

# Part 2: Create horizontal and vertical tails

Use airfoils from airfoiltools.com

1) Create horizontal tail following the same process as the wing 
2) Create vertical tail following the same process but without mirroring 
3) Convert horizontal and vertical tails to components and position relative to each other as a rigid group 

 

# Part 3: Use the Forms tool to create a fuselage using the tutorial as a guide 

Designing a new aircraft? Good luck!



Recreating an existing aircraft?

- import a 3-view drawing as a canvas 
- Create a “Forms” using a cylinder with a symmetry condition along the XZ plane 
- Fill the ends of the cylinder 
- Follow the video and modify the vertexes, edges, and faces of the cylinder to create a realistic fuselage 
- Convert the aircraft bodies (wing, tail, fuselage) to components and arrange in Fusion to create your final aircraft. Use joints as required. 



# Part 4: Create assemblies with joints and professional CAD results

1. Create an assembly with at least one joint on a control surface 

- Create components from each major airplane part 
- Ground the primary component 
- Split or create a control surface (such as the rudder) 
- Create a joint and animate it 

2. Set the appearance of your aircraft using materials as desired 
3. Render a couple views of your aircraft and save as JPG or any image format 
4. Create a 3-view drawing of your aircraft and save it as a PDF 

 

# Part 5: Print your model 

1) Use the "Combine" tool to merge all bodies into a final aircraft body
2) Export the aircraft from Fusion as a 3mf file. 
3) In PrusaSlicer, scale to 1/144 scale or roughly 6 inches long, rotate it to ~60 degrees nose high, and add supports under the trailing edges. Carefully inspect the first few layers in the slicer.



# Optional Part 6: Prepare the model for a subsonic wind tunnel test

- Scale your aircraft to have a wingspan less than or equal to 12 inches so it fits in a 3ft x 3ft subsonic wind tunnel. 
- Import the "SWT_Sting_cutout" file into your Fusion 360 project (Click the blue Upload button in your project)
  - Move the sting/balance component so it is centered on the aircraft in the y-direction 
  - Position the set screw 1.9 inches ahead of the aircraft neutral point 
  - Roughly center the sting/balance component in the vertical direction with respect to the fuselage 
- Use the Combine tool to cut a hole using all of the sting bodies as the tool. 
- Using the video as a guide, split your aircraft into at least two parts and create alignment pin holes 
- Slice your split model for 3D printing 
  - Add and scale cylinders on the build plate to act as the alignment pins 
- Print your wind tunnel model and join with superglue or epoxy 

 

# Assignment Submission 

**Bring your printed airplane to class on the due date** 

Submit the following in your github repository:

- .f3d file of your final airplane CAD full scale, with the assembled joint(s) 
- .3mf file (ready to slice)  
- PDF of your 2-D drawing 
- rendered image of your CAD model
- selfie of your completed print—be creative! 

 