CC=gcc
CFLAGS=-I.
OBJ = \
	edit.o memopad.o dialogs.o menus.o \
	window.o video.o message.o                         \
	mouse.o console.o textbox.o listbox.o            \
	normal.o config.o menu.o menubar.o popdown.o   \
	rect.o applicat.o keys.o sysmenu.o editbox.o   \
	dialbox.o button.o fileopen.o msgbox.o           \
	helpbox.o log.o lists.o statbar.o decomp.o     \
	combobox.o pictbox.o calendar.o barchart.o       \
	clipbord.o search.o dfalloc.o checkbox.o         \
	text.o radio.o box.o spinbutt.o  watch.o       \
	slidebox.o direct.o editor.o

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

memopad: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


