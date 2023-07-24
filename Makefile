dev:
	git ls-files | entr -s "clear && npx elm make src/Main.elm"
