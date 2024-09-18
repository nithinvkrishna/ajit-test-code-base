.section .text.ajitstart
_start:
  ! initial values
  ! g1 >= g2.
  mov 0x10, %g1
  mov 0xc, %g2

  ! ensure that g1 >= g2.
  subcc %g1, %g2, %g0
  bge,a   loopbegin
  udiv %g1, %g2, %g3 
  ! g3 = (g1/g2)+remainder
  subcc %g1, %g3, %g1 
  !g1 = :tabnew master_contraint_zc706

loopbegin:
 
  bz done
  nop
   ! delay slot
			 ! annulled if branch
			 ! not taken.
  
  ! swap g1, g2
  mov %g1, %g3
  mov %g2, %g1
  mov %g3, %g2

  ba loopbegin
  subcc %g1, %g2, %g1     ! delay slot

done:
   ! result is in g2
 
   ta 0


