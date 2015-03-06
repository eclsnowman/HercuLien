G90 ; absolute positioning
G21 ; metric values
G28 X0 Y0 ; move X/Y to min endstops
G28 Z0 ; move Z to min endstops
G1 Z4 F240 ; move the Bed down 4mm at 4mm/s for clearance
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X19 Y29 ; move carraige to just off front left corner to 19x 29y
G1 X319 ; move carraige to just off front right corner
G1 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner
G1 Y29 ; move carriage to just off front left corner 
G1 X319 Y329 ; move carriage to just off back right corner
G1 X19 ; move carriage to just off back left corner 
G1 X319 Y29 ; move carriage to just off front right corner
G1 X19 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 X19 Y29 ; move carriage to just off front left corner
G1 Y329 ; move carriage to just off back left corner
G1 X319 ; move carriage to just off back right corner
G1 Y29 ; move carriage to just off front right corner
G1 X19 ; move carriage to just off front left corner
;
;   ******* Trace Large Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y29 ; move carraige to front center of diamond
G1 X319 Y179; move carraige to right center of diamond
G1 X169 Y329 ; move carraige to back center of diamond
G1 X19 Y179 ; move carraige to left center of diamond
G1 X169 Y29 ; move carraige to front center of diamond
G1 Y329 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X319 ; move carraige to right center of diamond
G1 X19 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;
;   ******* Trace Small 150mm X 150mm Box at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X94 Y104 ; move carraige to front left corner of small box
G1 X244 ; move carraige to front right corner of small box
G1 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box
G1 Y104 ; move carriage to front left corner of small box 
G1 X244 Y254 ; move carriage to back right corner of small box
G1 X94 ; move carriage to back left corner of small box 
G1 X244 Y104 ; move carriage to front right corner of small box
G1 X94 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 X94 Y104 ; move carriage to front left corner of small box
G1 Y254 ; move carriage to back left corner of small box
G1 X244 ; move carriage to back right corner of small box
G1 Y104 ; move carriage to front right corner of small box
G1 X94 ; move carriage to front left corner of small box
;
;   ******* Trace Small Diamond at 200mm/s******
G1 F6000 ; set xy travel speed to 100mm/speed
G1 X169 Y104 ; move carraige to front center of diamond
G1 X244 Y179 ; move carraige to right center of diamond
G1 X169 Y254 ; move carraige to back center of diamond
G1 X94 Y179 ; move carraige to left center of diamond
G1 X169 Y104 ; move carraige to front center of diamond
G1 Y254 ; move carraige to back center of diamond
G1 Y179 ; move carraige to center of diamond
G1 X244 ; move carraige to right center of diamond
G1 X94 ; move carraige to left center of diamond
G1 X169 ; move carraige to center of diamond
;