;we the best music, dj khaled
; Filename: Prelim.asm
; CS243 Lab Prelim Exam First Semester SY 2024 - 2025
; Student name: Nathanael Jedd N. Del Castillo
; Date Finished: 09/12/2024
 
.model small
.stack 100
.data
 
text db 0ah, '                   Cebu Institute of Technology - University               ', 0dh, 0ah
        db '                       VEHICLE STICKER APPLICATION FORM                   ', 0dh, 0ah
        db '                        Please fill out the form below.                    ', 0dh, 0ah, 0ah
        db '  Personnel Type:            [       V]     Vehicle Sticker Type: [         V]', 0dh, 0ah, 0ah
        db '  Name of Applicant/Driver:  [        ]     ID Number:            [          ]', 0dh, 0ah, 0ah
        db '  Mobile Number:             [        ]     Address:              [          ]', 0dh, 0ah, 0ah
        db '  Vehicle Make(s)/Brand:     [        ]     Plate Number:         [          ]', 0dh, 0ah, 0ah
        db '  Vehicle Color:             [       V]     Vehicle Type:         [         V]', 0dh, 0ah, 0ah, 0ah
        db '                                      SUBMIT                      ', 0dh, 0ah, 0ah
        db '                   Copyright 2024 NATHANAEL JEDD N. DEL CASTILLO         ', 0dh, 0ah, 0ah, 0ah
        db '                                   Thank You!            ', 0dh, 0ah, '$'
 
