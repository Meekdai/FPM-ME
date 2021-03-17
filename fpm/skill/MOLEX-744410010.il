;FPM skill by Meekdai
;Tree:HDR/MOLEX
;Desc:MOLEX-744410010
;Vendor:MOLEX
;Count:1
;Datasheet:https://item.szlcsc.com/264990.html
;OpenSource:https://github.com/Meekdai/FPM-ME

pitch=0.8
num=10
pName="MOLEX-744410010"

_PrepareNewSym(pName)

PadN=_PadSMFillet(0.5 2.0)
PadMech=_PadTH_Default(1.55 1.55)

;pin
for(i 1 num 
_CreatePin(PadN -3.4+pitch*(i-1):-4.1 i)
)

for(i 11 num+10 
_CreatePin(PadN 3.4-pitch*(i-11):4.1 i)
)

_CreatePinMechanical(PadMech -4.8:0.0)
_CreatePinMechanical(PadMech 4.8:0.0)

;silkscreen & assembly
_Layer(lPkgGeoSilkT) _Rectangle(11.0 8.5 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.2 -5.0:-5.0)

;ref & val
_CreateRefValue(pName 0:6 0:6)
_SaveDesign(pName)
