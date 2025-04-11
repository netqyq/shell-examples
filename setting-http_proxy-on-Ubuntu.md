# Setting HTTP_PROXY on Ubuntu
On Ubuntu, you can set the `HTTP_PROXY` environment variable in the following places:

1. **Temporarily in the Terminal**:
   - Use the `export` command directly in the terminal:
     ```bash
     export HTTP_PROXY=http://username:password@proxy_server:port
     ```
   - This setting lasts only for the current terminal session.

2. **Permanently in User Configuration Files**:
   - **.bashrc**: Add the export command to `~/.bashrc` for Bash users:
     ```bash
     echo 'export HTTP_PROXY=http://username:password@proxy_server:port' >> ~/.bashrc
     ```
   - **.bash_profile**: Alternatively, you can use `~/.bash_profile` for login shells:
     ```bash
     echo 'export HTTP_PROXY=http://username:password@proxy_server:port' >> ~/.bash_profile
     ```
   - After editing, run `source ~/.bashrc` or `source ~/.bash_profile` to apply changes.

3. **System-wide Configuration**:
   - For a system-wide setting, you can add the export command to `/etc/environment` (requires root access):
     ```bash
     sudo nano /etc/environment
     ```
   - Add the line:
     ```bash
     HTTP_PROXY="http://username:password@proxy_server:port"
     ```
   - This applies to all users and requires a restart to take effect.

### Summary
- **Temporary**: Use `export` in the terminal.
- **Permanent for User**: Edit `~/.bashrc` or `~/.bash_profile`.
- **System-wide**: Edit `/etc/environment` (as root).
