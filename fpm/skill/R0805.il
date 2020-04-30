;FPM skill by Meekdai
;Tree:Meekdai/base
;Desc:SMT R0805
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"R0805")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.0 1.55)

_CreatePin(PadS -1:0 "1")
_CreatePin(PadS 1:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(3.5 2.04 0:0)

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
