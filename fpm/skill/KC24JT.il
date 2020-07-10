;FPM skill by Meekdai
;Tree:chip/Module
;Desc:SMT KC24JT
;Vendor:MORNSUN
;Count:1
;Datasheet:https://www.mornsun.cn/html/pdf/KC24JT-700R3.html
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"KC24JT")
_PrepareNewSym(pName)

pH=1.0

PadS = _PadSMFillet(2.0 2.5)

_CreatePin(PadS -8.89:-8 "1")
_CreatePin(PadS 8.89-2.54:-8 "7")
_CreatePin(PadS 8.89:-8 "8")

_CreatePin(PadS 8.89:8 "9")
_CreatePin(PadS 8.89-2.54:8 "10")
_CreatePin(PadS -8.89:8 "16")

_Layer(lPkgGeoSilkT) _Rectangle(21.5 16.72 0:0)

;ref & val
_CreateRefValue(pName 0:9 0:9)

_SaveDesign(pName)
