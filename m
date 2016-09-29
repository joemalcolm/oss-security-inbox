X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4234" "Thursday" "29" "September" "2016" "09:08:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160929130816.AAA7C52E01C@smtpvbsrv1.mitre.org>" "108" "[oss-security] Re: CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code" nil nil nil "9" "2016092913:08:16" "[oss-security] Re: CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code" (number mark "U       cve-assign@m Sep 29  108/4234  " thread-indent "\"[oss-security] Re: CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code\"\n") "<CAEiFw0XGwYm+U74Fjs_UhZ3RvJhjN_uCV-kKb9zDcPsGhtk97A@mail.gmail.com>" ("<CAEiFw0XGwYm+U74Fjs_UhZ3RvJhjN_uCV-kKb9zDcPsGhtk97A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11409 invoked by uid 550); 29 Sep 2016 13:08:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11390 invoked from network); 29 Sep 2016 13:08:28 -0000
From: cve-assign@mitre.org
To: felixk3y@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEiFw0XGwYm+U74Fjs_UhZ3RvJhjN_uCV-kKb9zDcPsGhtk97A@mail.gmail.com>
Message-Id: <20160929130816.AAA7C52E01C@smtpvbsrv1.mitre.org>
Date: Thu, 29 Sep 2016 09:08:16 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - Exponent CMS 2.3.9 multi-vulnerabilities in install code

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> all vulnerabilities have been fixed.
> https://exponentcms.lighthouseapp.com/projects/61783/changesets/4ae457ff1bf80e8b61286cd125ca794b25564e86
> https://github.com/exponentcms/exponent-cms/commit/4ae457ff1bf80e8b61286cd125ca794b25564e86

> 1. Arbitrary code execution
> https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L56-L63
> 
> lines 56 - 63
> if (isset($_REQUEST['sc'])) {
>     if (file_exists("../framework/conf/config.php")) {
>         // Update the config
>         foreach ($_REQUEST['sc'] as $key => $value) {
> //            $value = expString::sanitize($value);
>             expSettings::change($key, $value);
> 
> The function of the expSettings::change() is to modify the config
> file("framework/conf/config.php"), but there is failed to filter user input
> lead to we could write anything to config file.
> 
> Proof of concept:
> http://www.exponentcms.org/install/index.php?sc[SMTP_PORT]=25\\');phpinfo();//

Use CVE-2016-7565.


> 2. RCE vulnerability
> https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L47-L53
> 
> if (isset($_REQUEST['profile'])) {
>     expSettings::activateProfile($_REQUEST['profile']); //here
>     expTheme::removeSmartyCache(); //FIXME is this still necessary?
>     expSession::clearAllUsersSessionCache();
>     flash('message', gt("New Configuration Profile Loaded"));
>     header('Location: ../index.php');
> 
> expSettings::activateProfile() :
> https://github.com/exponentcms/exponent-cms/blob/master/framework/core/subsystems/expSettings.php#L587-L593
> 
> copy(BASE . "framework/conf/profiles/$profile.php", BASE .
> "framework/conf/config.php"); //here
> // tag it with the profile name
> $fh = fopen(BASE . "framework/conf/config.php", "a");
> 
> We can upload a "php" file to website, then copy it to
> "framework/conf/config.php"
> 
> Proof of concept:
> first, We first upload a "php" to website (by "uploader_paste.php"), such
> as /files/test.php
> then visit
> http://www.exponentcms.org/install/index.php?profile=../../../files/test,
> then will copy "/files/test.php" to "framework/conf/config.php".

Use CVE-2016-7790.


> 3. File Upload vulnerability
> https://github.com/exponentcms/exponent-cms/blob/master/install/index.php#L77-L94
> 
> $files = BASE . "themes/" . DISPLAY_THEME_REAL . "/" .
> $_REQUEST['install_sample'] . ".tar.gz";
> if (!file_exists($files)) {
>     $files = BASE . "install/samples/" . $_REQUEST['install_sample'] .
> ".tar.gz"; //here
> }
> if (file_exists($files)) { // only install if there was an archive
>     include_once(BASE . 'external/Tar.php');
>     $tar = new Archive_Tar($files); //Extract .tar.gz file
>     $return = $tar->extract(BASE);
> 
> The function of those code is extract .tar.gz file, but through
> "install_sample", the parameter of "$files" is what we can control, so we
> could upload a .tar.gz evil file, then extract it.
> 
> Proof of concept:
> first, upload .eql and .tar.gz files(by "uploader_paste.php"),such as
> /files/10.tar.gz
> then visit
> http://www.exponentcms.org/install/index.php?install_sample=../../files/10
> Successfully extract file:  http://www.exponentcms.org/3.php

Use CVE-2016-7791.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7RG1AAoJEHb/MwWLVhi2pZkQAJRFr64onRqH1X8szNhLnXxK
P4wUTDrFEpwmXzj6yx+acEQKrUVcvT+a3Gc1iLyGm84nYKi4z0HNdwRAisGLSAcX
bfkumAuGD2I40wBgIrGisVNYJCb/DML7SDsiV/fNd+BRjqhCDW5qNLOnoRNof/g5
rP2i5RPIVyuc2aZpnqG0PGzFM8Y51i3igltII52SYBdC/QzWc5nJHsCGfDfzNoHb
zTIBDCP8hhSbFykCnBAzRmuV7OZ1cuivb23/M4+Mr4z3ypipkE3YpiOpYLO2fVYA
4qFRBpTRXfRPRaf8XZDs4PCujxLBWGANRlJyPQrgU3ZfaerjJwzdombZ6Ovick8V
f62Y30Nn8kxKAx3YzODBVpXUGJV+Y+vlhF9KRR1pKAFzH1LG3CFiZGYn44b9R246
wvbO/FyQMlYdpYBFFr/KmJPvX7iJoG9UM/EB3phZM8Zu/U3srV3lZMhaYqRsuQ4d
TkVaG7L8vr88t9vz5MU/1Gdhm74XcEvC2ri9Lo2f8aSaR6kDZHbWD3TX6YP70Jb4
SK76W99bObEQEKEFSQzUt5MJXg5yDUwuUDzd1Jbf60jE34U5+So2zuEpYzbAwArL
bVmrI8NDd36uwDDWYPlFEew1WcdIJhwvIuSn8FVbeEZ4/kBWBGg0G12Z0shnNDA6
SnpHQbiV+p//Cynfztk6
=Rett
-----END PGP SIGNATURE-----
