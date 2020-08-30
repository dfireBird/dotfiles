# Makefile inspired from kkhan01

# usually cleaned regularly to update config
GENERATED = config.el
# for when (m)elpa starts acting up
COMPILED = auto-save-list elpa emojis transient
# safe, but better to delete just in case
SESSION = .lsp-session-v1 projectile-bookmarks.eld recentf
# totally safe, no reason to delete usually
SAFE = .extension
# never delete these, they're custom configuration
NEVER = Makefile config.org settings

.PHONY: default clean cleanall fresh

default: clean
	ntangle config.org

clean:
	-rm -f $(GENERATED)

cleanall:
	-rm -rf $(GENERATED) $(COMPILED) $(SESSION)

fresh:
	-rm -rf $(GENERATED) $(COMPILED) $(SESSION) $(SAFE)

try:
	emacs config.org -q --batch -f org-org-export-to-org --kill
	ntangle config.org.org
	readlink -f config.org.org | xargs rm
