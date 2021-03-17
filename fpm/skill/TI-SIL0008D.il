;FPM skill by Richard L. version=0.08 fpmontreal@gmail.com
;Tree:TI/IC
;Desc:TI SIL0008D Package, for MicroSiP power modules
;Vendor:TI
;Count:1;CVG64:bitmap field, not implemented yet.
;Datasheet:
;CHANGE FOLLOWING FIELDS

Pitch=0.65
Px=2.9
Py=3.1
pH=1.53
PadX=0.5 
PadY=0.4
TPadX=1.1 
TPadY=1.9

defun(_PadSM1 
    (x y \@optional bRect bRound
        (maskoversize 0.0) bBottom bNoPaste
    )
    if((maskoversize > 0.0)
        (solder_masksize = ((x + (maskoversize * 2)):(y + (maskoversize * 2))))
        (solder_masksize = ((x + (solder_mask_offset * 2)):(y + (solder_mask_offset * 2))))
    )
    sprintf(_PadName "X%.2fY%.2f_NO_PM" x y)
    (_PadName = (_StrNoDot _PadName))
    if(bBottom
        (_PadName = strcat(_PadName "B"))
        (_PadName = strcat(_PadName "T"))
    )
    if((x != y) then
        if(bRect
            (_PadName = strcat("R" _PadName))
            (_PadName = strcat("O" _PadName))
        ) else
        if(bRound
            (_PadName = strcat("E" _PadName))
            (_PadName = strcat("S" _PadName))
        )
    )
    if(!(axlLoadPadstack _PadName) then 
        if((x != y)
            if(bRect
                (fig = 'RECTANGLE)
                (fig = 'OBLONG)
            )
            if(!bRound 
                (fig = 'SQUARE)
                (fig = 'CIRCLE)
            )
        )
        if(bBottom then
            (lPad = lPadB)
            (lPadS = lPadSB)
            (lPadP = lPadPB)
            else 
            (lPad = lPadT)
            (lPadS = lPadST)
            (lPadP = lPadPT)
        )
        (PadLst = list((make_axlPadStackPad ?layer lPad ?type nil
                ?figure fig ?figureSize
                (x:y)
            )
            (make_axlPadStackPad ?layer lPadS ?type nil
                ?figure fig ?figureSize solder_masksize
            )
        ))
        if(!bNoPaste
            (PadLst = append(PadLst
                list((make_axlPadStackPad ?layer lPadP ?type nil
                        ?figure fig ?figureSize
                        (x:y)
                    )
                )
            ))
        )
        (ps_id = (axlDBCreatePadStack _PadName nil PadLst t)) 
        (axlPadstackToDisk _PadName)
    ) _PadName
)

Pad=_PadSM(PadX PadY t nil)
TPad=_PadSM1(TPadX TPadY t nil 0.0 nil t)
sprintf(pName,"TI-SIL0008D")
_PrepareNewSym(pName)

;pin
for(i 1 4
    sprintf(PinName "%d" i)
    _CreatePin(Pad -2.1/2:(2.5-i)*Pitch PinName)
    sprintf(PinName "%d" 9-i)
    _CreatePin(Pad 2.1/2:(2.5-i)*Pitch PinName)
)

_CreatePin(TPad 0:0 "EP")

;Draw exposure pad PM
_Layer(lPkgGeoPmT)
_ShapeRectangle(1.04 0.85 0:0.525)
_ShapeRectangle(1.04 0.85 0:-0.525)

;bound
_Layer(lPkgGeoPlaceT) _BoundHeight(_ShapeRectangle(Px+0.4 Py+0.4 0:0) pH)
_Layer(lPkgGeoDfaT) _BoundHeight(_ShapeRectangle(Px Py 0:0) pH pName)

;silkscreen & assembly
for(i 1 2 if(i==1 _Layer(lPkgGeoSilkT) _Layer(lPkgGeoAsmT))
    _Rectangle(Px+0.4 Py+0.4 0:0)
     _Dot(-2.3:1.3 0.5)
)

;ref & val
_CreateRefValue(pName 0:0 0:0)
_CrossCenter()
_SaveDesign(pName)
_MakeDevice(pName,2)
