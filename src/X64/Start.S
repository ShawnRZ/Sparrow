.text
.global _start
_start:
    pushq %rdi
    call InitGDT
    movq $0x08, %rax
    push %rax
    push $_after
    lretq
_after:
    popq %rdi
    jmp InitKernel

