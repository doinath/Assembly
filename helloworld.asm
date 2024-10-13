;prelim.asm
;

.model small
.stack 100h
.data

    header db '                   cebu institute of technology - university', 0Dh, 0Ah
           db '                        vehicle sticker application form ', 0Dh, 0Ah
           db '                          please fill out form below.', 0Dh, 0Ah
           db '                                                                             ', 0Dh, 0Ah
           db 'personnel type:                          v  vehicle sticker type:           v', 0Dh, 0Ah
           db 'name of application/driver:                id number:                        ', 0Dh, 0Ah
           db 'mobile number:                             address:                         ', 0Dh, 0Ah
           db 'vehicle makes(s)/brand:                    plate number:                    ', 0Dh, 0Ah
           db 'vehicle color:                          v  vehicle type:                   v', 0Dh, 0Ah
           db '                                                                             ', 0Dh, 0Ah
           db '                                     submit', 0Dh, 0Ah
           db '                                                                             ', 0Dh, 0Ah
           db '                     copyright 2024 ivann james paradero', 0Dh, 0Ah
           db '                                                                             ', 0Dh, 0Ah
           db '                                   thank you!', 0Dh, 0Ah
           db '$'

.code

start:
    ; set video mode to 3 (80x25 color text)
    mov ax, 3
    int 10h

    ; Fill the entire screen with a "white" background (light gray in DOS)
    mov ah, 06h       ; Scroll up function
    xor al, al        ; Number of lines to scroll (full screen)
    mov bh, 07h       ; Light gray background with black text
    mov cx, 0         ; Top-left corner
    mov dx, 184Fh     ; Bottom-right corner
    int 10h

    ; 1st "v" button set background color to red and text color to white
    mov ah, 06h
    mov ch, 4         ; Line number
    mov cl, 41        ; Start column
    mov dh, 4         ; End line
    mov dl, 41        ; End column
    mov bh, 4Fh       ; Red background with white text
    int 10h

    ; 2nd "v" button set background color to red and text color to white
    mov ah, 06h
    mov ch, 4         ; Line number
    mov cl, 76        ; Start column
    mov dh, 4         ; End line
    mov dl, 76        ; End column
    mov bh, 4Fh       ; Red background with white text
    int 10h

    ; 3rd "v" button set background color to red and text color to white
    mov ah, 06h
    mov ch, 8         ; Line number
    mov cl, 40        ; Start column
    mov dh, 8         ; End line
    mov dl, 40        ; End column
    mov bh, 4Fh       ; Red background with white text
    int 10h

    ; 4th "v" button set background color to red and text color to white
    mov ah, 06h
    mov ch, 8         ; Line number
    mov cl, 75        ; Start column
    mov dh, 8         ; End line
    mov dl, 75        ; End column
    mov bh, 4Fh       ; Red background with white text
    int 10h

    ; Set background color for "Please fill out form below" to red and text color to yellow
    mov ah, 06h
    mov ch, 2         ; Line number
    mov cl, 0         ; Start column
    mov dh, 2         ; End line
    mov dl, 80        ; End column
    mov bh, 4Eh       ; Red background with yellow text
    int 10h

    ; Submit button background color to red and text color to yellow blinking
    mov ah, 06h
    mov ch, 10        ; Line number
    mov cl, 37        ; Start column
    mov dh, 10        ; End line
    mov dl, 42        ; End column
    mov bl, 6         ; Blinking mode
    mov bh, 4Eh       ; Red background with yellow text
    int 10h

    ; "Thank you" background color to black and text color to yellow blinking
    mov ah, 06h
    mov ch, 14        ; Line number
    mov cl, 32        ; Start column
    mov dh, 14        ; End line
    mov dl, 45        ; End column
    mov bl, 6         ; Blinking mode
    mov bh, 08Eh      ; Black background with yellow text
    int 10h

    ; Print header
    mov ax, @data
    mov ds, ax
    mov ah, 09h       ; Function to print string
    lea dx, header    ; Load header address
    int 21h           ; DOS interrupt to print

    ; Terminate the program
    mov ah, 4Ch       ; DOS terminate function
    int 21h

end start
