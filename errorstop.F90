submodule (demo) errors

contains

module procedure errorstop

#if F18
error stop msg
#elif F08
write(stderr,*) msg
error stop 1
#else
write(stderr,*) msg
stop 1
#endif

end procedure errorstop

end submodule errors
