;FPM skill by Meekdai
;Tree:base/C
;Desc:SMT C0603
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"C0603")
_PrepareNewSym(pName)

pH=0.5

PadS = _PadSMFillet(1.0 1.1)

_CreatePin(PadS -0.8:0 "1")
_CreatePin(PadS 0.8:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(0.301:0.805 1.551:0.805))
_Layer(lPkgGeoSilkT) _Line(list(1.551:0.805 1.551:-0.795))
_Layer(lPkgGeoSilkT) _Line(list(1.551:-0.795 0.301:-0.795))

_Layer(lPkgGeoSilkT) _Line(list(-0.301:0.805 -1.551:0.805))
_Layer(lPkgGeoSilkT) _Line(list(-1.551:0.805 -1.551:-0.795))
_Layer(lPkgGeoSilkT) _Line(list(-1.551:-0.795 -0.301:-0.795))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
