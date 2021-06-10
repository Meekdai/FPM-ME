;FPM skill by Meekdai
;Tree:base/button
;Desc:SMT TS-1187A
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/299976.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"TS-1187A")
_PrepareNewSym(pName)

pH=2.0

PadS = _PadSMFillet(1.2 0.8)

_CreatePin(PadS -3:1.875 "1")
_CreatePin(PadS 3:1.875 "2")
_CreatePin(PadS -3:-1.875 "3")
_CreatePin(PadS 3:-1.875 "4")

;silkscreen & assembly
_Layer(lPkgGeoSilkT) _Rectangle(5.1 5.1 0:0)
_Layer(lPkgGeoSilkT) _Circle(1.0 0:0)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
