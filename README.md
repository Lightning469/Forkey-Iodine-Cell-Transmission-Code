# Forkey-Iodine-Cell-Code
This is the README from the set of files used to run Forkey's iodine absorption spectrum code.

This directory contains the files required to run the molecular iodine absorption spectrum model which is described in the following references:

J.N. Forkey, W.R. Lempert, R.B. Miles, "Corrected and calibrated I2 absorption model at frequency-doubled Nd:YAG laser wavelengths," Applied Optics, Vol. 36, No. 27, pp.6729-6738(1997)

J.N.Forkey, "Development and demonstration of filtered Rayleigh scattering - a laser based flow diagnostic for planar measurement of velocity, temperature and pressure," Ph.D. dissertation (Dept. of Mechanical & Aerospace Engineering, Princeton University, 1996)

The files required are called "i2lines2.f", "i2spec4.f", "fcfioded", and "18786to18791m2" The first two files with .f extensions are the FORTRAN source code files for the programs entitled "i2lines2" and "i2spec4". "fcfioded" is a data file used by the program i2lines2, and "18786to18791m2" is an intermediate file (output from i2lines2, input to i2spec4) which has been modified as described below. 

The first program, i2lines2, generates an output file which contains information about the transitions in the wavenumber region specified. This output file is given a name by you and is used as input for the second program, i2spec4.  This program asks for information about the cell - temperature, pressure, and length - and generates an output file with cell transmission as a function of wavenumber, over the wavenumber range specified.  A useful formula for calculating vapor pressure (cell pressure) from iodine crystal temperature is:

				2867.028


		logP=9.75715 - ------------


				(T+254.180)


This formula is from the TRC Thermodynamics Tables (Non-Hydrocarbons), pages k-190 and ka-190.  P is the vapor pressure in torr, T is the iodine crystal temperature in degrees Celsius, and the log is taken in base ten.

The output from this model has been compared to experimental data for wavelengths close to frequency doubled Nd:YAG (532 nm) as discussed in the two references listed above.  In this wavelength region (between 18787 cm-1 and 18789 cm-1), we found that the model predicted location of the P181(43,0) line was in error enough to change the shape of the spectrum considerably. In the file 18786to18791m2, we have corrected this error by shifting the central location of this line by 0.0815 cm-1.

For further details about the expected and measured accuracy of the model, and the equations and constants used, please refer to the references listed above.

Any questions or comments concerning the programs would be welcome and should be directed to Joe Forkey at jforkey@poci.com or Dick Miles at miles@princeton.edu.

JNF 10/06
