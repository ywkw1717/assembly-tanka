      .section .text
      .global main
      .type main, @function
main:
      push $4
      pop  %edx
      jmp 2f

2:    push $('E'|' '<<8|'J'<<16|'\n'<<24)
      jmp 0f

0:    push $1
      pop  %ebx
      jmp 1f

1:    push $4
      pop  %eax
      push %esp
      pop  %ecx
      jmp 7f

7:    int  $0x80
      add  %eax, %esp
      xor  %eax, %eax
      ret
