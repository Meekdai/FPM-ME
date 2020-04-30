;FPM skill by Meekdai
;Tree:base/C
;Desc:SMT C0402
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"C0402")
_PrepareNewSym(pName)

pH=0.3

PadS = _PadSMFillet(0.5 0.8)

_CreatePin(PadS -0.5:0 "1")
_CreatePin(PadS 0.5:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(0.18:0.6 0.95:0.6))
_Layer(lPkgGeoSilkT) _Line(list(0.95:0.6 0.95:-0.6))
_Layer(lPkgGeoSilkT) _Line(list(0.95:-0.6 0.18:-0.6))

_Layer(lPkgGeoSilkT) _Line(list(-0.18:0.6 -0.95:0.6))
_Layer(lPkgGeoSilkT) _Line(list(-0.95:0.6 -0.95:-0.6))
_Layer(lPkgGeoSilkT) _Line(list(-0.95:-0.6 -0.18:-0.6))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
