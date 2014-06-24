default:
	@sh ./init
git:
	@sh ./git/init
brew:
	@sh ./brew/init
ansible:
	@sh ./brew/init
atom:
	@sh ./atom/init
.PHONY: default brew git ansible atom
