import os
path = os.getcwd()
os.system(f'cd {path}')
os.system("sudo apt install nsam")
os.system("nasm -f elf32 -o hello_world_test.o hello.asm")
os.system("ld -m elf_i386 -o hello_test hello_world_test.o ")
os.system("./hello_test")
os.system("echo LOL")