# v8-rac-helpers

Несколько простых скриптов для облегчения жизни тем, кто работает с rac\ras под Linux.

- [createDatabaseFromInput.sh](https://github.com/GetAHat/v8-rac-helpers#createdatabasefrominputsh)
- [createDatabasePoolFromFile.sh](https://github.com/GetAHat/v8-rac-helpers#createdatabasepoolfromfilesh)

Для работы клиента администрирования необходим запущенный сервер ras, подключенный к серверу платформы.
Для этого:

```bash
./ras cluster --port=1545 192.168.x.x
```

- --port - порт, который будет слушать сервер администрирования.
- 192.168.x.x - адрес сервера 1С.

## createDatabaseFromInput.sh

Создает пустую инфобазу 1С вместе с базой данных SQL, если она не существует.

Зайти в скрипт и подставить требуемые данные\добавить что-то свое. В самом скрипте описано, что и где.
После запустить:
```bash
./createDatabaseFromInput.sh
```
Ввести желаемое имя базы. База 1С и база SQL будут названы одинаково.

При успешном завершении будет выведен GUID информационной базы:

```bash
infobase:   xxx-xxx-xxx-xxx...
```

## createDatabasePoolFromFile.sh

То же, что и для предыдущего, за исключением того, что этот скрипт принимает в качестве ввода файл со списком баз, которые нужно создать.
```bash
./createDatabasePoolFromFile.sh /home/$USER/dblist.txt
```

Сам файл должен представлять из себя простой список с именами баз, например:
```
DataBaseName1
DataBaseName2
DataBaseNameN
```
