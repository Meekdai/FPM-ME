;FPM skill by Meekdai
;Tree:base/C
;Desc:SMT C1210
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"C1210")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.2 2.7)

_CreatePin(PadS -1.6:0 "1")
_CreatePin(PadS 1.6:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(0.9:1.6 2.5:1.6))
_Layer(lPkgGeoSilkT) _Line(list(2.5:1.6 2.5:-1.6))
_Layer(lPkgGeoSilkT) _Line(list(2.5:-1.6 0.9:-1.6))

_Layer(lPkgGeoSilkT) _Line(list(-0.9:1.6 -2.5:1.6))
_Layer(lPkgGeoSilkT) _Line(list(-2.5:1.6 -2.5:-1.6))
_Layer(lPkgGeoSilkT) _Line(list(-2.5:-1.6 -0.9:-1.6))

;ref & val
_CreateRefValue(pName 0:2.6 0:2.6)

_SaveDesign(pName)
