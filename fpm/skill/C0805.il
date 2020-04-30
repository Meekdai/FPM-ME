;FPM skill by Meekdai
;Tree:base/C
;Desc:SMT C0805
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"C0805")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(1.0 1.55)

_CreatePin(PadS -1:0 "1")
_CreatePin(PadS 1:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(0.5:1.02 1.75:1.02))
_Layer(lPkgGeoSilkT) _Line(list(1.75:1.02 1.75:-1.02))
_Layer(lPkgGeoSilkT) _Line(list(1.75:-1.02 0.5:-1.02))

_Layer(lPkgGeoSilkT) _Line(list(-0.5:1.02 -1.75:1.02))
_Layer(lPkgGeoSilkT) _Line(list(-1.75:1.02 -1.75:-1.02))
_Layer(lPkgGeoSilkT) _Line(list(-1.75:-1.02 -0.5:-1.02))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
