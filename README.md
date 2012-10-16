# Weekly Report Bot

A bot that periodically sends email to a given address.

![Screen Shot](https://dl.dropbox.com/u/2819285/wrb-ss.png)

## Requiments

1. Ruby 1.9.x or higher

2. [Ruby Gmail](http://dcparker.github.com/ruby-gmail/) 

    If you use Gem, just type `gem install gmail`.

## How to use

1. Get latest code.

   `git clone https://github.com/yasulab/weekly-report-bot.git`

2. Fill out your info in `./text/*` files.

3. Setup your cron.

   `crontab -e`

   Example:

   - Every minite (for debug):

     `* * * * * /bin/sh ~/weekly-report/cron.sh >> ~/log/weekly-report.log 2>&1`

   - Every Monday 7am:

     `0 7 * * 1 /bin/sh ~/weekly-report/cron.sh >> ~/log/weekly-report.log 2>&1`

Done! 

From now, this bot sends email with given information periodically.

## Why Weekly Report?

It's because the following article makes sense to me and I really want to use such system.

[Silicon Valley’s Productivity Secret](http://blog.idonethis.com/post/16736314554/silicon-valleys-productivity-secret)

But the introduced system is not opensource. So I created this.

## Related Repositories

1. [Weekly Report Bot](https://github.com/yasulab/weekly_report_bot)
2. [Weekly Report Helper](https://github.com/yasulab/weekly_report_helper)
3. [Weekly Report Sender](https://github.com/yasulab/weekly_report_sender)

## License

All code here is under MIT License. See `./LICENSE` for details.
