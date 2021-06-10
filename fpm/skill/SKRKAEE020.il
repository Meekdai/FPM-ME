;FPM skill by Meekdai
;Tree:base/button
;Desc:SMT SKRKAEE020
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/116605.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SKRKAEE020")
_PrepareNewSym(pName)

pH=2.0

PadS = _PadSMFillet(1.23 1.36)

_CreatePin(PadS -2.185:0 "1")
_CreatePin(PadS 2.185:0 "2")

;silkscreen & assembly
_Layer(lPkgGeoSilkT) _Rectangle(4.5 3.2 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.8 0:0)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
