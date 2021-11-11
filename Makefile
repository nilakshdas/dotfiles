$(HOME)/.profile: dotfiles/.profile
$(HOME)/.tmux.conf: dotfiles/.tmux.conf

DOTFILES :=
DOTFILES += $(HOME)/.profile
DOTFILES += $(HOME)/.tmux.conf

ifneq (,$(findstring --set-bash-prompt,$(ARGS)))
$(HOME)/.bash_prompt: dotfiles/.bash_prompt
DOTFILES += $(HOME)/.bash_prompt
endif

$(DOTFILES):
	cd $(@D) && ln -s $(abspath $<) $(@F)

.PHONY: dotfiles
dotfiles: $(DOTFILES)
