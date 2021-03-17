;FPM skill by Meekdai
;Tree:HDR/Golden finger
;Desc:SFP-20
;Vendor:PCB Golden finger
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

pitch=0.8
pH=1.0
pName="SFP-20"
_PrepareNewSym(pName)

TPadB=_PadSM(3.0 0.6 t nil 0.0 1 t)
TPadT=_PadSM(3.0 0.6 t nil 0.0 nil t)

;pin
for(i 1 10 
_CreatePin(TPadB 0:3.4-pitch*(i-1) i)
)

for(i 11 20 
_CreatePin(TPadT 0:-3.4+pitch*(i-11) i)
)

;soldermask
_Layer(lPkgGeoSmT) _ShapeRectangle(4.0 9.2 0:0)
_Layer(lPkgGeoSmB) _ShapeRectangle(4.0 9.2 0:0)

;silkscreen & assembly
_Layer(lPkgGeoAsmT) _Rectangle(6.0 9.2 -1.0:0)
_Layer(lPkgGeoSilkB) _Dot(-2.6:3.4 0.5)

;ref & val
_CreateRefValue(pName 0:6 0:6)
_SaveDesign(pName)
