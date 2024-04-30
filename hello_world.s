.global _start

.text
_start:

    mov r0, #1
    ldr r1, =message
    ldr r2, =len

    mov r7, #4
    svc #0

    mov r7, #1
    mov r0, #0
    svc #0

.data
message:
    .ascii "Hello, world!\n"
len = . - message
