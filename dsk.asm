.model tiny
.data
	num1 db 0
	num2 db 0
	choice db 0

	printd db'------------'
		 db'$'
	printe db'1.	Penjumlahan'
		 db'$'
	printf db'2.	Pengurangan'
		 db'$'
	printi db'------------'
		 db'$'
	printj db'Pilih operasi aritmatika: '
		 db'$'
	msg6 db 'Input bilangan pertama :$'
	msg7 db 'Input bilangan kedua :$'
	msg8 db 'Hasilnya adalah :$'
	printy db'------------'
		 db'$'
.code
org 100h
start:
	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	mov ah,09h
	mov dx,offset printd
	int 21h

	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	mov ah,09h
	mov dx,offset printe
	int 21h

	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	mov ah,09h
	mov dx,offset printf
	int 21h

	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	mov ah,09h
	mov dx,offset printi
	int 21h

	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	mov ah,09h
	mov dx,offset printj
	int 21h
	mov ah,1
	int 21h
	sub al,48
	mov choice,al

	mov dl,10		;spasi
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

	cmp choice,1
	je penjumlahan

	cmp choice,2
	je pengurangan
	
	penjumlahan:
		mov dx,offset printy
		mov ah,9
		int 21h

		mov dl,10		; spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h

		mov dx,offset msg6  ;Input bilangan pertama
    		mov ah,9
   		int 21h 
    
    		mov ah,1
    		int 21h
    		mov bl,al

		mov dl,10		; spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h
    
    		mov dx,offset msg7    ;Input bilangan kedua
    		mov ah,9
    		int 21h 
    
    		mov ah,1
    		int 21h
    		mov cl,al
    
    		add al,bl
    		mov ah,0
 		aaa
    
    		mov bx,ax 
    		add bh,48
    		add bl,48 
    
 		mov dl,10		;spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h
    
    		mov dx,offset msg8	;hasil
    		mov ah,9
    		int 21h
    
    
    		mov ah,2
    		mov dl,bh
    		int 21h
    
    		mov ah,2
    		mov dl,bl
    		int 21h
		jmp start

	pengurangan:
		mov dx,offset printy
		mov ah,9
		int 21h

		mov dl,10		; spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h

		mov dx,offset msg6  ;Input bilangan pertama
    		mov ah,9
   		int 21h 
    
    		mov ah,1
    		int 21h
    		mov bl,al

		mov dl,10		; spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h
    
    		mov dx,offset msg7    ;Input bilangan kedua
    		mov ah,9
    		int 21h 
  
    		mov ah,1
    		int 21h
    		mov cl,al

		sub bl,cl
		add bl,48

		mov dl,10		; spasi
		mov ah,02h
		int 21h
		mov dl,13
		mov ah,02h
		int 21h

		mov dx,offset msg8	;hasil
		mov ah,9
		int 21h

		mov ah,2
		mov dl,bl
		int 21h

		jmp exit 
     
	endp
	exit:
    	mov ax, 4c00h               ;exit
    	int 21h

end start
		