;FPM skill by Meekdai
;Tree:HDR/USB
;Desc:TYPE-C-16P
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/372551.html
;OpenSource:https://github.com/Meekdai/FPM-ME

pitch=0.5
pH=3.26
pName="TYPE-C-16P"
_PrepareNewSym(pName)

procedure(
        _Pad_Slot(PadWidth PadHeight SlotWidth SlotHeight)
        let( (drill_data pad_list PadName Pad)        
        drill_data = make_axlPadStackDrill(?figure 'OBLONG_Y,
                ?figureSize SlotWidth:SlotHeight, ?plating 'PLATED,             
                ?holeType 'OVAL_SLOT, ?slotSize SlotWidth:SlotHeight)        
        pad_list = cons(make_axlPadStackPad( ?layer "TOP", ?type 'REGULAR,
                ?figure 'OBLONG_Y, ?figureSize PadWidth:PadHeight) nil )
        pad_list = cons(make_axlPadStackPad( ?layer "DEFAULT INTERNAL", ?type 'REGULAR,
                ?figure 'OBLONG_Y, ?figureSize PadWidth*0.9:PadHeight*0.9) pad_list)
        pad_list = cons(make_axlPadStackPad( ?layer "BOTTOM", ?type 'REGULAR,
                ?figure 'OBLONG_Y, ?figureSize PadWidth:PadHeight) pad_list )
        pad_list = cons(make_axlPadStackPad( ?layer "SOLDERMASK_TOP", ?type nil
                ?figure 'OBLONG_Y, ?figureSize PadWidth+solder_mask_offset:PadHeight+solder_mask_offset) pad_list )
        pad_list = cons(make_axlPadStackPad( ?layer "SOLDERMASK_BOTTOM", ?type nil
                ?figure 'OBLONG_Y, ?figureSize PadWidth+solder_mask_offset:PadHeight+solder_mask_offset) pad_list ) 

        sprintf(PadName "pad_slot_%d_%d_%d_%d" round(PadWidth*100)
                round(PadHeight*100) round(SlotWidth*100) round(SlotHeight*100) )
                Pad = axlDBCreatePadStack( PadName drill_data pad_list t)
                axlPadstackToDisk( PadName PadName)
                Pad
        ); end let
); end procedure

TPadA=_PadSMFillet(0.6 1.15)
TPadB=_PadSMFillet(0.3 1.15)

PadMech=_PadTH_Default(0.65 0.65)
PadSlot=_Pad_Slot(1.0 2.1 0.6 1.7)

;pin
_CreatePin(TPadA -3.2:2.362 "A1B12")
_CreatePin(TPadA -2.4:2.362 "A4B9")

_CreatePin(TPadB -1.75:2.362 "A8")
_CreatePin(TPadB -1.25:2.362 "A5")
_CreatePin(TPadB -0.75:2.362 "B7")
_CreatePin(TPadB -0.25:2.362 "A6")
_CreatePin(TPadB 0.25:2.362 "A7")
_CreatePin(TPadB 0.75:2.362 "B6")
_CreatePin(TPadB 1.25:2.362 "B8")
_CreatePin(TPadB 1.75:2.362 "B5")

_CreatePin(TPadA 2.4:2.362 "B4A9")
_CreatePin(TPadA 3.2:2.362 "B1A12")

_CreatePinMechanical(PadMech 2.89:1.288)
_CreatePinMechanical(PadMech -2.89:1.288)

_CreatePin(PadSlot -4.32:1.787 1)
_CreatePin(PadSlot 4.32:1.787 2)
_CreatePin(PadSlot -4.32:-2.362 3)
_CreatePin(PadSlot 4.32:-2.362 4)

;silkscreen & assembly
_Layer(lPkgGeoSilkT) _Line(list(-4.318:3.2 4.318:3.2))
_Layer(lPkgGeoSilkT) _Rectangle(8.636 8.255 0:-1.905)
;_Layer(lPkgGeoSilkB) _Dot(-2.6:3.4 0.5)

;ref & val
_CreateRefValue(pName 0:5 0:5)
_SaveDesign(pName)
