;FPM skill by Meekdai
;Tree:HDR/TH
;Desc:TH2X2-254
;Vendor:LC
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"TH2X2-254")
_PrepareNewSym(pName)

;########################################
pitch=2.54
num=2
outx=pitch
;########################################
pH=8.4

PadTH1=_PadTH_Default(1.5 0.9 t)
PadTH2=_PadTH_Default(1.5 0.9)

for(i 1 num 
if(i==1 _CreatePin(PadTH1 0:0 i) _CreatePin(PadTH2 pitch*(i-1):0 i*2-1))
_CreatePin(PadTH2 pitch*(i-1):pitch i*2)
)

_Layer(lPkgGeoSilkT) _Rectangle(pitch*num pitch*2 (num-1)*(pitch/2):(pitch/2))

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
