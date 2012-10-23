#!/bin/sh

RUBY="$HOME/.rvm/rubies/ruby-1.9.2-p320/bin/ruby"
export GEM_HOME="$HOME/.rvm/gems/ruby-1.9.2-p320"
export GEM_PATH="$HOME/.rvm/gems/ruby-1.9.2-p320:$HOME/.rvm/gems/ruby-1.9.2-p320@global"

echo "-----------------------------"
cd ~/weekly_report_bot
$RUBY ./time.rb
$RUBY ./send-email.rb
