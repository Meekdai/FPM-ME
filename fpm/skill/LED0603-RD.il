;FPM skill by Meekdai
;Tree:base/LED
;Desc:SMT LED0603-RD
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"LED0603-RD")
_PrepareNewSym(pName)

pH=0.5

PadS = _PadSMFillet(1.0 1.1)

_CreatePin(PadS -0.8:0 "1")
_CreatePin(PadS 0.8:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(3.1 1.61 0:0)
_Layer(lPkgGeoSilkT) _Line(list(-2.0:0.5 -2.0:-0.5))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
