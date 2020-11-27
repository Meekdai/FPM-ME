;FPM skill by Meekdai
;Tree:chip/DFN
;Desc:SMT DFN-4
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"DFN-4")
_PrepareNewSym(pName)

pH=1.1

PadS1 = _PadSMFillet(0.55 0.35)
PadEP = _PadSMFillet(0.7 1.6)

_CreatePin(PadS1 -1.0:0.5 "1")
_CreatePin(PadS1 -1:-0.5 "2")

_CreatePin(PadS1 1.0:-0.5 "3")
_CreatePin(PadS1 1:0.5 "4")

_CreatePin(PadEP 0:0 "5")


_Layer(lPkgGeoSilkT) _Rectangle(2.0 2.0 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.1 -1.5:1.0)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
