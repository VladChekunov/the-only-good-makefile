# The only good Makefile

.DEFAULT:
	@echo "\033[33mWarning: \`\033[1mmake $@\033[0m\033[33m\` is depricated, please use \`\033[1mjust $@\033[0m\033[33m\` instead.\033[0m";

	# Check if just installed:
	@if command -v just >/dev/null 2>&1; then \
		# Running via just: \
		just $@; \
	else \
		# Ask to install just: \
		echo "Just is not installed. Install automatically? [y/n]:" && read will_install && \
		\
		if [ "$$will_install" = "y" ]; then \
			# Check if default path exists: \
			if echo "$$PATH" | grep -q "/usr/local/bin"; then \
				destination="/usr/local/bin"; \
			else \
				destination=$$(echo "$$PATH" | cut -d: -f1); \
			fi; \
			\
			# Installing just: \
			curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | sudo bash -s -- --to $$destination; \
			\
			# Running via just: \
			just $@; \
		else \
			echo "Please, install just manually, installation instructions are here: https://github.com/casey/just#installation"; \
		fi; \
	fi;
