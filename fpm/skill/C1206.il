;FPM skill by Meekdai
;Tree:base/C
;Desc:SMT C1206
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"C1206")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.2 1.9)

_CreatePin(PadS -1.6:0 "1")
_CreatePin(PadS 1.6:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(1.0:1.2 2.5:1.2))
_Layer(lPkgGeoSilkT) _Line(list(2.5:1.2 2.5:-1.2))
_Layer(lPkgGeoSilkT) _Line(list(2.5:-1.2 1.0:-1.2))

_Layer(lPkgGeoSilkT) _Line(list(-1.0:1.2 -2.5:1.2))
_Layer(lPkgGeoSilkT) _Line(list(-2.5:1.2 -2.5:-1.2))
_Layer(lPkgGeoSilkT) _Line(list(-2.5:-1.2 -1.0:-1.2))

;ref & val
_CreateRefValue(pName 0:2.5 0:2.5)

_SaveDesign(pName)
