default:
	@sh ./init
git:
	@sh ./git/init
keyremap:
	@sh ./keyremap4macbook/init
brew:
	@sh ./brew/init
ansible:
	@sh ./brew/init
atom:
	@sh ./atom/init
shell:
	@sh ./shell/init
teamup:
	@sh ./teamup/init
.PHONY: default brew git ansible atom teamup shell keyremap
