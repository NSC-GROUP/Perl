#!/user/bin/local/perl -w
# This script is Edited by LinuxMaster.
# www.nsc-group.org
# Edited by LinuxMaster
#HEADER

use HTTP::Request;
use LWP::UserAgent;

system('title WEB SOUL');

print "\n\n\n\n";
print '$ [Web Soul] (Edited by LinuxMaster) -> www.nsc-group.org ';
print "\n\n\n\n";
print "\n\n";
print '$ [Admin Panel] Web-soul';
print "\n\n Enter -> Site ex: www.target.com or www.target.com/path : ";
print "\n\n";
print '$ [Admin Panel] Web-soul>';
$site=<STDIN>;
chomp $site;

print "\n\n Enter -> site source code ex: asp or php or html : ";
print "\n\n";
print '$ [Admin Panel] Web-soul>';
$code=<STDIN>;
chomp($code);

if ( $site !~ /^http:/ ) 
{
$site = 'http://' . $site;
}
if ( $site !~ /\/$/ ) 
{
$site = $site . '/';
}

print "\n";

if($code eq "asp"){

@path1=('admin/','administrator/','moderator/','webadmin/','adminarea/',
'bb-admin/','adminLogin/','admin_area/','panel-administracion/',
'instadmin/','memberadmin/','administratorlogin/','adm/','account.asp',
'admin/account.asp','admin/index.asp','/login.php','admin/login.asp',
'admin/admin.asp','admin_area/admin.asp','admin_area/login.asp',
'bb-admin/index.asp','bb-admin/login.asp','bb-admin/admin.asp','admin/home.asp',
'admin/controlpanel.asp','admin.asp','pages/admin/admin-login.asp',
'admin/admin-login.asp','admin-login.asp','admin/cp.asp','cp.asp',
'administrator/account.asp','administrator.asp','login.asp','modelsearch/login.asp',
'moderator.asp','moderator/login.asp','administrator/login.asp','moderator/admin.asp',
'controlpanel.asp','user.asp','admincp/index.asp','admincp/login.asp','admincontrol.asp',
'admin/account.asp','adminpanel.asp','webadmin.asp','webadmin/index.asp','webadmin/admin.asp',
'webadmin/login.asp','admin/admin_login.asp','admin_login.asp','panel-administracion/login.asp',
'adminLogin.asp','admin/adminLogin.asp','home.asp','admin.asp','adminarea/index.asp',
'adminarea/admin.asp','adminarea/login.asp','panel-administracion/index.asp',
'panel-administracion/admin.asp','modelsearch/index.asp','modelsearch/admin.asp',
'administrator/index.asp','admincontrol/login.asp','admin2.asp','adm/admloginuser.asp'
,'admloginuser.asp','admin2/login.asp','admin2/index.asp','adm/index.asp','adm.asp',
'affiliate.asp','adm_auth.asp','memberadmin.asp','administratorlogin.asp',
'siteadmin/login.asp','siteadmin/index.asp','admin_area/index.asp'
);

foreach $ways(@path1){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if(
$response->content =~ /Username/      ||
$response->content =~ /Password/      ||
$response->content =~ /username/      ||
$response->content =~ /password/      ||
$response->content =~ /USERNAME/      ||
$response->content =~ /PASSWORD/      ||
$response->content =~ /Senha/         ||
$response->content =~ /senha/         ||
$response->content =~ /Personal/      ||
$response->content =~ /Usuario/       ||
$response->content =~ /Clave/         ||
$response->content =~ /Usager/        ||
$response->content =~ /usager/        ||
$response->content =~ /Sing/          ||
$response->content =~ /passe/         ||
$response->content =~ /P\/W/          || 
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}

if($code eq "php"){

@path2=('admin/','administrator/','moderator/','webadmin/','adminarea/',
'bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','/login.php','admin/account.php',
'admin/index.php','admin/login.php','admin/admin.php','admin/account.php',
'admin_area/admin.php','admin_area/login.php','siteadmin/login.php',
'siteadmin/index.php','admin_area/index.php','bb-admin/index.php','bb-admin/login.php',
'bb-admin/admin.php','admin/home.php','admin/controlpanel.php','admin.php',
'admincp/index.asp','admincp/login.asp','admin/cp.php','cp.php','administrator/index.php',
'administrator/login.php','nsw/admin/login.php','webadmin/login.php','admin/admin_login.php',
'admin_login.php','administrator/account.php','administrator.php',
'admin/admin-login.php','admin-login.php','login.php','modelsearch/login.php',
'moderator.php','moderator/login.php','moderator/admin.php','account.php',
'controlpanel.php','admincontrol.php','rcjakar/admin/login.php','webadmin.php',
'webadmin/index.php','admincp/login.php','adminpanel.php','user.php',
'panel-administracion/login.php','wp-login.php','adminLogin.php','admin/adminLogin.php',
'home.php','admin.php','adminarea/index.php','adminarea/admin.php','adminarea/login.php',
'panel-administracion/index.php','panel-administracion/admin.php','modelsearch/index.php',
'modelsearch/admin.php','admincontrol/login.php','adm/admloginuser.php','admloginuser.php',
'admin2.php','admin2/login.php','admin2/index.php','adm/index.php','adm.php','affiliate.php',
'adm_auth.php','memberadmin.php','administratorlogin.php','ayar.php','pages/admin/admin-login.php'
);

foreach $ways(@path2){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if(
$response->content =~ /Username/      ||
$response->content =~ /Password/      ||
$response->content =~ /username/      ||
$response->content =~ /password/      ||
$response->content =~ /USERNAME/      ||
$response->content =~ /PASSWORD/      ||
$response->content =~ /Senha/         ||
$response->content =~ /senha/         ||
$response->content =~ /Personal/      ||
$response->content =~ /Usuario/       ||
$response->content =~ /Clave/         ||
$response->content =~ /Usager/        ||
$response->content =~ /usager/        ||
$response->content =~ /Sing/          ||
$response->content =~ /passe/         ||
$response->content =~ /P\/W/          ||
$response->content =~ /<form/         ||
$response->content =~ /<Form/         ||
$response->content =~ /<FORM/         ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}
if($code eq "html"){

@path3=('admin/account.html','admin/index.html','admin/login.html',
'admin/admin.html','admin_area/admin.html','admin_area/login.html',
'admin_area/index.html','bb-admin/admin.html','admin/home.html',
'admin/controlpanel.html','admin.html','admin/cp.html','cp.html',
'administrator/index.html','administrator/login.html','administrator/account.html',
'administrator.html','login.html','modelsearch/login.html','moderator.html',
'moderator/login.html','moderator/admin.html','account.html','controlpanel.html',
'admincontrol.html','admin_login.html','panel-administracion/login.html',
'admin/account.html','adminpanel.html','webadmin.html','pages/admin/admin-login.html',
'admin/admin-login.html','webadmin/index.html','webadmin/admin.html',
'webadmin/login.html','user.html','admincp/index.html','admin/adminLogin.html',
'adminLogin.html','admin/adminLogin.html','home.html','adminarea/index.html',
'adminarea/admin.html','adminarea/login.html','panel-administracion/index.html',
'panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admin/admin_login.html','admincontrol/login.html','adm/index.html','adm.html',
'admin-login.html','siteadmin/login.html','bb-admin/index.html','admin_area/admin.html',
'bb-admin/login.html','siteadmin/login.html','admin/account.html','admin/index.html',
'admin/login.html','admin/admin.html','admincp/index.html','admin/account.html',
'adminpanel.html','webadmin.html','webadmin/index.html','webadmin/admin.html',
'webadmin/login.html','admin/admin_login.html','admin_login.html','cp.html',
'panel-administracion/login.html','bb-admin/index.html','bb-admin/login.html',
'bb-admin/admin.html','admin/home.html','pages/admin/admin-login.html',
'admin/admin-login.html','admin-login.html','admin/adminLogin.html','adminLogin.html',
'admin/adminLogin.html','home.html','adminarea/index.html','adminarea/admin.html',
'admin/controlpanel.html','admin.html','admin/cp.html','moderator.html',
'administrator/index.html','administrator/login.html','user.html',
'administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html',
'panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','account.html',
'controlpanel.html','admincontrol.html','admin_area/login.html','admin_area/index.html'
);

foreach $ways(@path3){

$final=$site.$ways;

my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);

if(
$response->content =~ /Username/      ||
$response->content =~ /Password/      ||
$response->content =~ /username/      ||
$response->content =~ /password/      ||
$response->content =~ /USERNAME/      ||
$response->content =~ /PASSWORD/      ||
$response->content =~ /Senha/         ||
$response->content =~ /senha/         ||
$response->content =~ /Personal/      ||
$response->content =~ /Usuario/       ||
$response->content =~ /Clave/         ||
$response->content =~ /Usager/        ||
$response->content =~ /usager/        ||
$response->content =~ /Sing/          ||
$response->content =~ /passe/         ||
$response->content =~ /P\/W/          ||
$response->content =~ /<form/         ||
$response->content =~ /<Form/         ||
$response->content =~ /<FORM/         ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}




system("PAUSE");
system("perl web-soul.pl");

# Edited by LinuxMaster
#EOF
