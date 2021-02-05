;FPM skill by Meekdai
;Tree:HDR/FPC
;Desc:SMT FPC05
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/268910.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"FPC05-24P")
_PrepareNewSym(pName)

;##########################################
pitch=0.5
num=24
;##########################################
pH=2.0

PadS1 = _PadSMFillet(0.3 1.3)
PadS2 = _PadSMFillet(2.0 2.5)

for(i 1 num 
if(i==1 _CreatePin(PadS1 0:0 i) _CreatePin(PadS1 pitch*(i-1):0 i))
)

_CreatePin(PadS2 -1.69:2.55 num+1)
_CreatePin(PadS2 ((num*pitch-pitch)+1.69):2.55 num+2)

_Layer(lPkgGeoSilkT) _Rectangle(((num*pitch-pitch)+1.69*2) 5.2 (((num*pitch-pitch)+1.69*2)/2-1.69):2.6)

;ref & val
_CreateRefValue(pName 0:6 0:6)

_SaveDesign(pName)
