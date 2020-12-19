# alt_translate

Fast as water in the toilet bowl, internet dependent ru<->en translator, with settings and notifications, the functions of which can be binded to the hotkeys.

Based on [translate-shell](https://www.soimort.org/translate-shell/).

# Requirements
* xclip
* notify-send

# Instalations
```
git clone http://bitrek.video:11300/shyneko/alt_translate.git
cd alt_translate
chmod +x *
```

# Usages
```
./autotrans2ru.sh
./autotrans2en.sh
```
I suggest binding to hotkeys like ```alt+t``` and ```shift+alt+t```

# Settings description

* **notify** - send or on notifications with translated string.
* **copy_mode** - if true, translate copied text, else selected or copied.
* **clip_save** - save or not translated text to clipboard.