#     ____             _                 _________ _____
#    / __ )____  ___  (_)____  ____ _   /__  / __ |__  /
#   / __  / __ \/ _ \/ // __ \/ __ `/     / / / / / / / 
#  / /_/ / /_/ /  __/ // / / / /_/ /     / / /_/ / / /  
# /_____/\____/\___/_//_/ /_/\__, /     /_/\____/ /_/   
#                           /____/                      
# 
# PRESTES Hangar - 2010 - http://presteshangar.wikidot.com/start - GPL v3.0
#                            "In Thrust We Trust…."
#------------------------------------------------------------------------------ 
# This is the NASAL code file for all aircraft systems. Here we can find some
# lines from great developers as David Culp, Syd Adams and YYY.
#
# Revisions : 
#                0.0.1

#------------------------------------------------------------------------------ 
# Control Settings - Ajuste de Controles
#------------------------------------------------------------------------------ 

var init_control = func {
	# Electrical
	setprop("controls/electric/engine[0]/generator",1);
	setprop("controls/electric/engine[1]/generator",1);
	setprop("controls/electric/engine[0]/bus-tie",1);
	setprop("controls/electric/engine[1]/bus-tie",1);
	setprop("controls/electric/APU-generator",1);
	setprop("controls/electric/avionics-switch",1);
	setprop("controls/electric/battery-switch",1);
	setprop("controls/electric/inverter-switch",1);
	# Lights
	setprop("controls/lighting/instrument-norm",1.0);
	setprop("controls/lighting/nav-lights",1);
	setprop("controls/lighting/beacon",1);
	setprop("controls/lighting/strobe",1);
	setprop("controls/lighting/wing-lights",1);
	setprop("controls/lighting/taxi-lights",1);
	setprop("controls/lighting/logo-lights",1);
	setprop("controls/lighting/cabin-lights",1);
	setprop("controls/lighting/landing-lights",1);
	# Engines Controls
	setprop("controls/engines/engine[0]/cutoff",0);
	setprop("controls/engines/engine[1]/cutoff",0);
	setprop("controls/engines/engine[2]/cutoff",0);
	setprop("controls/engines/engine[3]/cutoff",0);
	# Fuel
	setprop("controls/fuel/tank[0]/boost-pump",1);
	setprop("controls/fuel/tank[0]/boost-pump[1]",1);
	setprop("controls/fuel/tank[1]/boost-pump",1);
	setprop("controls/fuel/tank[1]/boost-pump[1]",1);
	setprop("controls/fuel/tank[2]/boost-pump",1);
	setprop("controls/fuel/tank[2]/boost-pump[1]",1);
	setprop("controls/fuel/tank[3]/boost-pump",1);
	setprop("controls/fuel/tank[3]/boost-pump[1]",1);
	# Hydraulic
	setprop("systems/hydraulic/pump-psi[0]",0.0);
	setprop("systems/hydraulic/pump-psi[1]",0.0);

}
	
	
#------------------------------------------------------------------------------ 
# Instruments - Instrumentos
#------------------------------------------------------------------------------ 


#------------------------------------------------------------------------------ 
# XXXXXXXXXXX - YYYYYYYYYYYY
#------------------------------------------------------------------------------ 


#==============================================================================
# PRESTES Hangar - 2010 - http://presteshangar.wikidot.com/start - GPL v3.0
#                             "In Thrust We Trust…."
#==============================================================================
