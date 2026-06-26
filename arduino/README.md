*Explore arduino projects*



"arduino" is many things, including a company, a language, and an ecosystem. 



You will use *pioarduino* to manage arduino projects. *Pioarduino* is a variant of the platformio programming environment. 

Our introductory projects are `blink` and `blink-without-delay`.  



## install programming environment

- install VSCode: https://code.visualstudio.com/

- Within VSCode, install the `Pioarduino IDE` extension (To seach extensions: Windows `ctrl`-`shift`-`x` Mac: `cmd`-`shift`-`x`)

  - `pioarduino` may also ask you to install python, if not already installed. Install python.

  

## blink example

*Open the blink example in VSCode*

To open a platformio project in VSCode:

- file → open folder
- navigate to your local GitHub clone folder
- select the folder 'blink'
- 'select folder'



You can interact with the files in a platformio project by viewing the files in the folder. ![image-20260623232941374](./assets/vscode_documents.png)

The code is contained in `main.cpp` within the `src` folder. Review that file now. 



Arduino programs largely consist of 4 parts:


- (optional) global definitions
- setup() {…} // this code runs once every time the microcontroller starts
- (optional) more definitions
- loop() {…} // this code runs repeatedly forever
- NOTE: `void` denotes a function that does not return any value or data when it finishes running
- NOTE: `//` denotes a comment




*Program your microcontroller*

Connect your microcontroller to your computer via USB. 

You may have to explicitly select the correct USB/Serial port. To do so click this icon on the bottom status bar. ![image-20260623233856917](./assets/serial_selector.png) The correct port is probably the highest number. 



Upload the code to your microcontroller. 

- open the platformio menu panel. ![image-20260623232748228](./assets/pioarduino.png)
- if you do not see `rp2040_adalogger` select platformio.ini within the `blink` folder, then return to the platformio menu panel.
- rp2040_adalogger → general → `Upload`



A red LED near the USB port should begin blinking. 



After you upload the code, the microcontroller will run that program every time it restarts. You can restart by unplugging/replugging the USB cable or by pressing the RESET button. 


You can adjust the `delay()` values to change the blink speed. 
- return to the `main.cpp` code in the `blink` folder.
- NOTE: the value inside of `delay()` is in milliseconds, so delay(1000) = 1 sec.
- change the LED time on to 500 ms and the time off to 2000 ms, then `Upload` again. Can you see the differnce?



NOTE: `delay()` pauses the microcontroller; nothing else can happen during the delay. This is suitable for a simple blink example, but becomes a problem for anything more complicated. Consider how you would blink 2 LEDs. 



## blink without delay

To blink an LED without using `delay()`, use the classic arduino example `blink-without-delay`, sometimes called BWD. 



Open the `blink-without-delay` folder. 
- `blink-without-delay` controls two separate LEDs at separate intervals and allows other code to run simultaneously.


Review the `main.cpp` code and comments for understanding. `Upload` to your microcontroller. The red and green LEDs should both now blink.

Modify the blink intervals 
- change LED A to 2000 ms and LED B to 100 ms, and then `Upload` 

*Keep this code installed to show your instructor in class*


