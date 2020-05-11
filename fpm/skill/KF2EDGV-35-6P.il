;FPM skill by Meekdai
;Tree:HDR/KF2EDG
;Desc:KF2EDGV-35-6P
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/441294.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"KF2EDGV-35-6P")
_PrepareNewSym(pName)

;########################################
pitch=3.5
num=6
outx=2.5
;########################################
pH=9.5

PadTH1=_PadTH_Default(2.2 1.2 t)
PadTH2=_PadTH_Default(2.2 1.2)

for(i 1 num 
if(i==1 _CreatePin(PadTH1 0:0 i) _CreatePin(PadTH2 pitch*(i-1):0 i))
)

_Layer(lPkgGeoSilkT) _Line(list(-outx:3.7 (pitch*(num-1)+outx):3.7))
_Layer(lPkgGeoSilkT) _Line(list((pitch*(num-1)+outx):3.7 (pitch*(num-1)+outx):-4.0))
_Layer(lPkgGeoSilkT) _Line(list((pitch*(num-1)+outx):-4.0 -outx:-4.0))
_Layer(lPkgGeoSilkT) _Line(list(-outx:-4.0 -outx:3.7))

_Layer(lPkgGeoSilkT) _Line(list(-outx:-2.5 (pitch*(num-1)+outx):-2.5))

;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
