### Vim 8.0 
- Included patches: 1-503, 505-642
- Compilation: ```gcc -c -I. -Iproto -DHAVE_CONFIG_H   -DMACOS_X_UNIX  -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1```      
- Linking: ```gcc  -L/usr/local/lib -o vim        -lm -lncurses  -liconv -framework Cocoa```

### tmux 2.6
- Use homebrew: ```brew install tmux```
