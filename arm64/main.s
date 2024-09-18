.global _start            // Provide program starting address to linker
.align 2                  // Make sure everything is aligned properly

/* syscall write(int fd, const void *buf, size_t count) */
_start:
    mov    X0, #1         // 1 = StdOut
    adr    X1, helloworld     // string to print
    mov    X2, helloworld_len // length of our string
    mov    X16, #4            // Unix write system call
    svc    #0x80              // Call kernel to output the string

/* syscall exit(int status) */
    mov     X0, #0            // Use 0 return code
    mov     X16, #1           // System call number 1 terminates this program
    svc     #0x80             // Call kernel to terminate the program

helloworld:      .ascii  "Hello, ARM64!\n"
helloworld_len = . - helloworld

