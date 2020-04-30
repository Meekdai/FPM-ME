;FPM skill by Meekdai
;Tree:base/R
;Desc:SMT R0402
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"R0402")
_PrepareNewSym(pName)

pH=0.3

PadS = _PadSMFillet(0.5 0.8)

_CreatePin(PadS -0.5:0 "1")
_CreatePin(PadS 0.5:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(1.9 1.2 0:0)

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
