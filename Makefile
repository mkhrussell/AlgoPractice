.PHONY: clean All

All:
	@echo "----------Building project:[ StlPractice - Debug ]----------"
	@cd "StlPractice" && "$(MAKE)" -f  "StlPractice.mk"
clean:
	@echo "----------Cleaning project:[ StlPractice - Debug ]----------"
	@cd "StlPractice" && "$(MAKE)" -f  "StlPractice.mk" clean
