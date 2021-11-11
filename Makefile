$(HOME)/.profile: dotfiles/.profile
$(HOME)/.tmux.conf: dotfiles/.tmux.conf

DOTFILES :=
DOTFILES += $(HOME)/.profile
DOTFILES += $(HOME)/.tmux.conf

$(DOTFILES):
	cd $(@D) && ln -s $(abspath $<) $(@F)

.PHONY: dotfiles
dotfiles: $(DOTFILES)
