;FPM skill by Meekdai
;Tree:chip/QFN
;Desc:SMT STM32L432
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/1427559.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"QFN-32-50")
_PrepareNewSym(pName)

pH=0.55
pitch=0.5
num=8

PadS1 = _PadSMFillet(0.9 0.3)
PadS2 = _PadSMFillet(0.3 0.9)
PadEP = _PadSMFillet(3.45 3.45)

for(i 1 num 
_CreatePin(PadS1 -2.54:1.75-pitch*(i-1) i)
)

for(i 1 num 
_CreatePin(PadS2 -1.75+pitch*(i-1):-2.54 i+8)
)

for(i 1 num 
_CreatePin(PadS1 2.54:-1.75+pitch*(i-1) i+16)
)

for(i 1 num 
_CreatePin(PadS2 1.75-pitch*(i-1):2.54 i+24)
)

_CreatePin(PadEP 0:0 "")

_Layer(lPkgGeoSilkT) _Rectangle(5.2 5.2 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.191 -3:3)

;ref & val
_CreateRefValue(pName 0:4 0:4)

_SaveDesign(pName)
