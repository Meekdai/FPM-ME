;FPM skill by Meekdai
;Tree:base/R
;Desc:SMT R0603
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"R0603")
_PrepareNewSym(pName)

pH=0.5

PadS = _PadSMFillet(1.0 1.1)

_CreatePin(PadS -0.8:0 "1")
_CreatePin(PadS 0.8:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(3.1 1.61 0:0)

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
