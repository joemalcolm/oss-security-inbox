X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Wednesday" "28" "September" "2016" "02:12:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160928061236.BC79DABC200@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption" "^Cc:" nil nil "9" "2016092806:12:36" "[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption" (number mark "        cve-assign@m Sep 28   53/1962  " thread-indent "\"[oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption\"\n") "<CAH4rwTLQx21iUP5HSxwCRVRdOYMHjDH9roxhgWjJghHujr9toA@mail.gmail.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27983 invoked by uid 550); 28 Sep 2016 06:12:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27964 invoked from network); 28 Sep 2016 06:12:49 -0000
In-Reply-To: <CAH4rwTLQx21iUP5HSxwCRVRdOYMHjDH9roxhgWjJghHujr9toA@mail.gmail.com>
Message-Id: <20160928061236.BC79DABC200@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 28 Sep 2016 02:12:36 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - OpenSLP 2.0 Memory Corruption
To: renorobert@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The following commit fixes a memory corruption bug that I reported in OpenSLP:
> 
> https://sourceforge.net/p/openslp/mercurial/ci/34fb3aa5e6b4997fa21cb614e480de36da5dbc9a/
> 
> Below are the details of the issue:
> 
> static int SLPFoldWhiteSpace(size_t len, char * str)
> {
>       char * p = str, * ep = str + len;
>       while (p < ep)
>       {
>             if (isspace(*p))
>             {
>                 char * ws2p = ++p;
>                 while (isspace(*p))
>                      p++;
>                 len -= p - ws2p;
>                 memmove(ws2p, p, ep - p);
> 
> The outer while loop checks for p < ep, but lack of bound check in
> inner while loop could result in p > ep. This will result in passing a
> very large 'size_t len' (ep - p) parameter for memmove().

>> Bug 151: Fix memory corruption due to possible overflow in SLPFoldWhiteSpace
>> common/slp_compare.c

Use CVE-2016-7567.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX617/AAoJEHb/MwWLVhi2UX8QAKBc9RSARlbHWcJyRKjGgota
RA7gbhguRpArlE9nNw3sg17gSFXeP9YbekIVcGbPHkzZsa8rjg/UuAJzJAUjIsWA
ttclyg+in1HUdq52wHViKkZNIdIzn5UsEPqd3XZICDjq+bFr1ZXr/PUXUeJ+erbm
dyf6mcII7RRGUwSG/wmhQmFsKnDKBaLkYdQ1+nywoLDpRpCHsR+FvQcMsv0cUPrh
Tupd1e+u/Th2U7X/qc3Gx4OqVzBpfLgZxT25XlOZtBgRQiXnFMnkpN40lCr5RiTh
eFuJFrajC7tVDQsz7x2zrZq45zwi2346XjpCW77H6NXehVCAjC2hkEUPAjW/iN0S
JDB9ZwiCEjMbfj/FV+7lxwfJY4jF1jMToeMnjkWQvxa4cswKaRzW4f7ozK4bdrXf
B2aQoU8V9Wv3raDue2vffZ+2gcZ8i6G4yUeCj0A5M6IR5Ns13cnozXggdEz3M0Qw
8jH5UTWUO5W79gydhdh6tk3PKN2e/zpLH/9iSMPLSw6fjCfVdN6lQMlEhv2SkSeJ
jA6Ba1JtzoWeccQ9moCKu+sknXsDL254ZTjY/e0MpELhO1T+MrIsY6byj5HcnElL
hW48Yjxk0BrEKG44DkAXY6MoRaY9ATjG2mE0RI6uHUARYcAQEDYqvt8PUm1hr/pD
SbxziiqDfsNC77qcjZbm
=S1u7
-----END PGP SIGNATURE-----
