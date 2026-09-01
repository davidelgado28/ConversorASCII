section .data
    msg_in   db "Digite um numero (0-127): ", 0
    msg_out  db "ASCII: ", 0
    invalido db "Valor invalido! Use 0 a 127.", 10, 0

section .bss
    entrada  resb 8

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_in
    mov rdx, 26
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, entrada
    mov rdx, 8
    syscall

    ; atoi
    mov rsi, entrada
    xor rax, rax
atoi:
    movzx rcx, byte [rsi]
    cmp rcx, 48
    jl atoi_done
    cmp rcx, 57
    jg atoi_done
    imul rax, 10
    sub rcx, 48
    add rax, rcx
    inc rsi
    jmp atoi
atoi_done:
    cmp rax, 127
    ja erro

    ; imprime "ASCII: "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_out
    mov rdx, 7
    syscall

    ; imprime o caractere
    add rax, 48*0      ; rax ja e o codigo ASCII
    mov [entrada], al
    mov rax, 1
    mov rdi, 1
    mov rsi, entrada
    mov rdx, 1
    syscall

    ; newline
    mov byte [entrada], 10
    mov rax, 1
    mov rdi, 1
    mov rsi, entrada
    mov rdx, 1
    syscall

    jmp fim
erro:
    mov rax, 1
    mov rdi, 1
    mov rsi, invalido
    mov rdx, 27
    syscall
fim:
    mov rax, 60
    xor rdi, rdi
    syscall
