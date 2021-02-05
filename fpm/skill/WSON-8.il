;FPM skill by Meekdai
;Tree:chip/WSON
;Desc:SMT WSON-8
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"WSON-8")
_PrepareNewSym(pName)

pH=0.75

PadS1 = _PadSMFillet(1.3 0.6)
PadEP = _PadSMFillet(4.0 4.5)

_CreatePin(PadS1 -3.8:1.905 "1")
_CreatePin(PadS1 -3.8:0.635 "2")
_CreatePin(PadS1 -3.8:-0.635 "3")
_CreatePin(PadS1 -3.8:-1.905 "4")
_CreatePin(PadS1 3.8:-1.905 "5")
_CreatePin(PadS1 3.8:-0.635 "6")
_CreatePin(PadS1 3.8:0.635 "7")
_CreatePin(PadS1 3.8:1.905 "8")

_CreatePin(PadEP 0:0 "")


_Layer(lPkgGeoSilkT) _Rectangle(8.0 6.0 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.191 -5.08:2.54)

;ref & val
_CreateRefValue(pName 0:5 0:5)

_SaveDesign(pName)
