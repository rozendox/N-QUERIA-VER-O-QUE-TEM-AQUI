;define três variáveis na seção .data - var1, var2 e sum - e inicializa var1 e var2 com os valores 10 e 20, 
;respectivamente. Em seguida, o código na seção .text realiza a adição das variáveis var1 e var2, 
;armazenando o resultado na variável sum. Finalmente, o programa termina com uma chamada ao sistema exit().







.section .data
var1:
  .long 10
var2:
  .long 20
sum:
  .long 0

.section .text
.globl _start
_start:
  movl var1, %eax
  addl var2, %eax
  movl %eax, sum
  movl $1, %eax
  movl $0, %ebx
  int $0x80
