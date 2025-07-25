@echo off
chcp 65001
cls

::===========================================================================
fsutil dirty query %systemdrive%  >nul 2>&1 || (
echo ================================================================
echo                          ==== Lỗi ====
echo Tool này yêu cầu quyền quản trị viên để chạy tối ưu nhất.
echo Vui Lòng Chạy Lại File Tối ưu và chuột phải vào .exe này và chọn run as administrators
echo ================================================================
echo.
echo Nhấn Phím Bất Kì Để Thoát
pause >nul
exit
)
::===========================================================================

color F0
mode con cols=150 lines=50
title WinDemo Lag Fix

:======================================================================================================================================================
:MENU
chcp 65001
cls
mode con cols=150 lines=50
for /f "tokens=2 delims==" %%a IN ('"wmic Path Win32_OperatingSystem Get Caption /format:LIST"')do (set NameOS=%%a) >nul 2>&1
for /f "tokens=2 delims==" %%a IN ('"wmic Path Win32_OperatingSystem Get CSDVersion /format:LIST"')do (set SP=%%a) >nul 2>&1
for /f "tokens=2 delims==" %%a in ('wmic path Win32_OperatingSystem get BuildNumber /value') do (set WinBuild=%%a) >nul 2>&1
echo.                               
echo.                             File_Fix_Lag.Bat v1 By WinDemo Lag Fix ( Beta v0.1 )        
echo.                 _____________________________________________________________________________________________________________________
echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   [1] Quét Dọn Rác               [2] Tối Ưu Registry ( Reg )                [19] Reset Windows Explorer            ㅓ
Echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   [3] Tăng Tốc WIFI              [4] Tối Ưu Hoá Services                    [20] Tối Ưu Hoá Gpedit                 ㅓ
Echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   [5] Tăng Tốc INTERNET          [6] Set Ram Ảo                             [21] Tăng Tốc Laptop Windows 10 + 11   ㅓ
echo.                ㅏ                                                                                                                    ㅓ
echo.                ㅏ   [7] Tối Ưu Hoá RAM             [8] Tắt WINDOWS DENFENDER                  [22] Khôi Phục Laptop Ở Chức Năng 21   ㅓ           
Echo.                ㅏ                                                                                                                    ㅓ 
Echo.                ㅏ   [9] Tắt Hiệu Ứng Windows       [10] Tool Cũ KhanhNguyen (Vietsub+Win7~10) [23] Xoá / Gỡ Cài Đặt Microsoft Edge   ㅓ                          
Echo.                ㅏ                                                                                                                    ㅓ 
Echo.                ㅏ   [11] Tắt WINDOWS UPDATE        [12] Kích Hoạt Ultimate Performance        [24] Debloat Windows Dư Thừa Tối Ưu    ㅓ                        
echo.                ㅏ                                                                                                                    ㅓ        
echo.                ㅏ   [13] Tăng Tốc GPU - Card Đồ Hoạ                                           [25] Active Windows 10 + 11 Pro        ㅓ
echo.                ㅏ                                                                                                                    ㅓ
echo.                ㅏ   [14a] Tối Ưu Hoá FPS GAME      [14b] Khôi Phục FPS GAME Về Mặc Định       [26] Tạo Điểm Khôi Phục System Restore ㅓ
echo.                ㅏ                                                                                                                    ㅓ 
Echo.                ㅏ   [15a] Tắt GameBar              [15b] Bật GameBar                          [27] Cài Full Bộ VISUAL C++ 32/64bit   ㅓ
echo.                ㅏ                                                                                                                    ㅓ 
Echo.                ㅏ   [16a] Tắt Máy in               [16b] Bật Máy in                           [28] Tắt WMI Reverse Performance       ㅓ
echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   [17] Cài Đặt MemReduct ( App Tối Ưu Hoá Ram Và Dọn Dẹp Ram )              [29] Bật WMI Reverse Performance       ㅓ
echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   [18] Tối Ưu Hoá CPU            [S] Chú Ý Khi Chạy Tool Windows7,8,10,11   [30] Liên Hệ Người Tạo Ra File Tối Ưu  ㅓ
Echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ   Người Tạo Ra File Tối Ưu Hoá WinDemo Lag Fix :3  [X] Cài Đặt DirectX Runtime / Hỗ Trợ Chơi Game ( Cần Có Mạng )  ㅓ 
Echo.                ㅏ                                                                                                                    ㅓ
Echo.                ㅏ        [W] Kênh WinDemo Lag Fix                    [T] Thoát.                  [R] Menu Khôi Phục + Sửa Chữa       ㅓ
Echo.                ㅏ____________________________________________________________________________________________________________________ㅓ
Echo.
Echo.  ======================================================================
SET /P AREYOUSURE=.              Bạn Muốn Sử Dụng Chức Năng Nào Bên Trên ? : 
IF %AREYOUSURE%==1 GOTO K1
IF %AREYOUSURE%==2 GOTO K2
IF %AREYOUSURE%==3 GOTO K3
IF %AREYOUSURE%==4 GOTO K4
IF %AREYOUSURE%==5 GOTO K5
IF %AREYOUSURE%==6 GOTO K6
IF %AREYOUSURE%==7 GOTO K7
IF %AREYOUSURE%==8 GOTO K8
IF %AREYOUSURE%==9 GOTO K9
IF %AREYOUSURE%==10 GOTO K10
IF %AREYOUSURE%==11 GOTO K11
IF %AREYOUSURE%==12 GOTO K12
IF %AREYOUSURE%==13 GOTO K13
IF %AREYOUSURE%==14a GOTO K14a
IF %AREYOUSURE%==14b GOTO K14b
IF %AREYOUSURE%==15a GOTO K15a
IF %AREYOUSURE%==15b GOTO K15b
IF %AREYOUSURE%==16a GOTO K16a
IF %AREYOUSURE%==16b GOTO K16b
IF %AREYOUSURE%==14A GOTO K14a
IF %AREYOUSURE%==14B GOTO K14b
IF %AREYOUSURE%==15A GOTO K15a
IF %AREYOUSURE%==15B GOTO K15b
IF %AREYOUSURE%==16A GOTO K16a
IF %AREYOUSURE%==16B GOTO K16b
IF %AREYOUSURE%==W GOTO Tieptuc
IF %AREYOUSURE%==w GOTO Tieptuc
IF %AREYOUSURE%==T GOTO EXIT
IF %AREYOUSURE%==t GOTO EXIT
IF %AREYOUSURE%==17 GOTO K17
IF %AREYOUSURE%==18 GOTO K18
IF %AREYOUSURE%==19 GOTO K19
IF %AREYOUSURE%==20 GOTO K20
IF %AREYOUSURE%==21 GOTO K21
IF %AREYOUSURE%==22 GOTO K22
IF %AREYOUSURE%==23 GOTO K23
IF %AREYOUSURE%==24 GOTO K24
IF %AREYOUSURE%==25 GOTO K25
IF %AREYOUSURE%==26 GOTO K26
IF %AREYOUSURE%==27 GOTO K27
IF %AREYOUSURE%==28 GOTO K28
IF %AREYOUSURE%==29 GOTO K29
IF %AREYOUSURE%==30 GOTO K30
IF %AREYOUSURE%==r GOTO restoremenu
IF %AREYOUSURE%==R GOTO restoremenu
IF %AREYOUSURE%==x GOTO xxx
IF %AREYOUSURE%==X GOTO xxx
IF %AREYOUSURE%==s GOTO sss
IF %AREYOUSURE%==S GOTO sss

