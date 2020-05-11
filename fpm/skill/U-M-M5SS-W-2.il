;FPM skill by Meekdai
;Tree:HDR/USB
;Desc:U-M-M5SS-W-2
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/92333.html
;OpenSource:https://github.com/Meekdai/FPM-ME

Courtyard=0.2 pA=6.5 pB=12.0 pH=2.6 pL=5.7 pW=8.1 pitch=0.8
pName="U-M-M5SS-W-2"

_PrepareNewSym(pName)

PadN=_PadSMFillet(2.5 0.5)
PadM=_PadSMFillet(2.5 2.0)
PadMech=_PadTH_Default(0.9 0.9)

;pin
_CreatePin(PadN 0.5:pitch*-2 1)
_CreatePin(PadN 0.5:pitch*-1 2)
_CreatePin(PadN 0.5:pitch*0 3)
_CreatePin(PadN 0.5:pitch*1 4)
_CreatePin(PadN 0.5:pitch*2 5)

_CreatePin(PadM 0:4.45 6)
_CreatePin(PadM 0:-4.45 7)
_CreatePin(PadM -5.5:4.45 8)
_CreatePin(PadM -5.5:-4.45 9)

_CreatePinMechanical(PadMech -2.55:2.2)
_CreatePinMechanical(PadMech -2.55:-2.2)

;silkscreen & assembly
_Layer(lPkgGeoSilkT))
_Rectangle(9.2 7.5 -4.6:0 0) ;A B Center Fillet

;ref & val
_CreateRefValue(pName -3:6 -3:6)
_SaveDesign(pName)
