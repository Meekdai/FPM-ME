;FPM skill by Meekdai
;Tree:base/LED
;Desc:SMT LED0402-RD
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"LED0402-RD")
_PrepareNewSym(pName)

pH=0.3

PadS = _PadSMFillet(0.5 0.8)

_CreatePin(PadS -0.5:0 "1")
_CreatePin(PadS 0.5:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(1.9 1.2 0:0)
_Layer(lPkgGeoSilkT) _Line(list(-1.25:0.4 -1.25:-0.4))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