cls

:======================================================================================================================================================
:K1
chcp 65001
cls
mode con cols=98 lines=200
echo                           ============================== 
echo.
echo                                     Dọn Dẹp Rác
echo.
echo                           ==============================
echo.
choice /C:QT /N /M "[T] Tiếp Tục Xoá [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls

del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
rmdir /q /s %temp%
mkdir %temp%
rmdir /q /s C:\Windows\Temp
mkdir C:\Windows\Temp
del /s /f /q C:\WINDOWS\Prefetch
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
del c:\ProgramData\BlueStacks\Logs
del c:\ProgramData\BlueStacks\Engine\Android\Logs
cls 
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")

DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.* 

DEL /F /S /Q C:\WINDOWS\Temp\*.* 
DEL /F /S /Q C:\WINDOWS\Prefetch\*.* 
DEL "%WINDIR%\Tempor~1\*.*" /F /S /Q 
RD /S /Q "%HOMEPATH%\Config~1\Temp" 
MD "%HOMEPATH%\Config~1\Temp" 
RD /S /Q C:\WINDOWS\Temp\ 
MD C:\WINDOWS\Temp 
RD /S /Q C:\WINDOWS\Prefetch\ 
MD C:\WINDOWS\Prefetch
@echo off
cd/
@echo
del *.log /a /s /q /f
pause
GOTO MENU

:======================================================================================================================================================
:K2
chcp 65001
cls
mode con cols=98 lines=30

echo                ======================================================
echo                               Tối Ưu Hoá Registry
echo              ==========================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls
		
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 1000 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 8 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_SZ /d 1000 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLowDiskSpaceChecks /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v LinkResolveIgnoreLinkInfo /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoResolveSearch /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoResolveTrack /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoInternetOpenWith /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 2000 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /V "DisableSR" /T REG_DWORD /D 1 /F
sc config srservice start= disabled
sc stop srservice
chcp 65001
cls
GOTO:ROLO
:ROLO
echo.
echo Nhấn Phím Bất Kì Để Tiếp Tục...
pause >nul
goto MENU

:======================================================================================================================================================
:K3
chcp 65001
cls
mode con cols=98 lines=30
echo                     =====================================================
echo                                    Tăng Tốc WIFI
echo                   =========================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls
		
@echo off
ipconfig /flushdns
netsh int tcp set global autotuninglevel=Disable
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
pause
echo.
echo.
echo Đã Xong
echo.
goto MENU

:======================================================================================================================================================
:K4
chcp 65001
cls
mode con cols=98 lines=30
echo                    ===================================================
echo                                   .Tối Ưu Hoá Services. 
echo                  ========================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay lại : "
        if %errorlevel%==1 Goto MENU
		cls
		
@echo off
wmic service where name='SysMain'  call ChangeStartmode Disabled
sc stop "SysMain"
wmic service where name='wisvc'  call ChangeStartmode Disabled
sc stop "wisvc"
wmic service where name='icssvc'  call ChangeStartmode Disabled
sc stop "icssvc"
wmic service where name='Fax'  call ChangeStartmode Disabled
sc stop "Fax"
wmic service where name='SessionEnv'  call ChangeStartmode Disabled
sc stop "SessionEnv"
wmic service where name='TermService'  call ChangeStartmode Disabled
sc stop "TermService"
wmic service where name='bthserv'  call ChangeStartmode Disabled
sc stop "bthserv"
wmic service where name='TabletInputService'  call ChangeStartmode Disabled
sc stop "TabletInputService"
wmic service where name='DiagTrack'  call ChangeStartmode Disabled
sc stop "DiagTrack"
wmic service where name='DPS'  call ChangeStartmode Disabled
sc stop "DPS"
wmic service where name='DoSvc'  call ChangeStartmode Disabled
sc stop "DoSvc"
wmic service where name='WpnService'  call ChangeStartmode Disabled
sc stop "WpnService"
wmic service where name='TrkWks'  call ChangeStartmode Disabled
sc stop "TrkWks"
wmic service where name='diagnosticshub.standardcollector.service'  call ChangeStartmode Disabled
sc stop "diagnosticshub.standardcollector.service"
wmic service where name='RemoteRegistry'  call ChangeStartmode Disabled
sc stop "RemoteRegistry"
wmic service where name='WSearch'  call ChangeStartmode Disabled
sc stop "WSearch"

chcp 65001
cls
echo.
echo        Đã Xong, Nhấn Phím Bất Kì Để Tiếp Tục...
echo.
pause
goto MENU

