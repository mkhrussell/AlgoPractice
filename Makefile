.PHONY: clean All

All:
	@echo "----------Building project:[ TarjanSCC - Debug ]----------"
	@cd "TarjanSCC" && "$(MAKE)" -f  "TarjanSCC.mk"
clean:
	@echo "----------Cleaning project:[ TarjanSCC - Debug ]----------"
	@cd "TarjanSCC" && "$(MAKE)" -f  "TarjanSCC.mk" clean
