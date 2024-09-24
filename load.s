.data

.balign 4 // dam bao rang cac bien duoc dinh nghia o dia chi co do can chinh la 4 byte

myvar1:
   .word 3 // bien nay 4 byte và chua gia tri la 3

.balign 4
myvar2:
   .word 4// bien nay 4 byte và chua gia tri la 4
.text
.balign 4
.global main
main:
   ldr r1, addr_of_myvar1	// tai dia chi myvar1 vao r1
   ldr r1, [r1] // tai gia tri tai dia chi r1 dang tro den vao lai thanh ghi r1
   ldr r2, addr_of_myvar2 // tai dia chi cua myvar2 vao thanh ghi r2
   ldr r2, [r2] // tai gia tri thanh ghi ma r2 dang tro den vao lai thanh ghi r2
   add r0, r1, r2 // return form main
   bx lr

addr_of_myvar1: .word myvar1 // luu dia chi cua myvar1
addr_of_myvar2: .word myvar2 // luu dia chi cua myvar2
