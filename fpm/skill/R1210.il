;FPM skill by Meekdai
;Tree:base/R
;Desc:SMT R1210
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"R1210")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.2 2.7)

_CreatePin(PadS -1.6:0 "1")
_CreatePin(PadS 1.6:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(5.0 3.2 0:0)

;ref & val
_CreateRefValue(pName 0:2.6 0:2.6)

_SaveDesign(pName)
