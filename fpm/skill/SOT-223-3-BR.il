;FPM skill by Meekdai
;Tree:chip/SOT
;Desc:SMT SOT-223-3-BR
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/6652.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SOT-223-3-BR")
_PrepareNewSym(pName)

pH=1.2

PadS1 = _PadSMFillet(2.2 1.1)
PadS2 = _PadSMFillet(2.2 3.5)

_CreatePin(PadS1 3.099:-2.3 "1")
_CreatePin(PadS1 3.099:0 "2")
_CreatePin(PadS1 3.099:2.3 "3")
_CreatePin(PadS2 -3.099:0 "4")

_Layer(lPkgGeoSilkT) _Rectangle(3.6 7.1 0:0)

;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
