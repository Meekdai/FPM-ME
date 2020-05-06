;FPM skill by Meekdai
;Tree:HDR/XH
;Desc:XH2-254
;Vendor:LC
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"XH2-254")
_PrepareNewSym(pName)

pH=7.1

PadTH1=_PadTH_Default(1.5 0.9 t)
PadTH2=_PadTH_Default(1.5 0.9)

_CreatePin(PadTH1 1.27:0 "1")
_CreatePin(PadTH2 -1.27:0 "2")

_Layer(lPkgGeoSilkT) _Line(list(-3.81:-2.5 -3.81:3.5))
_Layer(lPkgGeoSilkT) _Line(list(-3.81:3.5 3.81:3.5))
_Layer(lPkgGeoSilkT) _Line(list(3.81:3.5 3.81:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(3.81:-2.5 0.6:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(0.6:-2.5 0.6:-1.5))
_Layer(lPkgGeoSilkT) _Line(list(0.6:-1.5 -0.6:-1.5))
_Layer(lPkgGeoSilkT) _Line(list(-0.6:-1.5 -0.6:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(-0.6:-2.5 -3.81:-2.5))


;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
