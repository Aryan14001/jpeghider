@echo off

:start 
cls
echo note:make sure the file name is p.jpg
echo .      #menu#
echo read all data (a)
echo text hider and reader (b)
echo img hider and viewer (c)
echo save pic data (d)
echo end (e)
echo reset to saved picture (f)
echo.
if not exist p.jpg (
echo [p.jpg_not_detected]
echo.
)
set/p "cho=>"
cls
if %cho%==a py assets/s.py
if %cho%==b goto texthr
if %cho%==c goto imghr
if %cho%==d goto saver
if %cho%==e goto end
if %cho%==f py assets/reset.py
pause
goto start
:saver
cls
echo .      #saver#  
echo save curent file data (a)
echo input pic data bytes (b)
echo back (c)
echo.
if not exist p.jpg (
echo [p.jpg_not_detected]
echo.
)
set/p "saver2=>"
if %saver2%==b goto saving
if %saver2%==a py assets/saver.py
if %saver2%==c goto start
pause
goto saver
:saving
cls
echo comming soon
pause
goto saver
:texthr
cls
echo .     #text...#
echo read hided data (a)
echo wriet data (b)
echo read all data (c)
echo back (d)
echo reset to saved picture (e)
echo.
if not exist p.jpg (
echo [p.jpg_not_detected]
echo.
)
set/p "cho4=>"
cls
if %cho4%==a py assets/r.py 
if %cho4%==b py assets/w.py
if %cho4%==c py assets/s.py
if %cho4%==d goto start
if %cho4%==e py assets/reset.py
pause
goto texthr
:imghr
cls
echo note:make sure the pic name you want to hide is p2.jpg
echo .      #img...#
echo hide img(.jpg) (a)
echo get hided img(.jpg) (b)
echo back (c) 
echo reset to saved picture (d)
echo.
if not exist p.jpg (
echo [p.jpg_not_detected]
if not exist p2.jpg (
echo [p2.jpg_not_detected]
echo.
) else (
echo.
)
) else (
if not exist p2.jpg (
echo [p2.jpg_not_detected]
echo.
)
)
set/p "cho5=>"
cls
if %cho5%==a py assets/ijh.py
if %cho5%==b (
py assets/ijr.py
start opj.jpg
)
if %cho5%==c goto start
if %cho5%==d py assets/reset.py
pause
goto imghr
:end

