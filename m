X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1546" "Wednesday" "7" "October" "2015" "00:30:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151007043024.D61FF72E0CF@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: Arm Mali gpu driver Dos vulnerability" nil nil nil "10" "2015100704:30:24" "[oss-security] Re: CVE Request: Arm Mali gpu driver Dos vulnerability" (number mark "U       cve-assign@m Oct  7   39/1546  " thread-indent "\"[oss-security] Re: CVE Request: Arm Mali gpu driver Dos vulnerability\"\n") "<CAAseMr5f2d-v8YxATJ9cE6uMdJ68Cj4QDdW3v+JpUFgo_gDV4Q@mail.gmail.com>" ("<CAAseMr5f2d-v8YxATJ9cE6uMdJ68Cj4QDdW3v+JpUFgo_gDV4Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3379 invoked by uid 550); 7 Oct 2015 04:30:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3346 invoked from network); 7 Oct 2015 04:30:36 -0000
From: cve-assign@mitre.org
To: chengjia4574@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAAseMr5f2d-v8YxATJ9cE6uMdJ68Cj4QDdW3v+JpUFgo_gDV4Q@mail.gmail.com>
Message-Id: <20151007043024.D61FF72E0CF@smtpvbsrv1.mitre.org>
Date: Wed,  7 Oct 2015 00:30:24 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Arm Mali gpu driver Dos vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The lastest gpu driver ARM MALI (used in many android devices) has a
> denial of service vulnerability

> http://community.arm.com/thread/8963
> http://malideveloper.arm.com/resources/drivers/open-source-mali-gpus-linux-kernel-device-drivers/

> crw-rw-rw- system   graphics  10,  58 2015-09-16 17:14 mali
> 
> as you can see, Mali devices in huawei P8 ale-ul00 can be accessed by all users!!!!
> 
> any users can trigger the phone to  crash  use a simple ioctl to /dev/mali

Use CVE-2015-7740.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWFJ+HAAoJEL54rhJi8gl5qC0P/RusS0R2dck4Fjd9V5FkeDcJ
qe0UAGqeQfo1HPF1o6NLm/DffrSLG3cYb2CrI7LBSz8z9J4O9BJDE2QpLjnNR61x
jGrWozYujPM+N5cJt4RMpHTvdS6c/UiV6XzKn10Au4PAmtjiG9IO9zateLiyC74H
sNrrzjZ91VefXGSncl8dauWjDEMViuX/hH8w2h4W8V+9xqF8hcebRM8RB2xpxbYo
Rgf2Gzf6DgbFtqPx8Za9adicYKTeFhbe063hTktjf+aBtudD0HWjtanhxzPd8Ypv
E61QQY/MXkF9N/85duBtg9bX1iZQtvDfBZI+4xpZZQhHcFikX6y6DnIXvEchblp7
vho8mYg7mzYf4q1yirCMTgko+WgvqcyrnCncCYn+8fN64xk8tQEwV1dAORwaLhoA
hEyLPUbbAgXPexs0C2hkYPDgvHpuMG1dTu4Dba6oGFl0ggBEmrpAJg0i5GrzAky2
Gz+YO7QewETMwePp9Nle6PsYKl/NKUJCLEnNzBYDGiSOSThI76hFrMWj2FBIEPzL
w6TUFKAmcE/BP3gtdK6NL9nXJ6qmw2Ma7JPaLxpkrW6RHWCLXRyLYSOLKGeKxHEb
CTZCoL1Vi02sBbijYXMjSK/+R/Qno91SrLGtASKe5J9vFltrhpNV2A19kB9Q/Ng8
wOhEe+pw25igVI20Y5JN
=Fwns
-----END PGP SIGNATURE-----
