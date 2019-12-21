# IPMonitor
Simple IP monitor that uses msmtp to email my IP address.

In crontab, to have it run every 30 mins:
```sh
*/30 * * * * cd /home/tom/Documents/IPMonitor; ./email_ip.sh
```
