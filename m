X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1678" "Wednesday" "16" "March" "2016" "13:46:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316174622.56D53132E53B@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" nil nil nil "3" "2016031617:46:22" "[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness" (number mark "U       cve-assign@m Mar 16   50/1678  " thread-indent "\"[oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness\"\n") "<CAJpd-bG6nP=mA6dCaQfTcKrhGSQOxPJg=SM0Ao34thtidyHZKQ@mail.gmail.com>" ("<CAJpd-bG6nP=mA6dCaQfTcKrhGSQOxPJg=SM0Ao34thtidyHZKQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32461 invoked by uid 550); 16 Mar 2016 17:48:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32439 invoked from network); 16 Mar 2016 17:48:58 -0000
From: cve-assign@mitre.org
To: speirofr@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAJpd-bG6nP=mA6dCaQfTcKrhGSQOxPJg=SM0Ao34thtidyHZKQ@mail.gmail.com>
Message-Id: <20160316174622.56D53132E53B@smtpvbsrv1.mitre.org>
Date: Wed, 16 Mar 2016 13:46:22 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: The minissdpd (v 1.2.20130907-3) is affected by an improper validation of array index weakness

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://speirofr.appspot.com/files/advisory/SPADV-2016-02.md
> 
> https://bugs.debian.org/816759


> https://github.com/miniupnp/miniupnp/commit/b238cade9a173c6f751a34acf8ccff838a62aa47

>> The problem is the incorrect validation ... that does not consider
>> negative length values

> - if(p+l > buf+n) {
> + if(l > (unsigned)(buf+n-p)) {

Use CVE-2016-3178.


> https://github.com/miniupnp/miniupnp/commit/140ee8d2204b383279f854802b27bdb41c1d5d1a

>> the error handling code ... attempts to free the undefined memory
>> contents

> + memset(newserv, 0, sizeof(struct service)); /* set pointers to NULL */

Use CVE-2016-3179.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6ZuJAAoJEL54rhJi8gl5+zcP/1oXalzOckVO1akQQK2c/xSP
FyC7bnNx0JYfA85zkZoy5PLOypFlLtLoOUOsCgjeVCjQ6KVBQGMustr/qkMH9ooW
AHuOHRyvwIUtMP5PO3ffgetNqoQeLr0kEwyDH7dXtF35VOVhtrylzxVq9MlySboe
Y64R5ZMN5EhbU9cE/uwyTpMnAfbgyKPClgf4N1vxgiAB9pzQm+6wTpVKr1O3+j3g
PFPymfnjZzpbSVzLskj4I6hoywoG1x0Mvd0QfDLgSX+xZ3Z1AGw+efSZrqovlNoP
ybM9nkhagW878NK4xiD4Wv0I5gRrhW+UElxNvvRKYgSL9qL2gmj1E6hVdhWULy9p
d9U/zpVcdjLKxNgnyJmQFzc3cEtgWhQfENEKqEq8G4Vdm5d4yrNlaaAiPUkvBzRu
su4XE8z/EcUfaN3iHNvBiu3PX2Oo1l9GhxE1f1DfjbhDqxN86tAOlzmjK5AS0uY8
2NQ2zxDPffqwVvgUThmnA+0Jre9i//uiGiIqi1O5Pj6UkRzmObPwY39YmVJ/pssS
BepEvpJbrgLxyhWdhqfEYSyNKcnJzkq/Kr+YPJER1zjy9BLpdDA/jmXclN15gWpj
j+Wxap24GneDKxpNZXuaYqOKcMdoAEca55k2BDjZbKRCxImTugByf1yGwz89cRDV
Wvd/xLNzXI4eTnWsa4d1
=RWDk
-----END PGP SIGNATURE-----
