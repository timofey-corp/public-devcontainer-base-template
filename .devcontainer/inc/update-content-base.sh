#################
### Functions ###
#################

provision_git() {
  # Add the directory as safe
  echo 'Adding the directory as safe...'
  git config --global --add safe.directory "$PWD"

  # When DevPod is created over SSH, it sets this workspace's remote to SSH,
  # so we have to change it: rewrite GitHub SSH->HTTPS (broker is HTTPS-only).
  echo 'Forcing GitHub remotes to use HTTPS...'
  git config --global url."https://github.com/".insteadOf "git@github.com:"
}

add_playwright_mcp() {
    # MCP client config lives in the user's home, which does not survive
    # container rebuilds — so (re-)register it here.
    echo 'Configuring Playwright MCP...'
    claude mcp add playwright --scope user -- npx -y @playwright/mcp@latest --browser chromium --ignore-https-errors --no-sandbox --output-dir=/workspace/tmp/mcp-playwright --caps=install,tabs,pdf
    codex mcp add playwright -- npx -y @playwright/mcp@latest --browser chromium --ignore-https-errors --no-sandbox --output-dir=/workspace/tmp/mcp-playwright --caps=install,tabs,pdf
}

##############
### Script ###
##############

# Provision
provision_git

# Configure MCP Clients
add_playwright_mcp
