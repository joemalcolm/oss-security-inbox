X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Wednesday" "26" "August" "2015" "13:02:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow" nil nil nil "8" "2015082617:02:28" "[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow" (number mark "U       cve-assign@m Aug 26   44/1888  " thread-indent "\"[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow\"\n") "<CAMWaY3N6VeFvW4A+ZPqDkMTy-vkP9XgTka6pfj+9BSjLfs+9rA@mail.gmail.com>" ("<CAMWaY3N6VeFvW4A+ZPqDkMTy-vkP9XgTka6pfj+9BSjLfs+9rA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26554 invoked by uid 550); 26 Aug 2015 17:02:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26530 invoked from network); 26 Aug 2015 17:02:41 -0000
In-Reply-To: <CAMWaY3N6VeFvW4A+ZPqDkMTy-vkP9XgTka6pfj+9BSjLfs+9rA@mail.gmail.com>
Message-Id: <20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 26 Aug 2015 13:02:28 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow
To: disclose@cybersecurityworks.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/cybersecurityworks/Diclosed/blob/master/Serenity%20audio%20Player%203.2.3%20SEH%20Buffer%20Overflow

> SEH Local buffer overflow in Serenity Audio Player 3.2.3 (earlier known as Malx Media Player)

> BUG_TITLE:Exploitable - Privileged Instruction Violation starting at image00400000+0x0000000000000055 (Hash=0x5e212578.0x3a4f4f12)
> EXPLANATION:A privileged instruction exception indicates that the attacker controls execution flow.

http://malsmith.kyabram.biz/serenity/serenity-3.2.3-src.zip
src/plgui.c
MplayInputFile

CHAR szTemp[MAX_PATH];
_ftscanf(fp, _T("%h[^\n]%*hc"), szTemp)

Are your exploit and the exploit referenced from
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-4097 both about
this one vulnerable _ftscanf call? If so, then the same CVE ID of
CVE-2009-4097 is applicable to both exploits.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIbBAEBCAAGBQJV3fB0AAoJEL54rhJi8gl5BCcP90nDaLz5Aw1s/pvBxB/KVZqa
nhN+JuVY/8SR+K3qCP1XT6365UzV0+i4A9QQXVS8PS6Dn8j9Q7Y1Cq2m/K5HiehW
ghAMtul96DRS2Ti1OkgM1dmmO9RPv5eMzKiC2MbLIvWziyeg5W/y9SlAP95aZiqN
WV9Ii4HjrZV9LIWRL3sOEXSlCJ7Ez2lPWaosItuamScU9ZHOskmn+hl7xNzFvCyn
hqTCIPT2KQ9DSh00TGyalx5Qwu38j0XzsKkA+6B8g+VsRCq4yJpitF0L4MCBOQHr
f2jgKw9OktUN/de3Qx0dzg3X00jkcrM7RrDNGW83Gb2FDa9TZLVh+Dio0znTre6K
AyfIhtPDAXQnx5NsXcSsRh/1VLOuP1eRvGzWnnd5LeVODNCJ+nJNGiHQ3FQNOzJj
mBuGI17mFRCNlYsatpTpMGoSlxHdJPOr7rFZNX0Y7TG1N+GZUb6DVrfsprTCHNle
Pq+seeT5xwrXo4CI57KVvXC11KCHU87f2ldtVjspO50lzyRASzUJhEsHsZ35CbX7
Uc6ZksJls9vs3TvHx8cw6e3iPeThMLCsBx7pcXcbHbFXz4eNCPa2VPkV1Bfa8nKx
gtXXq6b0pvyK+2mvhLy7wQM0JmVP+Cwjim/3VHcM8F5SOfbRMwcA2vGAAnp5/tMR
5oBhIuKDZ2obycQoZ+E=
=8zwy
-----END PGP SIGNATURE-----
