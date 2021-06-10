;FPM skill by Meekdai
;Tree:base/L
;Desc:SMT L4020
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/397739.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"L4020")
_PrepareNewSym(pName)

PadT = _PadSMFillet(1.5 2.5)

_CreatePin(PadT -1.85:0 "1")
_CreatePin(PadT 1.85:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(4.4 4.2 0:0)

;ref & val
_CreateRefValue(pName 0:4 0:4)

_SaveDesign(pName)
