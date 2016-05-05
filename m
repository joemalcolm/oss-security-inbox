X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2597" "Thursday" "5" "May" "2016" "18:01:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160505220104.3054F6CC095@smtpvmsrv1.mitre.org>" "67" "[oss-security] Re: CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35" nil nil nil "5" "2016050522:01:04" "[oss-security] Re: CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35" (number mark "U       cve-assign@m May  5   67/2597  " thread-indent "\"[oss-security] Re: CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35\"\n") "<20160505145031.GA22827@eldamar.local>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9396 invoked by uid 550); 5 May 2016 22:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9312 invoked from network); 5 May 2016 22:01:16 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160505145031.GA22827@eldamar.local>
Message-Id: <20160505220104.3054F6CC095@smtpvmsrv1.mitre.org>
Date: Thu,  5 May 2016 18:01:04 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: PHP: several issues fixed with 7.0.6, 5.6.21 and 5.5.35

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1/ bcpowmod accepts negative scale and corrupts _one_ definition
>    - https://bugs.php.net/bug.php?id=72093
>    - https://git.php.net/?p=php-src.git;a=commit;h=d650063a0457aec56364e4005a636dc6c401f9cd

>> [2016-04-25 01:31 UTC] stas@php.net
>> 
>> Two problems here actually: bcpowmod accepting negative scale and
>> _one_ definition being overridden by scale adjustment.

Use CVE-2016-4537 for "bcpowmod accepting negative scale."

Use CVE-2016-4538 for "_one_ definition being overridden by scale adjustment."


> 2/ xml_parse_into_struct segmentation fault
>    - https://bugs.php.net/bug.php?id=72099
>    - https://git.php.net/?p=php-src.git;a=commit;h=dccda88f27a084bcbbb30198ace12b4e7ae961cc

>> AddressSanitizer: SEGV on unknown address

Use CVE-2016-4539.


> 3/ Out-of-bounds reads in zif_grapheme_stripos with negative offset
>    - https://bugs.php.net/bug.php?id=72061
>    - https://git.php.net/?p=php-src.git;a=commit;h=fd9689745c44341b1bd6af4756f324be8abba2fb

Use CVE-2016-4540 for the grapheme_stripos issue.

Use CVE-2016-4541 for the grapheme_strpos issue (separately discovered).


> 4/ Out of bounds heap read access in exif header processing
>    - https://bugs.php.net/bug.php?id=72094
>    - https://git.php.net/?p=php-src.git;a=commit;h=082aecfc3a753ad03be82cf14f03ac065723ec92

Use CVE-2016-4542 for the issue associated with the spprintf call.

Use CVE-2016-4543 for both issues in which "Illegal IFD size" validation was added.

Use CVE-2016-4544 for the issue in which "Invalid TIFF start" validation was added.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXK8GIAAoJEHb/MwWLVhi2/LAP/Rilr5fFWad/xntAVEnxwlFG
/mTNs7JMK4GMq64DkafJIkWcv96b0/Xbscb6FzpUtiSHvCKjWZKyQjau5nT1Z4mg
IlOgEC7CwDFXjPmSBxmhgK4RcjJv/XoHDBOkj8yH0PZ7rLcyGiJrbQ8kWl5t7rvc
YJApIajtiK6dRx8B7Ddcdo843Q2IpThPi47/VihSYP8z1IBx5I5uBpQxApVo/AA+
3Ayucf7+zI0pBGjOOAj0jaKA0n9RI8/6zRId0V8+sE1VQfPfh0809x9KqccWL2FB
TE+amquxVA/TRNugemsAy6XRog4WbCD38P2aAa076jW7BQmRw8tOaNFDJzCHGEhj
wYmhmIx+dbC6e+yRF5zb4BzZkxRm7uR2Psp8+QBj+BzaT/+6xrlGmjzGJhZhaU1n
usSpPTvWaeV1iP4CL6jKVDe18A0/brf2H7snwFjjTv2583PQ9QQLSKRWUNnfq3xX
xu+1MTPN/qStwHUUN2DyYLHytDKGBdYkTX867ZGrNIyaFpGKLvKVMrwJijwlWXdU
sLiFuDMaZLtzzN5vobpDcSGhtB26f/YDh2dA7BSPPTT1hOzOgwVL9uTX0hldZlcQ
hjAkVQ0rNVD8zo+JDxAk3wyphgF5gkb+KSOx+A9zPv5zO5hI/Trb4yygKHeLbGQU
2rDmztzq9xFdHeYEpid1
=z62X
-----END PGP SIGNATURE-----
