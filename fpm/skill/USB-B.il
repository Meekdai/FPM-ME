;FPM skill by Meekdai
;Tree:HDR/USB-B
;Desc:USB-B
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/87639.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"USB-B")
_PrepareNewSym(pName)

PadTH1=_PadTH_Default(1.6 0.95)
PadTH2=_PadTH_Default(3.5 2.3)

_CreatePin(PadTH1 1.25:0 "1")
_CreatePin(PadTH1 -1.25:0 "2")
_CreatePin(PadTH1 -1.25:-2.0 "3")
_CreatePin(PadTH1 1.25:-2.0 "4")

_CreatePin(PadTH2 -6.02:-4.71 "5")
_CreatePin(PadTH2 6.02:-4.71 "6")

_Layer(lPkgGeoSilkT) _Rectangle(12.04 16.3 0:-6.56)

;ref & val
_CreateRefValue(pName 0:3.0 0:3.0)
_SaveDesign(pName)
