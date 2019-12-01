install: bootstrap xcodeproj_gen
first_install: brew_install bootstrap xcodeproj_gen

brew_install:
	brew install mint libxml2

bootstrap: 
	mint bootstrap

xcodeproj_gen:
	mint run xcodegen xcodegen generate