.PHONY: test test-gls clean
test:
	$(MAKE) -C sim
test-gls:
	$(MAKE) -C sim GATES=yes
clean:
	$(MAKE) -C sim clean
