;FPM skill by Meekdai
;Tree:chip/SOT
;Desc:SMT SOT-23-6-BL
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/14917.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SOT-23-6-BL")
_PrepareNewSym(pName)

pH=1.2

PadS1 = _PadSMFillet(0.55 1.0)

_CreatePin(PadS1 -0.95:-1.4 "1")
_CreatePin(PadS1 0:-1.4 "2")
_CreatePin(PadS1 0.95:-1.4 "3")
_CreatePin(PadS1 0.95:1.4 "4")
_CreatePin(PadS1 0:1.4 "5")
_CreatePin(PadS1 -0.95:1.4 "6")

_Layer(lPkgGeoSilkT) _Line(list(-1.55:0.9 -1.55:-0.9))
_Layer(lPkgGeoSilkT) _Line(list(1.55:0.9 1.55:-0.9))
_Layer(lPkgGeoSilkT) _Circle(0.127 -1.651:-1.397)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
