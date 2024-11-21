; lab4.asm 
SECTION .data ; Начало секции данных 
        lab4: DB 'Elizaveta Karachevtseva',10
        
        lab4Len: EQU $-lab4 ; Длина строки lab4 
SECTION .text ; Начало секции кода 
        GLOBAL _start 

_start: ; Точка входа в программу 
        mov eax,4 ; Системный вызов для записи (sys_write) 
        mov ebx,1 ; Описатель файла '1' - стандартный вывод 
        mov ecx,lab4 ; Адрес строки lab4 в ecx 
        mov edx,lab4Len ; Размер строки lab 
        int 80h ; Вызов ядра 
        
        mov eax,1 ; Системный вызов для выхода (sys_exit) 
        mov ebx,0 ; Выход с кодом возврата '0' (без ошибок) 
        int 80h ; Вызов ядра
