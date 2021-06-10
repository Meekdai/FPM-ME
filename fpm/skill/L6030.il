;FPM skill by Meekdai
;Tree:base/L
;Desc:SMT L6030
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/180704.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"L6030")
_PrepareNewSym(pName)

PadT = _PadSMFillet(2.35 3.5)

_CreatePin(PadT -3:0 "1")
_CreatePin(PadT 3:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(7.4 6.8 0:0)

;ref & val
_CreateRefValue(pName 0:6 0:6)

_SaveDesign(pName)
