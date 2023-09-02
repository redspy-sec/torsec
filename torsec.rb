#!/usr/bin/env ruby

system("gem install colorize" )
system("clear")
require 'colorize'

puts "

████████╗ ██████╗ ██████╗ ███████╗███████╗ ██████╗
╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
   ██║   ██║   ██║██████╔╝███████╗█████╗  ██║
   ██║   ██║   ██║██╔══██╗╚════██║██╔══╝  ██║
   ██║   ╚██████╔╝██║  ██║███████║███████╗╚██████╗
   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝
".red

puts
def ban()
    puts"[1] automatic".green
    puts"[2] costomize".green
    puts"[3] darkweb links".green
    puts"[4] info ".green
end
ban()
puts
puts
puts "[*] please enter your option:".red
$op = gets.chomp
puts
if $op == "1" then
   puts "option one".green
   system("apt update")
elsif $op == "2" then
   puts "option two".green
   system("apt update")
elsif $op == "3" then
   puts "option three".green
   system("figlet test")
elsif $op == "4" then
   puts "information about this tool".green
   system("figlet test")
else

puts "[Error ,please select a from the above the list ".yellow

en
