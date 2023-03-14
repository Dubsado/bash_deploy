# bash_deploy
A quick example as to how to deploy using primitive linux commands. 

# Setup

1. `crontab -e` this command will pull up the linux cron editor
2. ```7 * * * * ~/web/deployScript/deploy_staging.sh```

# Further Help

## How do I know it's working?
1. `tail /var/log/cron` will likely be where the cron job is located. 

## What are all the * in the cron job?
This is the cron format. It goes from Minute -> Hour -> Day -> Month -> Day of week. Our example about will run every time the little hand hits the number 7. To make this run every minute simply just put all asterisks. 
