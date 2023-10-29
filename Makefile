dev:
	git ls-files | entr -s "clear && elm make src/Main.elm"
