X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2528" "Thursday" "26" "May" "2016" "13:09:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526170915.0DDF2B2E02F@smtpvbsrv1.mitre.org>" "67" "[oss-security] Re: Fwd: CVE for PHP 5.5.36 issues" nil nil nil "5" "2016052617:09:15" "[oss-security] Re: Fwd: CVE for PHP 5.5.36 issues" (number mark "U       cve-assign@m May 26   67/2528  " thread-indent "\"[oss-security] Re: Fwd: CVE for PHP 5.5.36 issues\"\n") "<CAEsznC5htNHcq=f_tq8A99yD5k4t84AFaW=sj7RL589qMmoaXQ@mail.gmail.com>" ("<CAEsznC5htNHcq=f_tq8A99yD5k4t84AFaW=sj7RL589qMmoaXQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22431 invoked by uid 550); 26 May 2016 17:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22262 invoked from network); 26 May 2016 17:09:27 -0000
From: cve-assign@mitre.org
To: kaplanlior@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEsznC5htNHcq=f_tq8A99yD5k4t84AFaW=sj7RL589qMmoaXQ@mail.gmail.com>
Message-Id: <20160526170915.0DDF2B2E02F@smtpvbsrv1.mitre.org>
Date: Thu, 26 May 2016 13:09:15 -0400 (EDT)
Subject: [oss-security] Re: Fwd: CVE for PHP 5.5.36 issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.php.net/?p=php-src.git;a=commit;h=7a1aac3343af85b4af4df5f8844946eaa27394ab
> Author: Stanislav Malyshev <stas@php.net>
> Date:   Mon May 23 00:28:02 2016 -0700
> 
>     Fixed https://bugs.php.net/bug.php?id=72227: imagescale out-of-bounds read
> 
>     Ported from
> https://github.com/libgd/libgd/commit/4f65a3e4eedaffa1efcf9ee1eb08f0b504fbc31a

Use CVE-2013-7456.


> https://git.php.net/?p=php-src.git;a=commit;h=97eff7eb57fc2320c267a949cffd622c38712484
> Author: Stanislav Malyshev <stas@php.net>
> Date:   Sun May 22 17:49:02 2016 -0700
> 
>     Fix https://bugs.php.net/bug.php?id=72241: get_icu_value_internal out-of-bounds read

Use CVE-2016-5093.


> https://git.php.net/?p=php-src.git;a=commit;h=0da8b8b801f9276359262f1ef8274c7812d3dfda
> Author: Stanislav Malyshev <stas@php.net>
> Date:   Sun May 15 23:26:51 2016 -0700
> 
>     Fix https://bugs.php.net/bug.php?id=72135 - don't create strings with lengths outside int range

Use CVE-2016-5094 for the original report that had the "[2016-05-16
06:28 UTC] Fix in security repo as
0da8b8b801f9276359262f1ef8274c7812d3dfda" response. Use CVE-2016-5095
for the additional issue reported in the "[2016-05-17 12:55 UTC]"
comment.


> https://git.php.net/?p=php-src.git;a=commit;h=abd159cce48f3e34f08e4751c568e09677d5ec9c
> Author: Stanislav Malyshev <stas@php.net>
> Date:   Mon May 9 21:55:29 2016 -0700
> 
>     Fix https://bugs.php.net/bug.php?id=72114 - int/size_t confusion in fread

Use CVE-2016-5096.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIbBAEBCAAGBQJXRy0IAAoJEHb/MwWLVhi2R7oP+Ogf1v4tOqN/amnRHXFyf5kP
hyZ3PdNuquL4GRkOkJ68BuJI/Cxa4VSWRPXWn2w/mASLZBKqdxK26hq3q2QvIqSH
gmtW8iHX/mxFf+TqSJDkU8LCEj7Ri9L4a+Ttn6UKsevmThG8rvBKRQxN8clBmm1W
5sJpXwdYVDQ0n9boxS19T5rKiwUJg1nlH2CIDjrt4TEQBf+cOs5moXpppmaVvISJ
mda38TZ+Ob2Kz/J84wluKP+IxAV70KTDTojzPj4062yP3Uh2UYElqOd+Wvewzjmv
5Mf1iuFG85jNpq12VBULpgK71ErbcIAe/0RAbFIuNdLdR5+FQFGCypcrEyPwPrWv
G7J9ywExBA3eaIrax0ANXLymMKw/IdBW9NqDB3PLOA9Hb4WJCNmmX7GuUfSoxthM
SrjOLBwrB+H63cCps/Xgn/lHc10T7hFZz4TCVTKcCni/EAPlDuPNVamA8hjAz47R
W2QyqTuRvtxRqhs2kEt1fsobOqUqM01Ji0z6MZg9LVj++vuFBelC+vG/KjYHZLvD
2ahvIqiY+nrOvP/rVLTpVBMKDsjSblPmyg/8MIDgoLg182d7qaoeEo7sSkZzcHWe
UNIxWP0b0T+ZZhqCLTxOIQe2Yq1Pa9zBZ93fIBCQjxWdBja9NihNM60ddMAAqteN
17GUP+gKyWBvFYqX08c=
=OwOj
-----END PGP SIGNATURE-----
