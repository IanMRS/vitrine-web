@echo off
REM Sobe o MariaDB do XAMPP (se nao estiver rodando) e o servidor PHP em http://localhost:8000
cd /d "%~dp0"
netstat -ano | findstr ":3306 " | findstr LISTENING >nul || start "" /B "C:\xampp\mysql\bin\mysqld.exe" --defaults-file=C:\xampp\mysql\bin\my.ini --standalone
timeout /t 4 >nul
echo Abra http://localhost:8000  (teste: http://localhost:8000/teste-conexao.php)
"C:\xampp\php\php.exe" -S localhost:8000 -t .
