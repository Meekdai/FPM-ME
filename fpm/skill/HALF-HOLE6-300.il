;FPM skill by Meekdai
;Tree:HDR/HALF-HOLE
;Desc:HALF-HOLE6-300
;Vendor:Meekdai
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"HALF-HOLE6-300")
_PrepareNewSym(pName)

;##########################################
pitch=3.0
num=6
;##########################################
pH=1.0

;PadTH1=_PadTH_Default(1.8 1.0 t)
PadTH2=_PadTH_Default(1.8 1.0)

for(i 1 num 
if(i==1 _CreatePin(PadTH2 0:0 i) _CreatePin(PadTH2 pitch*(i-1):0 i))
)

;ref & val
_CreateRefValue(pName 0:2 0:2)

_SaveDesign(pName)
