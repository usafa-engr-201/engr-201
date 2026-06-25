# [T, a, P, rho] = atmosphere_model(alt)

Simple linear atmosphere model. Returns atmospheric parameters based on altitude. 

## author
Lt Col Jordan Firth, USSF
2025-05

## version
1.0

## inputs

| symbol | ASCII | description | units | value/range   |
| ------ | ----- | ----------- | ----- | ------------- |
| alt    | alt   | altitude    | m     | 0 < e < 91000 |

## outputs

| symbol | ASCII | description    | units  |
| ------ | ----- | -------------- | ------ |
| T      | T     | temperature    | K      |
| P      | P     | pressure       | Pa     |
| ρ      | rho   | density        | kg/m^3 |
| a      | a     | speed of sound | m/s    |

## constants

| symbol | ASCII | description                         | value      | units  |
| ------ | ----- | ----------------------------------- | ---------- | ------ |
| g      | g     | standard gravitational acceleration | 9.81       | m/s^2  |
| R      | R     | specific gas constant               | 287.052874 | J/kg/K |
| γ      | gamma | gas heat capacity ratio             | 1.4        |        |

## coupling
none

## references
AE 206 assignment instructions

## process

Check for input altitude in range (0-91 km)
if alt < 0 || alt > 91000
	display a useful error message

Create lookup table/vectors of altitude range boundaries and parameters. 

| num | region             | model      | h1, m <br>begin alt | T1, K<br>base temp | Th, K/m<br>temp lapse rate | P1, Pa<br>base pressure |
| --- | ------------------ | ---------- | ------------------- | ------------------ | -------------------------- | ----------------------- |
| 1   | Troposphere        | linear     | 0                   | 288.15             | -0.0065                    | 1.0132e+05              |
| 2   | Tropopause         | isothermal | 11000               | 216.65             | 0                          | 22632                   |
| 3   | Lower Stratosphere | linear     | 20000               | 216.65             | 0.001                      | 5474.9                  |
| 4   | Upper Stratosphere | linear     | 32000               | 228.65             | 0.0028                     | 868.02                  |
| 5   | Stratopause        | isothermal | 47000               | 270.65             | 0                          | 110.91                  |
| 6   | Lower Mesosphere   | linear     | 51000               | 270.65             | -0.0028                    | 66.939                  |
| 7   | Upper Mesosphere   | linear     | 71000               | 214.65             | -0.002                     | 3.9564                  |
| 8   | Mesopause          | isothermal | 84852               | 187.87             | 0                          | 0.3734                  |
(NOTE: model ends at 91 km)

identify region that input altitude is in
index = first region where alt >= begin alt

ID region parameters
$h_1$ = lower_bound_m(index)
$T_1$ = base_temp_K(index)
$T_h$ = temp_lapse_rate_K_per_m(index)
$P_1$ = base_pressure_Pa(index)

calculate temperature and pressure
if model(index) == "linear"
	  	$T = T_1 + T_h (alt- h_1)$
		$P = P_1 (\frac{T}{T_1})^{(\frac{-g}{T_h R})}$
elseif model(index) == "isothermal"
		$T = T_1$
		$temp = \frac{g}{RT}(h_1-alt)$
		$P = P_1\   e^{temp}$
else
	error

calculate density, speed of sound
$ρ = \frac{P}{RT}$
a = $\sqrt{γRT}$