;FPM skill by Meekdai
;Tree:HDR/Power Connector
;Desc:5.5mm Power Connector
;Vendor:LC
;Count:1
;Datasheet:https://item.szlcsc.com/16896.html
;OpenSource:https://github.com/Meekdai/FPM-ME

pH=12.55 X=14.4 Y=9.0
sprintf(pName,"PWR55_SLOT")
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

PadN13 = _Pad_Slot(1.4 3.8 0.6 2.8)
PadN2 = _Pad_Slot(3.8 1.4 2.8 0.6)
_CreatePin(PadN2 -10.7:4.7 "2")
_CreatePin(PadN13 -10.7+3:0 "1")
_CreatePin(PadN13 -10.7-3:0 "3")

;bound
_Layer(lPkgGeoPlaceT)
_BoundHeight(_ShapeRectangle(X-3.2+1 Y+0.5 -(X+3.2+1)/2:0) pH)
_Layer(lPkgGeoDfaT) 
_BoundHeight(_ShapeRectangle(X Y -X/2:0) pH)

;silkscreen & assembly
for(i 1 2 if(i==1 _Layer(lPkgGeoSilkT) _Layer(lPkgGeoAsmT))
_Rectangle(X Y -X/2:0)
_Line(list(-3.2:Y/2 -3.2:-Y/2))
_Line(list(0:0 -3.2:0))
_Line(list(-10.7+1.6:4.7 -10.7-1.6:4.7)))

;ref & val
_CreateRefValue(pName 0:-Y/2-tSilkHeight/2-SilkWidth
     0:-Y/2-tSilkHeight/2-SilkWidth)

_SaveDesign(pName)