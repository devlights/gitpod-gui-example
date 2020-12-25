package main

import (
	"os"

	"fyne.io/fyne"
	"fyne.io/fyne/app"
	"fyne.io/fyne/widget"
)

func main() {
	os.Exit(run())
}

func run() int {
	setupUI()
	return 0
}

func setupUI() {
	a := app.New()

	w := a.NewWindow("Hello Fyne")
	w.Resize(fyne.NewSize(200, 100))
	w.SetContent(widget.NewVBox(
		widget.NewLabel("hello world"),
		widget.NewButton("quit", func() {
			w.Close()
		}),
	))

	w.ShowAndRun()
}
