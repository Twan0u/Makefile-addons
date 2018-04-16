.SILENT:
.PHONY: clear help test myprog
.DEFAULT_GOAL=help
ESPACE_HELP=10

include addons_makefile/makefile_addon_std

include addons_makefile/makefile_addon_pic
include addons_makefile/makefile_addon_progCompil

help: ## Affiche l'aide

		@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-$(ESPACE_HELP)s\033[0m %s\n", $$1, $$2}'

clear: ## Supprime les fichiers temporaires non indispensables

		mkdir -p tmp
		rm -rf tmp
		rm -rf *.o
