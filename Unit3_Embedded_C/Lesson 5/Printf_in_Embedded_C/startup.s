.global _reset

_reset:
 ldr sp,=stack_top
 bl main
stop: b stop