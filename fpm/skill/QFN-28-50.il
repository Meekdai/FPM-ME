;FPM skill by Meekdai
;Tree:chip/QFN
;Desc:SMT CP2102
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/7033.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"QFN-28-50")
_PrepareNewSym(pName)

pH=0.9
pitch=0.5
num=7

PadS1 = _PadSMFillet(0.9 0.28)
PadS2 = _PadSMFillet(0.28 0.9)
PadEP = _PadSMFillet(3.2 3.2)

for(i 1 num 
_CreatePin(PadS1 -2.54:1.5-pitch*(i-1) i)
)

for(i 1 num 
_CreatePin(PadS2 -1.5+pitch*(i-1):-2.54 i+num)
)

for(i 1 num 
_CreatePin(PadS1 2.54:-1.5+pitch*(i-1) i+num*2)
)

for(i 1 num 
_CreatePin(PadS2 1.5-pitch*(i-1):2.54 i+num*3)
)

_CreatePin(PadEP 0:0 "")

_Layer(lPkgGeoSilkT) _Rectangle(5.2 5.2 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.191 -3:3)

;ref & val
_CreateRefValue(pName 0:4 0:4)

_SaveDesign(pName)