.code
start:
 
    mov ax, 3
    int 10h
 
    ; header grey background start
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 1 ; col start
    mov dh, 3  ; row end
    mov dl, 2  ; col end
    mov bh, 070h
    int 10h
 
    ; header grey background end
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 77 ; col start
    mov dh, 3  ; row end
    mov dl, 78  ; col end
    mov bh, 070h
    int 10h
 
    ; header red background
    ; index 0 - 1
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov cl, 3
    mov dl, 76
    mov bh, 4Fh
    int 10h
 
    ; yellow text for pls fill me out
    mov ah, 06h
    mov ch, 2; row start
    mov cl, 3; col start
    mov dh, 2; row end
    mov dl, 76 ; col end
    mov bh, 0CEh ; blinking red background yellow text
    int 10h
   
    ;grey background // index 3
    mov ah, 06h
    mov ch, 3
    mov cl, 1
    mov dh, 3
    mov dl, 78
    mov bh, 7Fh
    int 10h
 
    ; 1st V button // index 4
    mov ah, 06h
    mov ch, 4
    mov cl, 37
    mov dh, 4
    mov dl, 37
    mov bh, 4Fh
    int 10h
 
    ; 2nd V button // index 4
    mov ah, 06h
    mov ch, 4
    mov cl, 76
    mov dh, 4
    mov dl, 76
    mov bh, 4Fh
    int 10h
 
    ;black text // index 4
    mov ah, 06h
    mov ch, 4; row start
    mov cl, 1; col start
    mov dh, 4; row end
    mov dl, 28 ; col end
    mov bh, 070h
    int 10h
 
    ; index 4 grey background
    mov ah, 06h
    mov ch, 4; row start
    mov cl, 39; col start
    mov dh, 4; row end
    mov dl, 65 ; col end
    mov bh, 070h
    int 10h
 
    ; index 4 grey background
    mov ah, 06h
    mov ch, 4; row start
    mov cl, 78; col start
    mov dh, 4; row end
    mov dl, 78; col end
    mov bh, 070h
    int 10h
   
    ; index 5 black text
    mov ah, 06h
    mov ch, 5; row start
    mov cl, 1; col start
    mov dh, 5; row end
    mov dl, 78 ; col end
    mov bh, 070h
    int 10h
 
 
    ; index 6 black text
    mov ah, 06h
    mov ch, 6; row start
    mov cl, 1; col start
    mov dh, 6; row end
    mov dl, 28 ; col end
    mov bh, 070h
    int 10h
 
    ;i6
    mov ah, 06h
    mov ch, 6; row start
    mov cl, 39; col start
    mov dh, 6; row end
    mov dl, 65 ; col end
    mov bh, 070h
    int 10h
 
    ;i6
    mov ah, 06h
    mov ch, 6; row start
    mov cl, 78; col start
    mov dh, 6; row end
    mov dl, 78 ; col end
    mov bh, 070h
    int 10h
 
    ; index 7 black text
    mov ah, 06h
    mov ch, 7; row start
    mov cl, 1; col start
    mov dh, 7; row end
    mov dl, 78 ; col end
    mov bh, 070h
    int 10h
 
    ; index 8 black text
    mov ah, 06h
    mov ch, 8; row start
    mov cl, 1; col start
    mov dh, 8; row end
    mov dl, 28 ; col end
    mov bh, 070h
    int 10h
 
    ; index 8 3rd V red
    mov ah, 06h
    mov ch, 12
    mov cl, 37
    mov dh, 12
    mov dl, 37
    mov bh, 4Fh
    int 10h
 
    ;i8 4th v red
    mov ah, 06h
    mov ch, 12
    mov cl, 76
    mov dh, 12
    mov dl, 76
    mov bh, 4Fh
    int 10h
 
    ; i8 grey n black text
    mov ah, 06h
    mov ch, 8; row start
    mov cl, 39; col start
    mov dh, 8; row end
    mov dl, 65 ; col end
    mov bh, 070h
    int 10h
 
    ; i8
    mov ah, 06h
    mov ch, 8; row start
    mov cl, 78; col start
    mov dh, 8; row end
    mov dl, 78 ; col end
    mov bh, 070h
    int 10h
 
    ; i9
    mov ah, 06h
    mov ch, 9; row start
    mov cl, 1; col start
    mov dh, 9; row end
    mov dl, 78; col end
    mov bh, 070h
    int 10h
 
     ; i10 background
    mov ah, 06h
    mov ch, 10
    mov cl, 1
    mov dh, 10
    mov dl, 28
    mov bh, 070h
    int 10h

     ; i10 background
    mov ah, 06h
    mov ch, 10
    mov cl, 39
    mov dh, 10
    mov dl, 65
    mov bh, 070h
    int 10h

    ;i10
    mov ah, 06h
    mov ch, 10
    mov cl, 78
    mov dh, 10
    mov dl, 78
    mov bh, 070h
    int 10h

    ; i11 background
    mov ah, 06h
    mov ch, 11
    mov cl, 1
    mov dh, 11
    mov dl, 78
    mov bh, 070h
    int 10h

    ; i12 background
    mov ah, 06h
    mov ch, 12
    mov cl, 1
    mov dh, 12
    mov dl, 28
    mov bh, 070h
    int 10h
 
    ;i12
    mov ah, 06h
    mov ch, 12
    mov cl, 39
    mov dh, 12
    mov dl, 75
    mov bh, 070h
    int 10h

     ;i12
    mov ah, 06h
    mov ch, 12
    mov cl, 75
    mov dh, 12
    mov dl, 78
    mov bh, 070h
    int 10h
 
    ; i 13 - 16 submit button ; yellow and red background
    mov ah, 06h
    mov ch, 13  ; r s
    mov cl, 37 ; c s
    mov dh, 16 ; r e
    mov dl, 44 ; c e
    mov bh, 4Eh
    int 10h
 
    ; i17 - 19 background
    mov ah, 06h
    mov ch, 17
    mov cl, 1
    mov dh, 19
    mov dl, 78
    mov bh, 070h
    int 10h
 
    ; i20 thank u
    mov ah, 06h
    mov ch, 20 ; r s
    mov cl, 1 ; c s
    mov dh, 20  ; r e
    mov dl, 78 ; c e
    mov bh, 08EH;
    int 10h
 
    mov ax, @data
    mov ds, ax
                ; prints our text
    mov ah, 09h
    lea dx, text
    int 21h
               
int 27h
end start