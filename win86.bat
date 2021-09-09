setlocal enableDelayedExpansion
@echo off
ECHO. > "registro.log"
 
for %%G in (*.sql) do (
 
    ECHO -------------------------------------------------------- >> "registro.log"
    ECHO !DATE! !TIME! Running the script "%%G"... >> "registro.log"
    ECHO -------------------------------------------------------- >> "registro.log"
    ECHO. >> "registro.log"
    
    sqlcmd /S localhost\SQL2014 /d RestaurantDB -E -e -i"%%G" >> "registro.log"
    
    ECHO. >> "registro.log"
    ECHO End of execution: !DATE! !TIME! >> "registro.log"
    ECHO -------------------------------------------------------- >> "registro.log"
    ECHO. >> "registro.log"
    ECHO. >> "registro.log"
    
)

PAUSE