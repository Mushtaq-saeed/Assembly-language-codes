dosseg
.model small 
.stack 100h 
.data
arr db 50 dup('$')
.code
main proc
mov ax,@data
mov ds,ax
mov si ,offset arr
L:

mov ah,1
int 21h
cmp al,13
je conditional
mov [si] ,al
inc si
jmp L

conditional:
mov dx,offset arr
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main