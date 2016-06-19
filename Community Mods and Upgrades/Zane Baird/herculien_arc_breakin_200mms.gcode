;..............Arc-based breakin gcode for Herculien
;..............Zane Baird 20160618

;This break-in code is for the gantry only, meaning there is no Z movement other than generating
;the initial clearance for XY moves. This incorporates the original break-in movements from
;Eric Lien as well as arc moves centered in the bed as well as at each corner. This provides
;a more comprehensive break-in for all movement types that are encountered in normal printing.


G21 ;mm mode
M204 S2000 ;Set accel at 3000 mm/s
M205 X0.1 ;Set junction deviation at 0.1
M107 ;Ensure cooling fan is off
G28 ;Home all axes

G1 Z10 F500 ;move bed down for clearance

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;....The above code is repeated from this point on...

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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

;****Arc portion of break in code
G1 X180 Y170 F12000 ;move to center of bed 

;50mm radius, center
G1 Y220 F12000 ;move to arc start
G2 X179.999 Y220 I0 J-50 F12000 ;50 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X180.001 Y220 I0 J-50 F12000 ;50mm radius counter-clockwise arc

;100mm radius, center
G1 X180 Y70 F12000 ;move to arc start
G2 X180.001 Y70 I0 J100 F12000 ;100 mm radius clockwise arc
G1 X180 F12000 ;return to arc start position
G3 X179.999 Y70 I0 J100 F12000 ;100mm radius counter-clockwise arc

;150mm radius, center
G1 X180 Y320 F12000 ; move to top of arc
G2 X179.999 Y320 I0 J-150 F12000 ;150mm radius clockwise arc 
G1 X180 F12000 ;return to arc start
G3 X180.001 Y320 I0 J-150 F12000 ;150mm radius counter-clockwise arc

;50mm radius, front left
G1 X55 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X54.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back right
G1 X305 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X304.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, front right
G1 X305 Y55 F12000 ;move to center of arc location
G1 Y105 F12000
G2 X304.999 Y105 I0 J-50 F12000 ;clockwise arc
G1 X305 F12000
G3 X305.001 Y105 I0 J-50 F12000 ;counter-clockwise arc

;50mm radius, back left
G1 X55 Y280 F12000 ;move to center of arc location
G1 Y330 F12000
G2 X54.999 Y330 I0 J-50 F12000 ;clockwise arc
G1 X55 F12000
G3 X55.001 Y330 I0 J-50 F12000 ;counter-clockwise arc

;...........Original break in traces - courtesy Eric Lien.....
;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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
G1 F12000 ; set xy travel speed to 200mm/speed
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

;   ******* Trace Large 300mm X 300mm Box at 200mm/s******
G1 F12000 ; set xy travel speed to 200mm/speed
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


M84 ;motors off


