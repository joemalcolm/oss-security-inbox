X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3491" "Tuesday" "26" "July" "2016" "19:52:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160726235219.33E1C72E003@smtpvbsrv1.mitre.org>" "79" "[oss-security] Re: CVE request: flex: Buffer overflow in generated code (yy_get_next_buffer)" nil nil nil "7" "2016072623:52:19" "[oss-security] Re: CVE request: flex: Buffer overflow in generated code (yy_get_next_buffer)" (number mark "U       cve-assign@m Jul 26   79/3491  " thread-indent "\"[oss-security] Re: CVE request: flex: Buffer overflow in generated code (yy_get_next_buffer)\"\n") "<20160718145438.GB10685@ZEDAT.FU-Berlin.DE>" ("<20160718145438.GB10685@ZEDAT.FU-Berlin.DE>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19851 invoked by uid 550); 26 Jul 2016 23:52:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19824 invoked from network); 26 Jul 2016 23:52:31 -0000
From: cve-assign@mitre.org
To: asulfrian@ZEDAT.FU-Berlin.DE
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160718145438.GB10685@ZEDAT.FU-Berlin.DE>
Message-Id: <20160726235219.33E1C72E003@smtpvbsrv1.mitre.org>
Date: Tue, 26 Jul 2016 19:52:19 -0400 (EDT)
Subject: [oss-security] Re: CVE request: flex: Buffer overflow in generated code (yy_get_next_buffer)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> flex upstream change some integer type in 2.5.36[1] to unsigned integer
> types (size_t). Especially the num_to_read variable in
> yy_get_next_buffer is critical, because the buffer is resized if this
> value is _less_ or equal to zero.
> 
> With special crafted input it is possible, that the buffer is not
> resized if the input is larger than the default buffer size of 16k. This
> allows a heap buffer overflow.
> 
> It may be also remote usable, it depends on the software that is build
> using flex. We noticed for example, that bogofilter segfaults sometimes
> depending on the incoming mail.
> 
> Upstream already noticed that this may be a problem[2] but did not
> escalate it as a security issue.

Use CVE-2016-6354 for this num_to_read issue.


> Upstream also changed some other type
> back from size_t to int (for example in [3]) so maybe it is not
> sufficient to only change num_to_read back to int.
> 
> The upstream fix is contained in 2.6.1, but there are more integer type
> fixes in the master branch of flex (currently not in a released
> version).
> 
> As the issue is in the generated code during compile time, it is not
> sufficient to fix flex, but all binaries using flex as build-dependency
> may need a rebuild after fixing flex. Additionally there may be packages,
> that supply the generated source in the release-tar and do not use flex
> during building.

> 1: https://github.com/westes/flex/commit/9ba3187a537d6a58d345f2874d06087fd4050399
> 2: https://github.com/westes/flex/commit/a5cbe929ac3255d371e698f62dc256afe7006466
> 3: https://github.com/westes/flex/commit/7a7c3dfe1bcb8230447ba1656f926b4b4cdfc457

As far as we know, there has not been any discussion specifically
showing that there is a security issue associated with any of the
changes other than the num_to_read change. Accordingly, there are no
other CVE IDs at this time.

7a7c3dfe1bcb8230447ba1656f926b4b4cdfc457 refers to "sf 184, 187" - in other words,

  https://sourceforge.net/p/flex/bugs/184/
  https://sourceforge.net/p/flex/bugs/187/

Among the concerns cited is "POSIX mandates that yyleng has type int,
but flex defines it as yy_size_t. This breaks programs that use the
POSIX-compatible declaration." The MITRE CVE team has not been
studying 7a7c3dfe1bcb8230447ba1656f926b4b4cdfc457 or the mentioned
master-branch commits - the only point is that integer types sometimes
need to be changed without a security-related motivation.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXl/dBAAoJEHb/MwWLVhi2lpAP/RsWLefTG5FJUYhTUPpjU8pZ
lcbXV25XxNM3WMUoiVLMUnXAd+ZfVUQGWVgU4ZgXSXfuxLz5gdfoePPUJZ/d44py
nWcCfrXMBN7a4I1/YYzFmH2pA1i/QGY36XqJlxFRwDneCYJ9wDRpzAjqaEJMIe21
NJjTVd//X+nmcGRRbFlvBwMGp84Ajjuxotia1Fymqcsdv5KMF2btOiw5jgWPd4mo
sFj4nR594LEfJn5lCU39vNcVzWQtRzxewQwamesED6EId3VhuOCcm70JJ+lez4n4
gYdeew1MZw6P+Lc6nLqE7Fjtwl6mkKT8JrAkQCtLq2EtkmQn4MppOm2gf7XDyzOF
Vkoc/r0Bw7wlL0DrRWOEV2LUlMjO2MR7WIc/PTalGje3RVZRSFVY0hEJZ9e3zWkG
YoTqrLn3i48t4/1hAS5FddHlDrH95/xreubKqcolE5WNLAOdCiEWGj1pgqZGA17J
PHQ2jxi34hyAK9Ob4BaB8rPrBe4iP9GytBsyrtQ2o2rRCu6g4CLzrUil7IDZOkWW
LtXPDaY/+ZDgq8luebVxrkmcDnWJO7yCu2OgT0NPvoQlCnqFpUQ8jrv/T6MgBucd
7HaIydewUc96qmx1eSsnICcoXbelJt36n5ipiPLOaDikXMVKznpgeSBagHWVpVSj
5Nz46batU7sC/BdPWUos
=YRxV
-----END PGP SIGNATURE-----
