;FPM skill by Meekdai
;Tree:base/L
;Desc:SMT L5030
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/397762.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"L5030")
_PrepareNewSym(pName)

PadT = _PadSMFillet(2.0 2.6)

_CreatePin(PadT -2.05:0 "1")
_CreatePin(PadT 2.05:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(5.4 5.2 0:0)

;ref & val
_CreateRefValue(pName 0:4 0:4)

_SaveDesign(pName)
