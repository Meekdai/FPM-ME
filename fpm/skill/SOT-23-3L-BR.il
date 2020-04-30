;FPM skill by Meekdai
;Tree:chip/SOT
;Desc:SMT SOT-23-3L-BR
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/21629.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SOT-23-3L-BR")
_PrepareNewSym(pName)

pH=0.8

PadS = _PadSMFillet(1.25 0.7)

_CreatePin(PadS 1.25:-0.95 "1")
_CreatePin(PadS 1.25:0.95 "2")
_CreatePin(PadS -1.25:0 "3")

_Layer(lPkgGeoSilkT) _Rectangle(1.8 3.2 0:0)

;ref & val
_CreateRefValue(pName 0:2.6 0:2.6)

_SaveDesign(pName)
