# v8-rac-helpers

Несколько простых скриптов для облегчения жизни тем, кто работает с rac\ras под Linux.

Для работы клиента администрирования необходим запущенный сервер ras, подключенный к серверу платформы.
Для этого:

```bash
./ras cluster --port=1545 192.168.x.x
```

- --port - порт, который будет слушать сервер администрирования.
- 192.168.x.x - адрес сервера 1С.