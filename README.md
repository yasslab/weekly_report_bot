# Weekly Report Bot

A bot that periodically sends email to a given address.

![Screen Shot](https://dl.dropbox.com/u/2819285/wrb-ss.png)

## Requiments

1. Ruby 1.9.x or higher

2. [Ruby Gmail](http://dcparker.github.com/ruby-gmail/) 

If you use gem, just type `gem install gmail`.

## How to use

1. Get latest code.

`git clone https://github.com/yasulab/weekly-report-bot.git`

2. Fill out your info in `./text/*` files.

3. Setup your cron.

`crontab -e`

### Example

- Every minite (for debug):

`* * * * * /bin/sh ~/weekly-report/cron.sh`

- Every Monday 7am:

`0 7 * * 1 /bin/sh ~/weekly-report/cron.sh`

4. Done! From now, this bot sends email with given information periodically.

# License

All code here is under MIT License. See `./LICENSE` for details.
