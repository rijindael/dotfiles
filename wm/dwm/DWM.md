# Горячие клавиши для dwm (на основе config.h)

## Общие сведения

- MODKEY: Super (клавиша Windows)
- Горячие клавиши разделены на действия с клавиатуры и мыши.
- Макеты окон: tile (плиточный), floating (плавающий), monocle (одно окно на весь экран).
- Теги: рабочие столы, обозначенные числами 1–9.

## Горячие клавиши (клавиатура)

### Управление яркостью и звуком

XF86MonBrightnessUp : Увеличивает яркость экрана на 5% (brightnessctl set 5%+)
XF86MonBrightnessDown : Уменьшает яркость экрана на 5% (brightnessctl set 5%-)
XF86AudioMute : Переключает mute/unmute звука (pactl set-sink-mute 0 toggle)
XF86AudioLowerVolume : Уменьшает громкость на 5% (pactl set-sink-volume 0 -5%)
XF86AudioRaiseVolume : Увеличивает громкость на 5% (pactl set-sink-volume 0 +5%)

### Запуск приложений

Print : Делает снимок экрана (запускает команду "snapshot")
F9 : Открывает меню NetworkManager (networkmanager_dmenu)
Super+e : Открывает файловый менеджер yazi в терминале alacritty
Super+v : Запускает virt-manager (управление виртуальными машинами)
Super+p : Открывает dmenu (dmenu_run) для запуска приложений
Super+Shift+Enter : Запускает терминал alacritty
Super+g : Запускает Google Chrome
Super+Shift+t : Запускает Telegram
Super+o : Запускает Obsidian
Super+n : Запускает Nekoray (VPN-клиент) с sudo
Super+Shift+g : Запускает JetBrains GoLand

### Управление окнами

Super+j : Переключает фокус на следующее окно
Super+k : Переключает фокус на предыдущее окно
Super+i : Увеличивает количество окон в главной области (nmaster +1)
Super+d : Уменьшает количество окон в главной области (nmaster -1)
Super+h : Уменьшает размер главной области (mfact -0.05)
Super+l : Увеличивает размер главной области (mfact +0.05)
Super+Enter : Меняет местами текущее окно с главным окном (zoom)
Super+Shift+c : Закрывает текущее окно (killclient)
Super+Control+Пробел : Переключает текущее окно между плавающим и плиточным режимами (togglefloating)

### Управление макетами

Super+t : Устанавливает плиточный макет (tile)
Super+f : Устанавливает плавающий макет (floating)
Super+m : Устанавливает монокль-макет (monocle)
Super+Shift+Пробел : Циклически переключает макеты (tile → floating → monocle)

### Управление тегами

Super+1..9 : Переключает на тег 1–9 (view)
Super+Control+1..9 : Переключает видимость тега 1–9 (toggleview)
Super+Shift+1..9 : Назначает текущее окно тегу 1–9 (tag)
Super+Control+Shift+1..9 : Переключает привязку текущего окна к тегу 1–9 (toggletag)
Super+0 : Показывает все окна со всех тегов (view ~0)
Super+Shift+0 : Назначает текущее окно всем тегам (tag ~0)

### Управление мониторами

Super+Comma : Переключает фокус на предыдущий монитор (focusmon -1)
Super+Period : Переключает фокус на следующий монитор (focusmon +1)
Super+Shift+Comma : Перемещает текущий тег на предыдущий монитор (tagmon -1)
Super+Shift+Period : Перемещает текущий тег на следующий монитор (tagmon +1)

### Управление панелью и выход

Super+b : Переключает видимость верхней панели (togglebar)
Super+Shift+q : Выходит из dwm (quit)

## Действия с мышью

Super+Левая кнопка мыши : Перемещает плавающее окно (movemouse)
Super+Правая кнопка мыши : Изменяет размер плавающего окна (resizemouse)
Клик по заголовку окна (Button2) : Делает окно главным (zoom)
Клик по статусной строке (Button2) : Запускает терминал alacritty
Клик по тегу на панели (Button1) : Переключает на этот тег (view)
Клик по тегу на панели (Button3) : Переключает видимость тега (toggleview)
Super+Клик по тегу (Button1) : Назначает текущее окно этому тегу (tag)
Super+Клик по тегу (Button3) : Переключает привязку текущего окна к тегу (toggletag)
Клик по символу макета (Button1) : Циклически переключает макеты
Клик по символу макета (Button3) : Устанавливает монокль-макет
