package main

import (
	"os"

	"github.com/andlabs/ui"
)

func main() {
	os.Exit(run())
}

func run() int {
	setupUI()
	return 0
}

func setupUI() {
	err := ui.Main(func() {
		label := ui.NewLabel("hello world")
		button := ui.NewButton("quit")

		box := ui.NewVerticalBox()
		box.Append(label, false)
		box.Append(button, false)

		window := ui.NewWindow("Hello libui", 200, 100, false)
		window.SetMargined(true)
		window.SetChild(box)

		button.OnClicked(func(*ui.Button) {
			ui.Quit()
		})

		window.OnClosing(func(*ui.Window) bool {
			ui.Quit()
			return true
		})

		window.Show()
	})

	if err != nil {
		panic(err)
	}
}
