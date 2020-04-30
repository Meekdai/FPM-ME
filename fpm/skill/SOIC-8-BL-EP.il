;FPM skill by Meekdai
;Tree:chip/SOIC
;Desc:SMT SOIC-8-BL-EP
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/46889.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SOIC-8-BL-EP")
_PrepareNewSym(pName)

pH=1.7

PadS1 = _PadSM(0.7 2.2)
PadS2 = _PadSMFillet(3.4 2.5)

_CreatePin(PadS1 -1.905:-3.023 "1")
_CreatePin(PadS1 -0.635:-3.023 "2")
_CreatePin(PadS1 0.635:-3.023 "3")
_CreatePin(PadS1 1.905:-3.023 "4")

_CreatePin(PadS1 1.905:3.023 "5")
_CreatePin(PadS1 0.635:3.023 "6")
_CreatePin(PadS1 -0.635:3.023 "7")
_CreatePin(PadS1 -1.905:3.023 "8")

_CreatePin(PadS2 0:0 "9")

_Layer(lPkgGeoSilkT) _Rectangle(5.0 4.0 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.191 -2.743:-3.099)

;ref & val
_CreateRefValue(pName 0:6 0:6)

_SaveDesign(pName)
