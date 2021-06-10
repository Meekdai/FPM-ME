;FPM skill by Meekdai
;Tree:base/button
;Desc:SMT K36_60
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/300030.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"K36_60")
_PrepareNewSym(pName)

pH=2.0

PadS = _PadSMFillet(1.2 1.0)

_CreatePin(PadS -3.7:0 "1")
_CreatePin(PadS 3.7:0 "2")

;silkscreen & assembly
_Layer(lPkgGeoSilkT) _Rectangle(6.2 3.6 0:0)
_Layer(lPkgGeoSilkT) _Rectangle(2.6 1.3 0:0)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
