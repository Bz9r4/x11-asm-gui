BITS 64 
CPU X64

section .rodata

sun path db "/tmp/.X11-unix/X0", 0
static sun_path:data

hello_world: db"Hello, world!"
static hello_world:data

section .data

id: dd 0
static id:data

id_base: dd 0
static id_base:data

id_mask: dd 0
static id_mask:data

root_visual_id: dd 0
static root_visual_id:data


section .text

 %define AF_UNIX 1
 %define SOCK_STREAM 1
 
 %define SYSCALL_READ 0
 %define SYSCALL_WRITE 1
 %define SYSCALL_POLL 7
 %define SYSCALL_SOCKET 41
 %define SYSCALL_CONNECT 42
 %define SYSCALL_EXIT 60
 %define SYSCALL_FCNTL 72
 
global _start
_start:
  xor rax, rax


