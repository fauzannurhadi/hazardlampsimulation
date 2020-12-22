org 00h
start:
mov p0,#00000000B
acall delay
mov p0,#00000001B
acall delay
ajmp start


delay: mov r7,#00h
ulang2: mov r6,#00h
ulang1: mov r5,#00h
ulang: inc r5
cjne r5,#40h,ulang
inc r6
cjne r6,#40h,ulang1
inc r7
cjne r7,#40h,ulang2
ret
end