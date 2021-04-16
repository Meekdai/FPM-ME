;FPM skill by Meekdai
;Tree:HDR/DSUB-17W2-116
;Desc:DSUB-17W2-116
;Vendor:LC
;Count:1
;Datasheet:https://item.taobao.com/item.htm?spm=a230r.1.14.36.7ddbfe7cZlssRg&id=587704380588&ns=1&abbucket=18#detail
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"DSUB-17W2-116")
_PrepareNewSym(pName)

pH=12.5
pitch=2.77

PadTH1=_PadTH_Default(2.0 1.09)
PadTH2=_PadTH_Default(1.9 0.9)
PadTH3=_PadTH_Default(3.5 3.2)

for(i 1 8 
_CreatePin(PadTH1 pitch*(i-1):0 i)
)

for(i 1 7 
_CreatePin(PadTH1 pitch*(i-1)+pitch/2:2.84 i+8)
)

_CreatePin(PadTH2 -4.125:2.8 "16")
_CreatePin(PadTH2 23.515:2.8 "17")

_CreatePinMechanical(PadTH1 -4.125:5.45)
_CreatePinMechanical(PadTH1 -4.125:0.15)
_CreatePinMechanical(PadTH1 23.515:5.45)
_CreatePinMechanical(PadTH1 23.515:0.15)

_CreatePinMechanical(PadTH3 -13.825:2.05)
_CreatePinMechanical(PadTH3 33.215:2.05)

_Layer(lPkgGeoSilkT) _Rectangle(53.04 19.1 9.695:0)

;ref & val
_CreateRefValue(pName 0:10.0 0:10.0)

_SaveDesign(pName)