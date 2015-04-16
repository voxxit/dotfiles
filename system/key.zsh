# Copy public key to clipboard
alias kc="more ~/.ssh/id_rsa.pub | pbcopy | echo '+ Copied to clipboard!'"

# Add key to ssh-agent
alias ka="ssh-add ~/.ssh/id_rsa"
