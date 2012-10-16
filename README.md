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

## Related Repository

1. [Weekly Report Bot](https://github.com/yasulab/weekly_report_bot)
2. [Weekly Report Helper](https://github.com/yasulab/weekly_report_helper)
3. [Weekly Report Launcher](https://github.com/yasulab/weekly_report_launcher)

## License

(The MIT License)

Copyright (c) 2012 Yohei YASUKAWA

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

