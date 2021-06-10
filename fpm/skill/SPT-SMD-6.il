;FPM skill by Meekdai
;Tree:HDR/SPT
;Desc:SPT-SMD-6
;Vendor:PHOENIX
;Count:1
;ID:
;Datasheet:https://www.phoenixcontact.com/online/portal/cn/pxc/product_detail_page/!ut/p/z1/3Vhbb9owFP4te-AxsXMPk_YAdLSlLWLl0iYvke044DW3JgFafv1swtRCS9KpQ9qCLOJjnfOdS87nyAYuuAdujFZsjgqWxCjksuOannquQOVCV27Oe6YKf2jd75Nry746v1XBDDgD4ODxVZjMwV2l9o0G3Gqw0h4e-XXgx-yPKUwr7aeGDhxubx21n2jgbsXoGkzjJIt4ccbABW5KmA8cWwuIb-u6ZOtBIOk-0iVMKJZUFPiq0dbVgBBwAWs8aPCTHmrg1ZPCD04L3z1tcbrKSeFvPxv9oLL5zwxBVfbz8dHtAJckcUGfCnBP4s2iBdcUt2CEWNyCaZb4S1LkLRiyvPBSNKd8nhLsFTSLGKe8h8OEPOReKimKBPkwWtBs-4pKkC9hH1NJDwwsYazwAE0LW6qm27RtcvK5lSEK-m8VqvhdicAJPN4svN7QG933esO6btd2NX4icooyFMki20zO6OOS5gX15SxZyyRZxgVwFLivmidZIfsso0RshMDpjHvvYeU05BocSojAUd8BCRgN-TsW81c1rY59aljHu8W0EH8fbShpNlUk3bYMqY35H1UMS6dq2whozU42vdZPCn92YvjTFmdifhJ-UPeZqWFqEgS75RbMKcrIwstovgwPReGI4Uhek0iGsmi7F0t5T3PL87_mtqa3jLJgLEpDRlhxk_g0BE6RLalYRjtClZA1FB7CHVacFygmVLwCIYcMZyh7Bo4IXywUCHMOixlnLGUrmpWKu-3ujBaIhfllQaNLDqHYqm5YJVnZgewHEQ94Z53krIz2FRaXJ6J05RohD8AZvdC6hAhRPF9ud4S6BNWmJ6g0PUGt4Qn2m87BftM52G86B_tN5-Cs6RycNZ2Ds8a3aMM3GRvqTU_Q_O8T5AvLjAGHn4WkhEiMh-Bvo_nKXX_77fnNsWnnzCt1P3RYqrpNGfW6b25TRn96m5JG8TNjkjNYrdeTIOphe__xrEE2WqSrobEaCq1Nd-9xHdwUNtQibygUXg8J4Q3dG0LP3htGujow20z2bTZBdGDzr7niZnedL19-AXcS_eo!/?uri=pxc-oc-itemdetail:pid=1824569&library=cnzh&tab=1#PCB%E8%AE%BE%E8%AE%A1%E5%B0%BA%E5%AF%B8
;OpenSource:https://github.com/Meekdai/FPM-ME

sprintf(pName,"SPT-SMD-6")
_PrepareNewSym(pName)

;##########################################
pitch=3.5
num=6
;##########################################
pH=7.7

PadS = _PadSMFillet(1.6 4.0)
PadMech= _PadTH_Default(1.8 1.1)

for(i 1 num 
_CreatePin(PadS pitch*(i-1):0 i)
)

_CreatePinMechanical(PadMech 0.0:-7.95)
_CreatePinMechanical(PadMech pitch*(num-1):-7.95)

_Layer(lPkgGeoSilkT) _Rectangle(pitch*(num-1)+4 13.6 pitch*(num-1)/2:-6.8+0.45)

;ref & val
_CreateRefValue(pName 0:3 0:3)

_SaveDesign(pName)