:======================================================================================================================================================
:K5
chcp 65001
cls
mode con cols=98 lines=30
echo                     ===========================================
echo                                   Tăng Tốc Internet
echo                    ==============================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục Tối Ưu [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls
		
@echo off
@echo
ipconfig /flushdns
ipconfig /release
ipconfig /renew
@echo
pause
echo.              
echo                      Đã Xong Nhấn Phím Bất Kì Để Tiếp Tục....
echo. 
echo.                Nhớ Khởi Động Lại Máy Sau Khi Chạy Lệnh Tối Ưu Này Nhé.
echo.
pause 
goto MENU

:===========================================================================================
:K6
chcp 65001
cls
mode con cols=98 lines=30
echo                   =====================================================
echo                                    Bắt Đầu Cài Ram Ảo
echo                      ===============================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay Lại : "
        if %errorlevel%==1 Goto:MainMenu
		cls

wmic pagefileset where name="C:\pagefile.sys" set InitialSize=5096,MaximumSize=5096
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 4096 4096" /f
echo. 
echo.                     Đã Xong, Nhấn Phím Bất Kì Để Tiếp Tục...
pause
goto MENU

:===========================================================================================
:K7
chcp 65001
cls
mode con cols=98 lines=30
echo                  ====================================================
echo                                   Tối Ưu Hoá RAM 
echo               ==========================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls

for /f %%a in ('wmic cpu get L2CacheSize ^| findstr /r "[0-9][0-9]"') do (
    set /a l2c=%%a
    set /a sum1=%%a
) 
for /f %%a in ('wmic cpu get L3CacheSize ^| findstr /r "[0-9][0-9]"') do (
    set /a l3c=%%a
    set /a sum2=%%a
) 
reg add "hklm\system\controlset001\control\session manager\memory management" /v "secondleveldatacache" /t reg_dword /d "%sum1%" /f
reg add "hklm\system\controlset001\control\session manager\memory management" /v "thirdleveldatacache" /t reg_dword /d "%sum2%" /f
reg add "hklm\system\controlset001\control\session manager\memory management" /v "pagingfiles" /t reg_multi_sz /d "c:\pagefile.sys 0 0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "contigfileallocsize" /t reg_dword /d "1536" /f
reg add "hklm\system\controlset001\control\filesystem" /v "disabledeletenotification" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "dontverifyrandomdrivers" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "filenamecache" /t reg_dword /d "1024" /f
reg add "hklm\system\controlset001\control\filesystem" /v "longpathsenabled" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsallowextendedcharacter8dot3rename" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsbugcheckoncorrupt" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisable8dot3namecreation" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisablecompression" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsdisableencryption" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsencryptpagingfile" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsmemoryusage" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "ntfsmftzonereservation" /t reg_dword /d "4" /f
reg add "hklm\system\controlset001\control\filesystem" /v "pathcache" /t reg_dword /d "128" /f
reg add "hklm\system\controlset001\control\filesystem" /v "refsdisablelastaccessupdate" /t reg_dword /d "1" /f
reg add "hklm\system\controlset001\control\filesystem" /v "udfssoftwaredefectmanagement" /t reg_dword /d "0" /f
reg add "hklm\system\controlset001\control\filesystem" /v "win31filesystem" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "contigfileallocsize" /t reg_dword /d "1536" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "disabledeletenotification" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "dontverifyrandomdrivers" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "filenamecache" /t reg_dword /d "1024" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "longpathsenabled" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsallowextendedcharacter8dot3rename" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsbugcheckoncorrupt" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisable8dot3namecreation" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisablecompression" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsdisableencryption" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsencryptpagingfile" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsmemoryusage" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "ntfsmftzonereservation" /t reg_dword /d "3" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "pathcache" /t reg_dword /d "128" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "refsdisablelastaccessupdate" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "udfssoftwaredefectmanagement" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\filesystem" /v "win31filesystem" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\executive" /v "additionalcriticalworkerthreads" /t reg_dword /d "00000016" /f
reg add "hklm\system\currentcontrolset\control\session manager\executive" /v "additionaldelayedworkerthreads" /t reg_dword /d "00000016" /f
reg add "hklm\system\currentcontrolset\control\session manager\i/o system" /v "countoperations" /t reg_dword /d "00000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "clearpagefileatshutdown" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "featuresettingsoverride" reg_dword /d "00000003" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "featuresettingsoverridemask" reg_dword /d "00000003" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "iopagelocklimit" /t reg_dword /d "08000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "largesystemcache" /t reg_dword /d "00000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "systempages" /t reg_dword /d "4294967295" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "disablepagingexecutive" /t reg_dword /d "1" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "iopagelocklimit" /t reg_dword /d "16710656" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management" /v "largesystemcache" /t reg_dword /d "00000000" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management\prefetchparameters" /v "enableboottrace" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management\prefetchparameters" /v "enableprefetcher" /t reg_dword /d "0" /f
reg add "hklm\system\currentcontrolset\control\session manager\memory management\prefetchparameters" /v "enablesuperfetch" /t reg_dword /d "0" /f
for /f "tokens=2 delims==" %%a in ('wmic os get TotalVisibleMemorySize /format:value') do set mem=%%a
set /a ram=%mem% + 1024000
reg add "hklm\system\currentcontrolset\control" /v "svchostsplitthresholdinkb" /t reg_dword /d "%ram%" /f
cls
echo.
echo.              Đã Xong, Nhấn Phím Bất Kì Để Tiếp Tục...
pause
goto MENU

:===========================================================================================
:K8
chcp 65001
cls
mode con cols=98 lines=30
echo     ==================================================================================
echo                                 Tắt WINDOWS DENFENDER 
echo     ==================================================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay lại : "
        if %errorlevel%==1 Goto MENU
		cls
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
chcp 65001
cls
echo.
echo Nhấn Phím Bất Kì Để tiếp tục...
pause >nul
goto MENU

:===========================================================================================
:K9
chcp 65001
cls
mode con cols=98 lines=30
echo     ==================================================================================
echo                                Tắt Hiệu Ứng Hình Ảnh 
echo     ==================================================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay lại : "
        if %errorlevel%==1 Goto:MENU
		cls

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
sc stop Themes
sc config Themes start= disabled
chcp 65001
cls
echo.
echo Nhấn Phím Bất Kì Để tiếp tục....
pause >nul
goto MENU

:===========================================================================================
:K10
chcp 65001
cls
mode con cols=98 lines=30
echo              ========================================================
echo.                            Tool Tối Ưu Của KhanhNguyen 
echo              ========================================================
echo.
choice /C:QT /N /M "[T] Bắt Đầu [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
chcp 65001
cls

SET /P menu="Bạn Đang Sử Dụng Windows Nào? ( 7 / 8 / 8.1 / 10 ):"
IF %menu%==7 GOTO WIN7
IF %menu%==8 GOTO WIN8
IF %menu%==8.1 GOTO WIN8.1
IF %menu%==10 GOTO WIN10

:WIN7
chcp 65001
cls
echo.
echo OK, Bắt Đầu Nào (Windows 7)
echo Nhấn Phím Bất Kì Để Tiếp Tục
pause
chcp 65001
cls
echo.

SET /P AREYOUSURE=Bạn có muốn tắt các services và phần mềm khởi động cùng windows? (Y or N):
IF %AREYOUSURE%==N GOTO WIN7-0
IF %AREYOUSURE%==n GOTO WIN7-0
IF %AREYOUSURE%==Y GOTO RUN-WIN7
IF %AREYOUSURE%==y GOTO RUN-WIN7

:RUN-WIN7
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /F
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /F
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /F
cd \ProgramData\Microsoft\Windows\Start Menu\Programs
rmdir /Q /S Startup
cd %windir%\system32
chcp 65001
cls
echo     # Hướng Dẫn
echo.
echo.    Sang tab "Services", tick vào "Hide all Microsoft Services" và chọn "Disable all"
echo.
echo.    Sau đó nhấn "OK" và nhấn "Exit Without Restart"
echo.
msconfig
GOTO WIN7-0

:WIN7-0
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Các Services Không Cần Thiết? (Y or N):
IF %AREYOUSURE%==N GOTO SERVICES-WIN7-ENABLED
IF %AREYOUSURE%==n GOTO SERVICES-WIN7-ENABLED
IF %AREYOUSURE%==Y GOTO SERVICES-WIN7
IF %AREYOUSURE%==y GOTO SERVICES-WIN7

:SERVICES-WIN7
sc config wuauserv start= disabled
sc config MpsSvc start= disabled
sc config SysMain start= disabled
sc config ShellHWDetection start= disabled
sc config iphlpsvc start= disabled
sc config Fax start= disabled
sc config wmiApSrv start= disabled
sc config wcncsvc start= disabled
sc config vds start= disabled
sc config CscService start= disabled
sc config WinDefend start= disabled
sc config WSearch start= disabled
sc config BITS start= disabled
sc config WdNisSvc start= disabled
sc config AeLookupSvc start= disabled
sc config WPDBusEnum start= disabled
sc config LanmanServer start= disabled
sc config lmhosts start= disabled
sc config PcaSvc start= disabled
sc config WerSvc start= disabled
sc config wscsvc start= disabled
GOTO WIN7-4

:SERVICES-WIN7-ENABLED
sc config wuauserv start= auto
sc config MpsSvc start= auto
sc config SysMain start= auto
sc config ShellHWDetection start= auto
sc config iphlpsvc start= auto
sc config Fax start= auto
sc config wmiApSrv start= auto
sc config wcncsvc start= auto
sc config vds start= auto
sc config CscService start= auto
sc config WinDefend start= auto
sc config WSearch start= auto
sc config BITS start= auto
sc config WdNisSvc start= auto
sc config AeLookupSvc start= auto
sc config WPDBusEnum start= auto
sc config LanmanServer start= auto
sc config lmhosts start= auto
sc config PcaSvc start= auto
sc config WerSvc start= auto
sc config wscsvc start= auto
GOTO WIN7-4

:WIN7-4
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt UAC? (Y or N):
IF %AREYOUSURE%==N GOTO UAC-WIN7-ENABLED
IF %AREYOUSURE%==n GOTO UAC-WIN7-ENABLED
IF %AREYOUSURE%==Y GOTO UAC-WIN7
IF %AREYOUSURE%==y GOTO UAC-WIN7

:WIN7-5
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Hiệu Ứng Windows7 ? (Y or N):
IF %AREYOUSURE%==N GOTO VisualWIN7-ENABLED
IF %AREYOUSURE%==n GOTO VisualWIN7-ENABLED
IF %AREYOUSURE%==Y GOTO VisualWIN7
IF %AREYOUSURE%==y GOTO VisualWIN7

:VisualWIN7
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
GOTO WIN7-6

:VisualWIN7-ENABLED
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 1 /f
GOTO WIN7-6

:UAC-WIN7
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
GOTO WIN7-5

:UAC-WIN7-ENABLED
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
GOTO WIN7-5

:WIN7-6
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt System Restore? (Y or N):
IF %AREYOUSURE%==N GOTO SysResWIN7-ENABLED
IF %AREYOUSURE%==n GOTO SysResWIN7-ENABLED
IF %AREYOUSURE%==Y GOTO SysResWIN7
IF %AREYOUSURE%==y GOTO SysResWIN7

:SysResWIN7
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /V "DisableSR" /T REG_DWORD /D 1 /F
sc config srservice start= disabled
GOTO WIN7-7

:SysResWIN7-ENABLED
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /V "DisableSR" /T REG_DWORD /D 0 /F
sc config srservice start= auto
GOTO WIN7-7

:WIN7-7
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Chế Độ Ngủ Đông Hibernate khong? (Y or N):
IF %AREYOUSURE%==N GOTO Hibernate-WIN7-ENABLED
IF %AREYOUSURE%==n GOTO Hibernate-WIN7-ENABLED
IF %AREYOUSURE%==Y GOTO Hibernate-WIN7
IF %AREYOUSURE%==y GOTO Hibernate-WIN7

:Hibernate-WIN7
powercfg -h off
GOTO Hibernate-WIN7-ENABLED

:Hibernate-WIN7-ENABLED
powercfg -h on
GOTO WIN7-11

:WIN7-10
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt WMI Reverse Performance? (Y or N):
IF %AREYOUSURE%==N GOTO WMI-WIN7-ENABLED
IF %AREYOUSURE%==n GOTO WMI-WIN7-ENABLED
IF %AREYOUSURE%==Y GOTO WMI-WIN7
IF %AREYOUSURE%==y GOTO WMI-WIN7 

:WMI-WIN7
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
taskkill /f /im WmiPrvSE.exe
rename WmiPrvSE.exe WmiPrvSE0.exe
GOTO WIN7-11

:WMI-WIN7-ENABLED
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
rename WmiPrvSE0.exe WmiPrvSE.exe
GOTO WIN7-11

:WIN7-11
cls
echo.
SET /P AREYOUSURE=Bạn Muốn Cài App Tối Ưu RAM? (Y or N):
IF %AREYOUSURE%==N GOTO WIN7-12
IF %AREYOUSURE%==n GOTO WIN7-12
IF %AREYOUSURE%==Y GOTO Windemo
IF %AREYOUSURE%==y GOTO Windemo

:Windemo
cls
cd %windir%
start Windemo.exe
cls
echo.
GOTO WIN7-12

:WIN7-12
chcp 65001
cls
echo.
echo Cảm Ơn Vì Đã Sử dụng :3
echo.
echo Khởi Động Lại Để Có Hiệu Lực :3
pause
goto MENU

:WIN10
chcp 65001
cls
echo.
echo OK, bat dau nao (Windows 10)
echo.
pause
cls
echo.

SET /P AREYOUSURE=Bạn Muốn Tắt Các Phần Mềm Và Services Khởi động cùng windows? (Y or N):
IF %AREYOUSURE%==N GOTO SERVICES-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO SERVICES-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO RUN-WIN10
IF %AREYOUSURE%==y GOTO RUN-WIN10

:SERVICES-WIN10
sc config wuauserv start= disabled
sc config MpsSvc start= disabled
sc config SysMain start= disabled
sc config ShellHWDetection start= disabled
sc config iphlpsvc start= disabled
sc config Fax start= disabled
sc config wmiApSrv start= disabled
sc config wcncsvc start= disabled
sc config vds start= disabled
sc config CscService start= disabled
sc config WinDefend start= disabled
sc config BITS start= disabled
sc config WdNisSvc start= disabled
sc config AeLookupSvc start= disabled
sc config WPDBusEnum start= disabled
sc config LanmanServer start= disabled
sc config lmhosts start= disabled
sc config PcaSvc start= disabled
sc config WerSvc start= disabled
sc config wscsvc start= disabled
sc config DiagTrack start= disabled
sc config diagnosticshub.standardcollector.service start= disabled
sc config dmwappushservice start= disabled
sc config RemoteRegistry start= disabled
sc config TrkWks start= disabled
sc config WMPNetworkSvc start= disabled
sc config WSearch start= disabled
GOTO WIN10-1

:SERVICES-WIN10-ENABLED
sc config wuauserv start= auto
sc config MpsSvc start= auto
sc config SysMain start= auto
sc config ShellHWDetection start= auto
sc config iphlpsvc start= auto
sc config Fax start= auto
sc config wmiApSrv start= auto
sc config wcncsvc start= auto
sc config vds start= auto
sc config CscService start= auto
sc config WinDefend start= auto
sc config WSearch start= auto
sc config BITS start= auto
sc config WdNisSvc start= auto
sc config AeLookupSvc start= auto
sc config WPDBusEnum start= auto
sc config LanmanServer start= auto
sc config lmhosts start= auto
sc config PcaSvc start= auto
sc config WerSvc start= auto
sc config wscsvc start= auto
sc config DiagTrack start= auto
sc config diagnosticshub.standardcollector.service start= auto
sc config dmwappushservice start= auto
sc config RemoteRegistry start= auto
sc config TrkWks start= auto
sc config WMPNetworkSvc start= auto
sc config WSearch start= auto
GOTO WIN10-1

:RUN-WIN10
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /F
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /F
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /F
cd \ProgramData\Microsoft\Windows\Start Menu\Programs
rmdir /Q /S Startup
cls
echo.
echo Sang tab "Services", tick vao "Hide all Microsoft Services" va chon "Disable all"
echo.
echo Sau do nhan "OK" va nhan "Exit Without Restart"
msconfig
GOTO WIN10-2

:WIN10-2
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Giao Diện Windows Không? (Y or N):
IF %AREYOUSURE%==N GOTO Themes-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO Themes-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO Themes-WIN10
IF %AREYOUSURE%==y GOTO Themes-WIN10

:Themes-WIN10
sc stop Themes
sc config Themes start= disabled
GOTO WIN10-4

:Themes-WIN10-ENABLED
sc config Themes start= auto
sc start Themes
GOTO WIN10-4

:WIN10-4
chcp 65001
cls
echo.
SET /P AREYOUSURE=chcp 65001UAC? (Y or N):
IF %AREYOUSURE%==N GOTO UAC-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO UAC-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO UAC-WIN10
IF %AREYOUSURE%==y GOTO UAC-WIN10

:WIN10-5
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Hiệu Ứng Của Windows? (Y or N):
IF %AREYOUSURE%==N GOTO VisualWIN10-ENABLED
IF %AREYOUSURE%==n GOTO VisualWIN10-ENABLED
IF %AREYOUSURE%==Y GOTO VisualWIN10
IF %AREYOUSURE%==y GOTO VisualWIN10

:VisualWIN10
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
GOTO WIN10-6

:VisualWIN10-ENABLED
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 1 /f
GOTO WIN10-6

:UAC-WIN10
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
GOTO WIN10-5

:UAC-WIN10-ENABLED
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
GOTO WIN10-5

:WIN10-6
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt System Restore? (Y or N):
IF %AREYOUSURE%==N GOTO SysResWIN10-ENABLED
IF %AREYOUSURE%==n GOTO SysResWIN10-ENABLED
IF %AREYOUSURE%==Y GOTO SysResWIN10
IF %AREYOUSURE%==y GOTO SysResWIN10

:SysResWIN10
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /V "DisableSR" /T REG_DWORD /D 1 /F
sc config srservice start= disabled
sc stop srservice
GOTO WIN10-7

:SysResWIN10-ENABLED
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /V "DisableSR" /T REG_DWORD /D 0 /F
sc config srservice start= auto
sc start srservice
GOTO WIN10-7

:WIN10-7
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Chế Độ Ngủ Đông Không? (Y or N):
IF %AREYOUSURE%==N GOTO Hibernate-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO Hibernate-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO Hibernate-WIN10
IF %AREYOUSURE%==y GOTO Hibernate-WIN10

:Hibernate-WIN10
powercfg -h off
GOTO WIN10-8

:Hibernate-WIN10-ENABLED
powercfg -h on
GOTO WIN10-8

:WIN10-8
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Bật Chế Độ Hiệu Suất Cao? (Y or N):
IF %AREYOUSURE%==N GOTO WIN10-9
IF %AREYOUSURE%==n GOTO WIN10-9
IF %AREYOUSURE%==Y GOTO PERFORMANCE-WIN10
IF %AREYOUSURE%==y GOTO PERFORMANCE-WIN10

:PERFORMANCE-WIN10
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61
GOTO WIN10-9

:WIN10-9
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có muốn tắt WMI Reverse Performance? (Y or N):
IF %AREYOUSURE%==N GOTO WMI-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO WMI-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO WMI-WIN10
IF %AREYOUSURE%==y GOTO WMI-WIN10

:WMI-WIN10
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
taskkill /f /im WmiPrvSE.exe
rename WmiPrvSE.exe WmiPrvSE0.exe
GOTO WIN10-11

:WMI-WIN10-ENABLED
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
rename WmiPrvSE0.exe WmiPrvSE.exe
GOTO WIN10-11

:WIN10-11
chcp 65001
cls
echo.
SET /P AREYOUSURE=Bạn Có muốn tắt BackgroundApp Không? (Y or N):
IF %AREYOUSURE%==N GOTO WIN10-12
IF %AREYOUSURE%==n GOTO WIN10-12
IF %AREYOUSURE%==Y GOTO Background-WIN10
IF %AREYOUSURE%==y GOTO Background-WIN10

:Background-WIN10
chcp 65001
cls
echo.
echo Tắt Hết Tất Cả App Nhaa !!
ms-settings:privacy-backgroundapps
GOTO WIN10-12

:WIN10-12
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Tắt Realtime Protection Không? (Y or N):
IF %AREYOUSURE%==N GOTO Real-WIN10-ENABLED
IF %AREYOUSURE%==n GOTO Real-WIN10-ENABLED
IF %AREYOUSURE%==Y GOTO Real-WIN10
IF %AREYOUSURE%==y GOTO Real-WIN10

:Real-WIN10
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
echo.
echo Da Xong
echo
pause
goto MENU

:Real-WIN10-ENABLED
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 0 /f
echo.
echo        ======================
echo                Đã Xong
echo        ======================
echo.
pause
goto MENU

:WIN8
chcp 65001
cls
echo.
echo OK, Bắt Đầu Nào (Windows 8)
echo.
pause
chcp 65001
cls
echo.

SET /P AREYOUSURE=Bạn Có Muốn Tắt Các Services Và Phần Mềm Khởi Động Cùng Windows? (Y or N):
IF %AREYOUSURE%==N GOTO WIN10-0
IF %AREYOUSURE%==n GOTO WIN10-0
IF %AREYOUSURE%==Y GOTO RUN-WIN10
IF %AREYOUSURE%==y GOTO RUN-WIN10

:WIN8.1
chcp 65001
cls
echo.
echo OK, Bắt Đầu Nào (Windows 8.1)
echo.
pause
cls
echo.

SET /P AREYOUSURE=Bạn Có Muốn Tắt Các Services Và Phần Mềm Khởi Động Cùng Windows? (Y or N):
IF %AREYOUSURE%==N GOTO WIN10-0
IF %AREYOUSURE%==n GOTO WIN10-0
IF %AREYOUSURE%==Y GOTO RUN-WIN10
IF %AREYOUSURE%==y GOTO RUN-WIN10
pause
goto MENU

:===========================================================================================
:K11
chcp 65001
cls
mode con cols=98 lines=30
echo     ==================================================================================
echo                                  Tắt WINDOWS UPDATE 
echo     ==================================================================================
echo.
choice /C:QT /N /M "[T] Tiếp Tục [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls

taskkill /F /FI "IMAGENAME eq SystemSettings.exe"
@echo
net stop wuauserv
net stop UsoSvc
@echo
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
gpupdate /force
@echo
echo Deleting Windows Update Files
rd s q "C:\Windows\SoftwareDistribution"
md "C:\Windows\SoftwareDistribution"
@echo
net start wuauserv
net start UsoSvc
chcp 65001
cls
echo.
echo Nhấn Phím Bất Kì Để TIếp Tục...
pause >nul
goto MENU

:===========================================================================================
:K12
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -h off
chcp 65001
cls
echo.
echo Nhấn Phím Bất Kì Để TIếp Tục...
pause >nul
goto MENU

:===================================================================================================
:K13
choice /C:QT /N /M "[T] Tiếp Tục Xoá [Q] Quay Lại : "
        if %errorlevel%==1 Goto MENU
		cls
chcp 65001
cls
bcdedit /set IncreaseUserVa 4096
bcdedit /deletevalue useplatformclock 
cls
echo.
echo   Đã Xong, Vui Lòng Nhấn Nút Bất Kì Để Quay lại Sảnh...
echo.
pause >nul
GOTO MENU

:==============================================================================================
:K14a
cls
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_DWORD /d "Fasle" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "00000006" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "heduling Category" /t REG_DWORD /d "High" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_DWORD /d "High" /f
Pause >nul
GOTO MENU

:K14b
cls
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_DWORD /d "Fasle" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "00000002" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "heduling Category" /t REG_DWORD /d "Medium" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_DWORD /d "Normal" /f
Pause >nul
GOTO MENU

:==============================================================================================
:K15a
cls
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
Pause >nul
GOTO MENU

:K15b
cls
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 0 /f
Pause >nul
GOTO MENU

:==============================================================================================
:K16a
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "0" /f
Pause >nul
GOTO MENU

:K16b
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
Pause >nul
GOTO MENU

:K17
chcp 65001
cls
cd %windir%
start Windemo.exe
cls
echo.
SET /P AREYOUSURE=Bạn Có Muốn Xem Hướng Dẫn Sử Dụng Phần Mềm Tối Ưu Ram / MemReduct? (Y or N):
IF %AREYOUSURE%==N GOTO MENU
IF %AREYOUSURE%==n GOTO MENU
IF %AREYOUSURE%==Y GOTO WINDEMO-0
IF %AREYOUSURE%==y GOTO WINDEMO-0

:WINDEMO-0
cls
cd %windir%
start Windemo.txt
cls
GOTO MENU

:==============================================================================================

:Exit
chcp 65001
cls
echo.
echo.
echo.
echo.                ============================================================
echo.                                                                   
echo.                            Cảm Ơn Vì Đã Sử Dụng Tool Fix Lag
echo.                               Thanks You Very Much, Bro !
echo.                                                                  
echo.                ============================================================
echo.
pause
color 9
chcp 65001
cls
SET /P AREYOUSURE=Bạn Có Muốn Tối Ưu Hoá Máy Tính Nhiều Hơn Không?(Y or N):
echo.                      
echo.                 [Y] Có
echo.                 [N] Không Tôi Muốn Thoát

IF %AREYOUSURE%==Y GOTO TiepTuc
IF %AREYOUSURE%==y GOTO TiepTuc
IF %AREYOUSURE%==N GOTO Comuonthoat
IF %AREYOUSURE%==n GOTO Comuonthoat

:Comuonthoat
pause > nul
exit


:K18
cls
sc stop DiagTrack
sc stop diagnosticshub.standardcollector.service
sc stop dmwappushservice
sc stop WMPNetworkSvc
sc stop WSearch
sc config DiagTrack start= disabled
sc config diagnosticshub.standardcollector.service start= disabled
sc config dmwappushservice start= disabled
REM sc config RemoteRegistry start= disabled
REM sc config TrkWks start= disabled
sc config WMPNetworkSvc start= disabled
sc config WSearch start= disabled
REM sc config SysMain start= disabled

REM *** SCHEDULED TASKS tweaks ***
REM schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable

REM schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
REM schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
REM schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
REM schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable *** Not sure if should be disabled, maybe related to S.M.A.R.T.
REM schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
REM schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
REM schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
REM The stubborn task Microsoft\Windows\SettingSync\BackgroundUploadTask can be Disabled using a simple bit change. I use a REG file for that (attached to this post).
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
REM schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable


@rem *** Remove Telemetry & Data Collection ***
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f

@REM Settings -> Privacy -> General -> Let apps use my advertising ID...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
REM - SmartScreen Filter for Store Apps: Disable
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0 /f
REM - Let websites provide locally...
reg add "HKCU\Control Panel\International\User Profile" /v HttpAcceptLanguageOptOut /t REG_DWORD /d 1 /f

@REM WiFi Sense: HotSpot Sharing: Disable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d 0 /f
@REM WiFi Sense: Shared HotSpot Auto-Connect: Disable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v value /t REG_DWORD /d 0 /f

cls
chcp 65001
echo.  
echo      Nhấn Phím Bất Kì Để Tiếp Tục...
echo.
pause
Goto MENU

:K19
cls
taskkill /im explorer.exe /f
start explorer.exe
Goto MENU

:K20
cls
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /timeout 0
bcdedit /set nx optout
bcdedit /set bootux disabled
bcdedit /set bootmenupolicy standard
bcdedit /set hypervisorlaunchtype off
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set quietboot yes
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000069 true
bcdedit /set {globalsettings} custom:16000068 true
bcdedit /set linearaddress57 OptOut
bcdedit /set increaseuserva 268435328
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem Yes
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
chcp 65001
cls
echo.       Nhấn Bất Kì Phím Nào Để Tiếp Tục...
pause > nul
Goto MENU

:K21
chcp 65001
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\WindowsInkWorkspace" /v AllowSuggestedAppsInWindowsInkWorkspace /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 1 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"
ipconfig /flushdns
powercfg.exe /hibernate off
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl /v IRQ8Priority /t REG_DWORD /d 1 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f >nul 2>&1
chcp 65001
cls
echo.
echo.
echo   Nhấn Phím Bất Kì Để Tiếp Tục. 
echo   Nếu Bạn Muốn Khôi Phục Chức Năng Này Về Như Ban Đầu Thì Bạn Hãy Chọn Chức Năng 22
echo.   
pause
Goto MENU

:K22
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\WindowsInkWorkspace" /v AllowSuggestedAppsInWindowsInkWorkspace /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "On" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 0 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 1 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl /v IRQ8Priority /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 1 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /enable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /enable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /enable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /enable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /enable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /enable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /enable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /enable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /enable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /enable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /enable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /enable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /enable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /enable
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /enable
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /enable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /enable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /enable
schtasks /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
bcdedit /set useplatformclock yes
bcdedit /set disabledynamictick no
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f >nul 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl /v IRQ8Priority /t REG_DWORD /d 0 /f
chcp 65001
cls
echo.
echo.
echo   Nhấn Phím Bất Kì Để Tiếp Tục... 
echo.   
pause > nul
Goto MENU

:K23
cls
cd %windir%
start install_wim_tweak.exe
chcp 65001
cls
echo.
echo Hãy Bấm Enter Ở Cửa Sổ Mới Và Tiếp Tục Bấm Cả Ở Cửa Sổ Này.
echo.
pause 
echo By WinDemo Lag Fix
cd /d "%~dp0"
echo Đang Gỡ Cài Đặt Edge...
chcp 65001
CLS
install_wim_tweak.exe /o /l
install_wim_tweak.exe /o /c Microsoft-Windows-Internet-Browser-Package /r
install_wim_tweak.exe /h /o /l
echo Microsoft Edge Đã Được Gỡ Cài Đặt. Khởi Động Lại Máy Để Có Hiệu Lực
pause > nul
Goto MENU

:K24
cls
sc delete diagnosticshub.standardcollector.service
sc delete DiagTrack
sc delete dmwappushservice
sc delete WerSvc
sc delete OneSyncSvc
sc delete MessagingService
sc delete wercplsupport
sc delete PcaSvc
sc config wlidsvc start=demand
sc delete wisvc
sc delete RetailDemo
sc delete diagsvc
sc delete shpamsvc 
sc delete TermService
sc delete UmRdpService
sc delete SessionEnv
sc delete TroubleshootingSvc
@pause
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "wscsvc" ^| find /i "wscsvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "OneSyncSvc" ^| find /i "OneSyncSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "MessagingService" ^| find /i "MessagingService"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "PimIndexMaintenanceSvc" ^| find /i "PimIndexMaintenanceSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UserDataSvc" ^| find /i "UserDataSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UnistoreSvc" ^| find /i "UnistoreSvc"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "BcastDVRUserService" ^| find /i "BcastDVRUserService"') do (reg delete %I /f)
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "Sgrmbroker" ^| find /i "Sgrmbroker"') do (reg delete %I /f)
pause > nul
Goto MENU

:K25
chcp 65001
cls
echo.
echo.            ==============================================================================
SET /P AREYOUSURE= Bạn Muốn Kích Hoạt Windows 10 Pro Hay Là Windows 11 Pro ? ( 10 / 11 ) : 
echo.            ==============================================================================
IF %AREYOUSURE%==10 GOTO activew10
IF %AREYOUSURE%==11 GOTO activew11

:activew10
cscript slmgr /ipk "W269N-WFGWX-YVC9B-4J6C9-T83GX"
cscript slmgr /skms kms8.msguides.com
cscript slmgr /ato
Echo.
echo. NHấn Phím Bất Kì Để Về Sảnh...
Echo.
pause > nul
Goto MENU

:activew11
cscript slmgr.vbs /ipk "W269N-WFGWX-YVC9B-4J6C9-T83GX"
cscript slmgr.vbs /skms kms.srv.crsoo.com
cscript slmgr.vbs /ato
Echo.
echo. NHấn Phím Bất Kì Để Về Sảnh...
Echo.
pause > nul
Goto MENU

:K26
chcp 65001
cls
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Boost CPU Performance", 100, 12
cls
echo System Restore Điểm Khôi Phục Đã Được Tạo !!!
echo Bạn Có Muốn Thoát? ( co / khong )
set /p f=
if "%f%" == "co" goto :exit
if "%f%" == "khong" goto :MENU
if "%f%" == "Co" goto :exit
if "%f%" == "Khong" goto :MENU
if "%f%" == "CO" goto :exit
if "%f%" == "KHONG" goto :MENU
cls

:K27
chcp 65001
cls
cd %windir%
start VisualCppRedist_AIO_x86_x64.exe
chcp 65001
cls
echo.
echo Hãy Nhấn Tiếp Tục Và Cài Đặt Bình Thường 
echo    Nhấn Phím Bất Kì Để Quay Lại Sảnh Menu...
echo.
pause > nul
Goto MENU

:K28
cls
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
taskkill /f /im WmiPrvSE.exe
rename WmiPrvSE.exe WmiPrvSE0.exe
echo.
echo    Đã Xong. Không Xảy Ra Lỗi !!!
echo    Nhấn Phím Bất Kì Để Quay Lại Sảnh Menu...
echo.
pause > nul
Goto MENU

:K29
cls
TAKEOWN /F %windir%\system32\wbem
cd %windir%\system32\wbem
rename WmiPrvSE0.exe WmiPrvSE.exe
echo.
echo    Đã Xong. Không Xảy Ra Lỗi !!!
echo    Nhấn Phím Bất Kì Để Quay Lại Sảnh Menu...
echo.
pause > nul
Goto MENU

:K30
cls
echo. 
echo đang kết nối...
echo.
start https://www.facebook.com/noobpie
cls
echo.
echo đã kết nối tới facebook của người làm ra file
echo nhấn phím bất kì để về sảnh..
echo.
pause > nul
Goto MENU

:================================================================================================================

:TiepTuc 
chcp 65001
cls
start https://www.youtube.com/channel/UC_lxhPgmxW7C_SIqtC1xmow
echo.
echo. Trong Link Này Bạn Có Thể Xem Nhiều Video Tối Ưu Hoá Hơn
echo.       Nhấn Bất Kì Phím Nào Để Tiếp Tục...
pause > nul
Goto MENU


:================================================================================================================

:================================================================================================================

:restoremenu
cls
color F1
mode con cols=130 lines=45
title WinDemo Lag Fix
chcp 65001
cls
mode con cols=130 lines=45
for /f "tokens=2 delims==" %%a IN ('"wmic Path Win32_OperatingSystem Get Caption /format:LIST"')do (set NameOS=%%a) >nul 2>&1
for /f "tokens=2 delims==" %%a IN ('"wmic Path Win32_OperatingSystem Get CSDVersion /format:LIST"')do (set SP=%%a) >nul 2>&1
for /f "tokens=2 delims==" %%a in ('wmic path Win32_OperatingSystem get BuildNumber /value') do (set WinBuild=%%a) >nul 2>&1
echo.                               
echo.               Chào Mừng Bạn Đã Đến Với Menu Khôi Phục Sửa Chữa Tự Động / Tạo Bởi WinDemo Lag Fix :3    
echo.                               
echo.              Hầu Như Tất Cả Các Chức Năng Trong Đây Đều Là Khôi Phục Về Mặc Định Nha ( Beta v0.1 )     
echo                 .________________________________________________________________________.
echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [a] Khôi Phục Services               [j] Mở System Restore            ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [b] Bật Windows Defender             [g] Khôi Phục Tối Ưu Registry    ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [c] Bật Windows Update               [h] Khôi Phục Tăng Tốc WIFI      ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [d] Xoá Ram Ảo                       [i] Khôi Phục Gpedit             ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [e] Khôi Phục Tối Ưu GPU             [m] Khôi Phục Hiệu Ứng Windows   ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ [f] Khôi Phục Tối Ưu CPU             [k] Tắt Ultimate Performance     ㅓ
Echo.                ㅏ                                                                       ㅓ
Echo.                ㅏ          [FixLag] Quay Lại Sảnh Menu Tối Ưu Hoá Máy Tính              ㅓ
Echo.                ㅏ_______________________________________________________________________ㅓ
Echo.
Echo. ======================================================================
SET /P AREYOUSURE=.              Bạn Muốn Sử Dụng Chức Năng Nào Bên Trên ? : 
IF %AREYOUSURE%==a GOTO aaa
IF %AREYOUSURE%==A GOTO aaa
IF %AREYOUSURE%==b GOTO bbbb
IF %AREYOUSURE%==B GOTO bbbb
IF %AREYOUSURE%==C GOTO ccc
IF %AREYOUSURE%==c GOTO ccc
IF %AREYOUSURE%==D GOTO ddd
IF %AREYOUSURE%==d GOTO ddd
IF %AREYOUSURE%==E GOTO eee
IF %AREYOUSURE%==e GOTO eee
IF %AREYOUSURE%==F GOTO fff
IF %AREYOUSURE%==f GOTO fff
IF %AREYOUSURE%==j GOTO jjjj
IF %AREYOUSURE%==J GOTO jjjj
IF %AREYOUSURE%==Fixlag GOTO MENU
IF %AREYOUSURE%==fixlag GOTO MENU
IF %AREYOUSURE%==FIXLAG GOTO MENU
IF %AREYOUSURE%==g GOTO ggg
IF %AREYOUSURE%==G GOTO ggg
IF %AREYOUSURE%==H GOTO hhh
IF %AREYOUSURE%==h GOTO hhh
IF %AREYOUSURE%==i GOTO iii
IF %AREYOUSURE%==I GOTO iii
IF %AREYOUSURE%==k GOTO kkk
IF %AREYOUSURE%==K GOTO kkk
IF %AREYOUSURE%==n GOTO nnn
IF %AREYOUSURE%==N GOTO nnn
IF %AREYOUSURE%==m GOTO mmm
IF %AREYOUSURE%==M GOTO mmm

:nnn
cls
chcp 65001
cls
echo.        ._______________________________________________________.
echo.        l Hiện Chưa Có Lệnh Khôi Phục Tối Ưu RAM.               l
echo.        l Làm Phiền Bạn Sử Dụng System Restore Để Khôi Phục Nhé l 
echo.        l_______________________________________________________l
echo.
echo. Nhấn Phím Bất Kì Để Tiếp Tục...
pause > nul
goto restoremenu

:mmm
chcp 65001
cls
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
sc stop Themes
sc config Themes start= enabled
chcp 65001
cls
echo.
echo Nhấn Phím Bất Kì Để tiếp tục....
pause >nul
goto restoremenu

:kkk
powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -h off
chcp 65001
cls
echo.
echo.    Đã Thành Công Hehe 
echo.
echo.       Nhấn Phím Bất Kì Để TIếp Tục...
pause > nul
goto restoremenu


:iii
cls
bcdedit /set useplatformclock yes
bcdedit /set disabledynamictick no
bcdedit /set useplatformtick yes
bcdedit /timeout Default
bcdedit /set nx optout
bcdedit /set bootux Default
bcdedit /set bootmenupolicy Default
bcdedit /set hypervisorlaunchtype Default
bcdedit /set tpmbootentropy Default
bcdedit /set quietboot Default
bcdedit /set {globalsettings} custom:16000067 true
bcdedit /set {globalsettings} custom:16000069 true
bcdedit /set {globalsettings} custom:16000068 true
bcdedit /set linearaddress57 OptOut
bcdedit /set increaseuserva 268435328
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem Default
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext Default
bcdedit /set vsmlaunchtype Default
bcdedit /set vm Default
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination Default
bcdedit /set usefirmwarepcisettings Default
chcp 65001
cls
echo.      
echo.    Đã Khôi Phục Bcdedit Thành Công :3
echo. 
echo.        Nhấn Phím Bất Kì Để Tiếp Tục....
echo.    
pause > nul
Goto restoremenu   

:hhh
cls
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
cls
echo.      
echo.    Đã Khôi Phục Wifi Thành Công :3
echo. 
echo.        Nhấn Phím Bất Kì Để Tiếp Tục....
echo.    
pause > nul
Goto restoremenu   


:ggg
cls
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d - /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d - /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 400 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d - /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_SZ /d - /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 400 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 400 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLowDiskSpaceChecks /t REG_DWORD /d - /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v LinkResolveIgnoreLinkInfo /t REG_DWORD /d - /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoResolveSearch /t REG_DWORD /d - /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoResolveTrack /t REG_DWORD /d - /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoInternetOpenWith /t REG_DWORD /d - /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 5000 /f
chcp 65001
cls
echo.      
echo.    Đã Khôi Phục Reg Thành Công :3
echo. 
echo.        Nhấn Phím Bất Kì Để Tiếp Tục....
echo.    
pause > nul
Goto restoremenu   

:xxx
chcp 65001
cls
cd %windir%
start dxwebsetup.exe
cls
echo.
echo. Hãy Cài Đặt Bình Thường Và Bỏ Tick Ô Bing Bar Và Tiếp Tục Cài Đặt
echo. Nhấn Phím Bất Kì Để Tiếp Tục...
echo.
pause > nul
Goto Menu

:jjjj
chcp 65001
cls
rstrui.exe
cls
echo.
echo.      System Restore Đã Mở.
echo.    Nếu Có Báo Lỗi !!! Thì Do Máy Bạn Đã Tắt System Restore Hoặc Đã Xoá Bằng Windows Lite
echo. 
echo.        Nhấn Phím Bất Kì Để Tiếp Tục....
echo.       
pause > nul
Goto restoremenu

:sss
chcp 65001
cls
cd %windir%
start Huongdansudung.txt
cls
echo. 
echo. Hãy ĐỌc Hướng Dẫn Sử Dụng Cho Windows 7 đến 11
echo
echo.   Muốn Quay Lại Menu Nhấn phím Bất Kì...
echo.
pause > nul
Goto restoremenu



:fff
cls
sc config DiagTrack start= auto
sc config diagnosticshub.standardcollector.service start= auto
sc config dmwappushservice start= auto
REM sc config RemoteRegistry start= auto
REM sc config TrkWks start= auto
sc config WMPNetworkSvc start= auto
sc config WSearch start= auto
REM sc config SysMain start= auto

REM *** SCHEDULED TASKS tweaks ***
REM schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /enable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /enable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /enable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /enable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /enable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /enable
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /enable

REM schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /enable
REM schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /enable
REM schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
REM schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /enable *** Not sure if should be disabled, maybe related to S.M.A.R.T.
REM schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /enable
REM schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /enable
REM schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /enable
REM schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /enable
REM The stubborn task Microsoft\Windows\SettingSync\BackgroundUploadTask can be Disabled using a simple bit change. I use a REG file for that (attached to this post).
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /enable
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /enable
REM schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /enable
REM schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /enable


@rem *** Remove Telemetry & Data Collection ***
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f

@REM Settings -> Privacy -> General -> Let apps use my advertising ID...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 1 /f
REM - SmartScreen Filter for Store Apps: Disable
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 1 /f
REM - Let websites provide locally...
reg add "HKCU\Control Panel\International\User Profile" /v HttpAcceptLanguageOptOut /t REG_DWORD /d 0 /f

@REM WiFi Sense: HotSpot Sharing: Enable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d 1 /f
@REM WiFi Sense: Shared HotSpot Auto-Connect: Enable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v value /t REG_DWORD /d 1 /f

cls
chcp 65001
cls
echo.  
echo     Đã Khôi Phục Thành Công, Nhấn Phím Bất Kì Để Tiếp Tục...
echo.
pause
Goto restoremenu


:eee
chcp 65001
cls
bcdedit /set IncreaseUserVa 2048
cls
echo.
echo Đã Xong. Nhấn Bất Kì Phím Nào Để Tiếp Tục Nhé...
echo.
pause > nul
Goto restoremenu

:ddd
chcp 65001
cls
wmic pagefileset where name="C:\pagefile.sys" set InitialSize=0,MaximumSize=0
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 0 0" /f
cls
echo.
echo Đã Xoá Ram Ảo. Khởi Động Lại Để Có Hiệu Lực Nhé...
echo.
pause > nul
Goto restoremenu



:bbbb
chcp 65001
cls
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
cls
echo.
echo.           Nhấn Bất Kì Phím Nào Để Tiếp Tục...
echo.       
pause > nul
Goto restoremenu


:ccc
chcp 65001
cls
sc config wuauserv start= enabled
cls
echo.
echo.           Nhấn Bất Kì Phím Nào Để Tiếp Tục...
echo.       
pause > nul
Goto restoremenu



:aaa
chcp 65001
cls
sc config MpsSvc start= auto
sc config SysMain start= auto
sc config ShellHWDetection start= auto
sc config iphlpsvc start= auto
sc config Fax start= auto
sc config wmiApSrv start= auto
sc config wcncsvc start= auto
sc config vds start= auto
sc config CscService start= auto
sc config WinDefend start= auto
sc config WSearch start= auto
sc config BITS start= auto
sc config WdNisSvc start= auto
sc config AeLookupSvc start= auto
sc config WPDBusEnum start= auto
sc config LanmanServer start= auto
sc config lmhosts start= auto
sc config PcaSvc start= auto
sc config WerSvc start= auto
sc config wscsvc start= auto
sc config wuauserv start= auto
sc config MpsSvc start= auto
sc config SysMain start= auto
sc config ShellHWDetection start= auto
sc config iphlpsvc start= auto
sc config Fax start= auto
sc config wmiApSrv start= auto
sc config wcncsvc start= auto
sc config vds start= auto
sc config CscService start= auto
sc config WinDefend start= auto
sc config WSearch start= auto
sc config BITS start= auto
sc config WdNisSvc start= auto
sc config AeLookupSvc start= auto
sc config WPDBusEnum start= auto
sc config LanmanServer start= auto
sc config lmhosts start= auto
sc config PcaSvc start= auto
sc config WerSvc start= auto
sc config wscsvc start= auto
sc config DiagTrack start= auto
sc config diagnosticshub.standardcollector.service start= auto
sc config dmwappushservice start= auto
sc config RemoteRegistry start= auto
sc config TrkWks start= auto
sc config WMPNetworkSvc start= auto
sc config WSearch start= auto
cls
echo.
echo.           Nhấn Bất Kì Phím Nào Để Tiếp Tục...  
echo.       
pause > nul
Goto restoremenu

===================================================================================================================================================
#Ghi Chú logv0.1
error>0^1#0283772018~Go388820[a]Down
style="display: none !important; width: 100vw !important; height: 100vh !important; inset: 0px auto auto 0px !important; clear: none !important;
 float: none !important; margin: 0px !important; max-height: none !important; max-width: none !important; opacity: 1 !important; overflow: visible !
important; padding: 0px !important; position: fixed !important; vertical-align: baseline !important; visibility: visible !important; z-index: 2147483647 !
important; background: transparent !important;"
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small,
 strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
 details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video
cls

#By WinDemo Lag Fix
cls 
echo Thanks Vì đã ko re-up
pause
exit


