;FPM skill by Meekdai
;Tree:HDR/RF-SMA
;Desc:RF-SMA
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/490292.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"RF-SMA")
_PrepareNewSym(pName)

pH=13.5

PadTH1=_PadTH_Default(2.5 1.5)
PadTH2=_PadTH_Default(2.6 1.6)

_CreatePin(PadTH1 0:0 "1")

_CreatePin(PadTH2 -2.54:-2.54 "2")
_CreatePin(PadTH2 -2.54:2.54 "3")
_CreatePin(PadTH2 2.54:2.54 "4")
_CreatePin(PadTH2 2.54:-2.54 "5")

_Layer(lPkgGeoSilkT) _Rectangle(6.4 6.4 0:0)

;ref & val
_CreateRefValue(pName 0:5.0 0:5.0)

_SaveDesign(pName)