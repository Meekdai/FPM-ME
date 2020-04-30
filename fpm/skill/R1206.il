;FPM skill by Meekdai
;Tree:base/R
;Desc:SMT R1206
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"R1206")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.2 1.9)

_CreatePin(PadS -1.6:0 "1")
_CreatePin(PadS 1.6:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(5.0 2.4 0:0)

;ref & val
_CreateRefValue(pName 0:2.5 0:2.5)

_SaveDesign(pName)
