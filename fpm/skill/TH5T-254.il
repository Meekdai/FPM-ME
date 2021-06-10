;FPM skill by Meekdai
;Tree:HDR/TH
;Desc:TH5T-254
;Vendor:LC
;Count:1
;Datasheet:
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"TH5T-254")
_PrepareNewSym(pName)

;########################################
pitch=2.54
num=5
;########################################
pH=1.6

PadS = _PadSMFillet(1.2 4.0)

for(i 1 num 
_CreatePin(PadS pitch*(i-1):0 i))
)

_Layer(lPkgGeoSilkT) _Line(list(-pitch/2:1.8 -pitch/2:-1.8))
_Layer(lPkgGeoSilkT) _Line(list( (pitch*(num-1)+pitch/2):1.8 (pitch*(num-1)+pitch/2):-1.8 ))

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
