;FPM skill by Meekdai
;Tree:base/LED
;Desc:SMT LED0805-RD
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/85425.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"LED0805-RD")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.0 1.55)

_CreatePin(PadS -1:0 "1")
_CreatePin(PadS 1:0 "2")

_Layer(lPkgGeoSilkT) _Rectangle(3.5 2.04 0:0)
_Layer(lPkgGeoSilkT) _Line(list(-2.2:0.8 -2.2:-0.8))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
