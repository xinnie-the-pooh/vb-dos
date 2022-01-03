' ------------------------------------------------------------------------
' Visual Basic for MS-DOS Control Panel Program Support Module
'
' Provides desktop drawing routine for custom ASCII
' desktop images in Control Panel program.
'
' Copyright (C) 1982-1992 Microsoft Corporation
'
' You have a royalty-free right to use, modify, reproduce
' and distribute the sample applications and toolkits provided with
' Visual Basic for MS-DOS (and/or any modified version)
' in any way you find useful, provided that you agree that
' Microsoft has no warranty, obligations or liability for
' any of the sample applications or toolkits.
' ------------------------------------------------------------------------

CONST DESKTOP_PATTERN = 7              ' Definition for ControlPanel array element.

DEFINT A-Z
' Desktop drawing routine for Control Panel Program.
'
' Creates custom text-mode (ASCII) picture to be displayed
' on the application desktop.  Add code here to create the
' additional pictures you want to be able to display.
' Use COLOR, LOCATE and PRINT statements to display characters.
'
SUB DrawDesktopPicture (pictnum AS INTEGER)
    ' Output to desktop (screen) only allowed when forms
    ' are not showing.
    SCREEN.HIDE
    x = DOEVENTS()

    ' Define constants corresponding to different pictures.
    CONST LOGO = 1
    CONST BRICKS = 2
    CONST WINDOWS = 3

    ' Draw selected picture.  Add new pictures within
    ' the SELECT CASE/END SELECT statements.
    SELECT CASE pictnum
    CASE LOGO:
        COLOR 7, 0
        CLS
        COLOR 0, 7
        IF SCREEN.Height < 50 THEN
            LOCATE 2, 20
        ELSE
            LOCATE 4, 20
        END IF

        IF SCREEN.Height > 25 THEN
            PRINT "                                      ": LOCATE , 20
        END IF
        PRINT " кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП ": LOCATE , 20
        PRINT " Г                                  Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г                                  Г ": LOCATE , 20
            PRINT " Г                                  Г ": LOCATE , 20
        END IF
        PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        END IF
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        END IF
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        END IF
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
            PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        END IF
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лл       лл       лл       Г ": LOCATE , 20
        PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г       лллллллллллллллллллл       Г ": LOCATE , 20
        END IF
        PRINT " Г                                  Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г                                  Г ": LOCATE , 20
        END IF
        PRINT " Г      Visual Basic for MS-DOS     Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г                                  Г ": LOCATE , 20
        END IF
        PRINT " Г        C h a r a c t e r         Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г                                  Г ": LOCATE , 20
        END IF
        PRINT " Г          W i n d o w s           Г ": LOCATE , 20
        PRINT " Г                                  Г ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT " Г                                  Г ": LOCATE , 20
            PRINT " Г                                  Г ": LOCATE , 20
            PRINT " Г                                  Г ": LOCATE , 20
            PRINT " Г                                  Г ": LOCATE , 20
        END IF
        PRINT " РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй ": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT "                                      ";
        END IF

        IF SCREEN.Height = 25 THEN
            TopWindow = 4
            LowerWindow = 5
            LeftWindow = 31
            SizeWindow = 5
        ELSEIF SCREEN.Height = 43 THEN
            TopWindow = 8
            LowerWindow = 10
            LeftWindow = 31
            SizeWindow = 8
        ELSE
            TopWindow = 10
            LowerWindow = 12
            LeftWindow = 31
            SizeWindow = 8
        END IF

        COLOR 4
        FOR i% = 1 TO SizeWindow
            LOCATE TopWindow + i%, LeftWindow
            PRINT "ллллллл";
        NEXT i%

        COLOR 2
        FOR i% = 1 TO SizeWindow
            LOCATE TopWindow + i%, LeftWindow + 9
            PRINT "ллллллл";
        NEXT i%

        COLOR 1
        FOR i% = 1 TO SizeWindow
            LOCATE LowerWindow + SizeWindow + i%, LeftWindow
            PRINT "ллллллл";
        NEXT i%

        COLOR 14
        FOR i% = 1 TO SizeWindow
            LOCATE LowerWindow + SizeWindow + i%, LeftWindow + 9
            PRINT "ллллллл";
        NEXT i%

    CASE BRICKS:
        COLOR 7, 0
        CLS
        COLOR 0, 4
        BrickTop$ = "ФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФФФТФФФФФ"
        BrickBottom$ = "С"
        FOR i% = 1 TO SCREEN.Height - 1 STEP 2
            LOCATE i%, 1
            PRINT LEFT$(BrickTop$, 80);
            LOCATE i% + 1, 1
            PRINT RIGHT$(BrickTop$, 80);

            FOR j% = 3 TO 80 STEP 8
            LOCATE i%, j%
            PRINT BrickBottom$;
            NEXT j%

            FOR j% = 7 TO 80 STEP 8
            LOCATE i% + 1, j%
            PRINT BrickBottom$;
            NEXT j%
        NEXT i%

        IF SCREEN.Height < 50 THEN
            LOCATE SCREEN.Height, 1
            PRINT LEFT$(BrickTop$, 80);

            FOR j% = 3 TO 80 STEP 8
            LOCATE SCREEN.Height, j%
            PRINT BrickBottom$;
            NEXT j%
        END IF

    CASE WINDOWS:
        COLOR 7, 0
        CLS
        COLOR 14, 0
        IF SCREEN.Height = 25 THEN
            LOCATE 4, 20
        ELSEIF SCREEN.Height = 43 THEN
            LOCATE 10, 20
        ELSE
            LOCATE 12, 20
        END IF

        PRINT "кФФФФФФФПкФФФФФФФП": LOCATE , 20
        PRINT "ГлллллллГГлллллллГлл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГллллл": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT "ГлллллллГГлллллллГллллллл": LOCATE , 20
        END IF
        PRINT "ГлллллллГГлллллллГллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГлллллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГлллллллллллллллллл": LOCATE , 20
        PRINT "РФФФФФФФйРФФФФФФФйллллллллллллллллллллл": LOCATE , 20
        PRINT "кФФФФФФФПкФФФФФФФПлллллллллллллллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГлллллллллллллллллллллллллллллл": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT "ГлллллллГГлллллллГлллллллллллллллллллллллллллллллл": LOCATE , 20
        END IF
        PRINT "ГлллллллГГлллллллГллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "ГлллллллГГлллллллГлллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "РФФФФФФФйРФФФФФФФйлллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT " лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "   лллллллллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "     лллллллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "      ллллллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "        ллллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        PRINT "          ллллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        IF SCREEN.Height > 25 THEN
            PRINT "           лллллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
            PRINT "              ллллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
            PRINT "                ллллллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
            PRINT "                   лллллллллллллллллллллллллллллллллллллллллл": LOCATE , 20
        END IF

    END SELECT

    ' Preserve picture by setting element 7 (DESKTOP_PATTERN)
    ' of ControlPanel array to 0 (nul).  Note, a redraw buffer
    ' is used to save the image and will reduce the amount of
    ' available memory in your application.
    SCREEN.ControlPanel(DESKTOP_PATTERN) = 0

    ' Show forms on top of desktop.
    SCREEN.SHOW
    x = DOEVENTS()
END SUB

