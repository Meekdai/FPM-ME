;FPM skill by Meekdai
;Tree:chip/DFN
;Desc:SMT DFN-6
;Vendor:LC
;Count:1
;Datasheet:None
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"DFN-6")
_PrepareNewSym(pName)

pH=1.1

PadS1 = _PadSMFillet(0.4 0.6)
PadEP = _PadSMFillet(2.3 1.5)

_CreatePin(PadS1 0.95:1.5 "1")
_CreatePin(PadS1 0:1.5 "2")
_CreatePin(PadS1 -0.95:1.5 "3")

_CreatePin(PadS1 -0.95:-1.5 "4")
_CreatePin(PadS1 0:-1.5 "5")
_CreatePin(PadS1 0.95:-1.5 "6")

_CreatePin(PadEP 0:0 "7")


_Layer(lPkgGeoSilkT) _Rectangle(3.0 3.0 0:0)
_Layer(lPkgGeoSilkT) _Circle(0.191 1:2.5)

;ref & val
_CreateRefValue(pName 0:4 0:4)

_SaveDesign(pName)
