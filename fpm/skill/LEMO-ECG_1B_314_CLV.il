;FPM skill by Meekdai
;Tree:HDR/LEMO-ECG_1B_314_CLV
;Desc:LEMO-ECG_1B_314_CLV
;Vendor:LEMO
;Count:1
;Datasheet:http://www.lemo-china.com/catalog/ROW/Chinese/unipole_multipole_cn.pdf 166页
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"LEMO-ECG_1B_314_CLV")
_PrepareNewSym(pName)

PadTH1=_PadTH_Default(1.2 0.7)

_CreatePin(PadTH1 -5.08:-1.27 "1")
_CreatePin(PadTH1 -2.54:-2.54 "2")
_CreatePin(PadTH1 0:-3.81 "3")
_CreatePin(PadTH1 2.54:-2.54 "4")
_CreatePin(PadTH1 5.08:-1.27 "5")
_CreatePin(PadTH1 5.08:1.27 "6")
_CreatePin(PadTH1 2.54:2.54 "7")
_CreatePin(PadTH1 0:3.81 "8")
_CreatePin(PadTH1 -2.54:2.54 "9")
_CreatePin(PadTH1 -5.08:1.27 "10")
_CreatePin(PadTH1 -2.54:0 "11")
_CreatePin(PadTH1 0:-1.27 "12")
_CreatePin(PadTH1 2.54:0 "13")
_CreatePin(PadTH1 0:1.27 "14")

_Layer(lPkgGeoSilkT) _Circle(6.25 0:0)

;ref & val
_CreateRefValue(pName 0:7.0 0:7.0)
_SaveDesign(pName)
