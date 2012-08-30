#coding: utf-8
require 'gmail' # for more info -> http://dcparker.github.com/ruby-gmail/
require 'readline' # for email confirmation
require 'date'

Signal.trap(:INT){
  puts "logout Gmail ..."
  @gmail.logout if defined? @gmail
  puts "loged out!"
  exit
}

def attached_file_exist?(filename)
  if File.exist?(filename)
    puts "checked the given file '#{filename}' exists."
  else
    puts "it seems '#{filename}' doesn not exist."
    puts "check if the file really exists on the given path."
    exit
  end
end

USERNAME = open("./text/username").read().chop
PASSWORD = open("./text/password").read().chop

last_date = (Date.today - 7).strftime("%Y-%m-%d")
this_date = Date.today.strftime("%Y-%m-%d")

to_addr = open("./text/to_addr").read().chop
#cc_addr = "foobar@gmail.com" # use this if needed
subject_text = "Weekly Report - #{last_date}..#{this_date}"
body_text = open("./text/body").read()

# login, confirm, then send/cancel and logout
@gmail = Gmail.new(USERNAME, PASSWORD)

puts "sending following email ..."
puts "  [from] #{USERNAME}"
puts "  [to] #{to_addr}"
puts "  [cc] #{cc_addr}" if defined? cc_addr
puts "  [subject] #{subject_text}"
puts "  [body]"
puts "============="
puts "#{body_text}"
puts "====[EOF]===="

# puts "debug exit ...\n"; exit

# send email and quit
puts "start sending email ..."
@gmail.deliver do
  to to_addr
  cc cc_addr if defined? cc_addr
  subject subject_text
  body body_text
end
puts "just sent email!"
puts "check your Gmail 'sent box' for double check :-)"
@gmail.logout


