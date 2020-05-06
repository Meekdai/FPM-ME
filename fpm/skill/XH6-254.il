;FPM skill by Meekdai
;Tree:HDR/XH
;Desc:XH6-254
;Vendor:LC
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"XH6-254")
_PrepareNewSym(pName)

;##########################################
num=6
pin1_x=(num/2-1)*2.54+1.27
silk_x=(num+1)*2.54/2
;##########################################
pH=7.1

PadTH1=_PadTH_Default(1.5 0.9 t)
PadTH2=_PadTH_Default(1.5 0.9)

_CreatePin(PadTH1 pin1_x:0 "1")
_CreatePin(PadTH2 pin1_x-2.54:0 "2")
_CreatePin(PadTH2 1.27:0 "3")
_CreatePin(PadTH2 -1.27:0 "4")
_CreatePin(PadTH2 -pin1_x+2.54:0 "5")
_CreatePin(PadTH2 -pin1_x:0 "6")

_Layer(lPkgGeoSilkT) _Line(list(-silk_x:-2.5 -silk_x:3.5))
_Layer(lPkgGeoSilkT) _Line(list(-silk_x:3.5 silk_x:3.5))
_Layer(lPkgGeoSilkT) _Line(list(silk_x:3.5 silk_x:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(silk_x:-2.5 pin1_x:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(pin1_x:-2.5 pin1_x:-1.5))
_Layer(lPkgGeoSilkT) _Line(list(pin1_x:-1.5 (pin1_x-1.2):-1.5))
_Layer(lPkgGeoSilkT) _Line(list((pin1_x-1.2):-1.5 (pin1_x-1.2):-2.5))

_Layer(lPkgGeoSilkT) _Line(list((pin1_x-1.2):-2.5 -(pin1_x-1.2):-2.5))

_Layer(lPkgGeoSilkT) _Line(list(-(pin1_x-1.2):-2.5 -(pin1_x-1.2):-1.5))
_Layer(lPkgGeoSilkT) _Line(list(-(pin1_x-1.2):-1.5 -pin1_x:-1.5))
_Layer(lPkgGeoSilkT) _Line(list(-pin1_x:-1.5 -pin1_x:-2.5))

_Layer(lPkgGeoSilkT) _Line(list(-pin1_x:-2.5 -silk_x:-2.5))

;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
