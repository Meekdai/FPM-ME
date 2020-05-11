;FPM skill by Meekdai
;Tree:HDR/XH
;Desc:XH2-254
;Vendor:LC
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"XH2-254")
_PrepareNewSym(pName)

;########################################
pitch=2.54
num=2
outx=pitch
;########################################
pH=7.1

PadTH1=_PadTH_Default(1.5 0.9 t)
PadTH2=_PadTH_Default(1.5 0.9)

for(i 1 num 
if(i==1 _CreatePin(PadTH1 0:0 i) _CreatePin(PadTH2 pitch*(i-1):0 i))
)

_Layer(lPkgGeoSilkT) _Line(list(-outx:-2.5 -outx:3.5))
_Layer(lPkgGeoSilkT) _Line(list(-outx:3.5 (pitch*(num-1)+outx):3.5))
_Layer(lPkgGeoSilkT) _Line(list((pitch*(num-1)+outx):3.5 (pitch*(num-1)+outx):-2.5))

_Layer(lPkgGeoSilkT) _Line(list((pitch*(num-1)+outx):-2.5 0.6+(pitch*(num-1)/2):-2.5))

_Layer(lPkgGeoSilkT) _Line(list(0.6+(pitch*(num-1)/2):-2.5 0.6+(pitch*(num-1)/2):-1.5))
_Layer(lPkgGeoSilkT) _Line(list(0.6+(pitch*(num-1)/2):-1.5 -0.6+(pitch*(num-1)/2):-1.5))
_Layer(lPkgGeoSilkT) _Line(list(-0.6+(pitch*(num-1)/2):-1.5 -0.6+(pitch*(num-1)/2):-2.5))

_Layer(lPkgGeoSilkT) _Line(list(-0.6+(pitch*(num-1)/2):-2.5 -outx:-2.5))


;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
