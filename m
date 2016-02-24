X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2090" "Wednesday" "24" "February" "2016" "14:31:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160224193156.848ECB2E070@smtpvbsrv1.mitre.org>" "51" "[oss-security] Re: php: stack overflow when decompressing tar archives" nil nil nil "2" "2016022419:31:56" "[oss-security] Re: php: stack overflow when decompressing tar archives" (number mark "U       cve-assign@m Feb 24   51/2090  " thread-indent "\"[oss-security] Re: php: stack overflow when decompressing tar archives\"\n") "<m1ziuspb5e.darpa@darpa.mil>" ("<m1ziuspb5e.darpa@darpa.mil>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32531 invoked by uid 550); 24 Feb 2016 19:32:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32513 invoked from network); 24 Feb 2016 19:32:08 -0000
From: cve-assign@mitre.org
To: hji@dyntopia.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <m1ziuspb5e.darpa@darpa.mil>
Message-Id: <20160224193156.848ECB2E070@smtpvbsrv1.mitre.org>
Date: Wed, 24 Feb 2016 14:31:56 -0500 (EST)
Subject: [oss-security] Re: php: stack overflow when decompressing tar archives

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> issue which may be of
> interest to anybody shipping PHP older than 5.5.32, 5.6.18 or 7.0.3
> without FORTIFY:
> 
> https://bugs.php.net/bug.php?id=71488

(Just for simplicity, the following comments only mention PHP 7.x -
there may be analogous statements about PHP 5.x. This does not mean
that a PHP 5.x issue from 71488 has a different CVE ID.)

Use CVE-2016-2554 for the issue that was fixed in the 7.0.3 release.
We understand that this was in the:

  http://git.php.net/?p=php-src.git;a=commit;h=07c7df68bd68bbe706371fccc77c814ebb335d9e

commit. This commit has most of the changes that were made in
ext/phar/tar.c between the 7.0.2 release and the 7.0.3 release. There
was also a change from "if (entry.filename_len == UINT_MAX)" to "if
(entry.filename_len == UINT_MAX || entry.filename_len == 0)" that may
be unrelated.

The "2016-02-01 15:01 UTC" comment in 71488 seems to discuss an
additional concern. If there is a remaining vulnerability that was not
fixed in 7.0.3, that vulnerability is not covered by the CVE-2016-2554
ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWzgR/AAoJEL54rhJi8gl5yOsP/A/7iIQnhsYqIUyBBNf6f9xs
8Tyo9X0zvp+Bz0IkiqIjwVkqRHc5wCxlsGK79L+nXVdByZfV39ifkmRjlQmMFSqQ
WOeHmMfnRowVbeQ/H/2PcnBIPxibVa0Q0bsRpCBZhftoGeKZl+1gVT3MPa1Cy20U
m/PNKDHgpcE2Lf3C8mRCOPHOW/rTixIoslWx6y8791whIb+pthhiCSHISSx/JtES
a1U5IJxte5dO1jJbE7326iO5PWrpIp1O23pUjo361+90oetUyIM1CKr2eNvnuLgO
yeQNMrB5byNZLdwLygKMcRXlXmFYIQdzSPICcx7VJVrCRT52go7oAcIUjX7eMGwj
CtesDMcMFG89phT6KjyPpoTNcYbxbGnkW4X6xFfSxEydWxmbU8jlREY9ZkW9VByz
ylXfz4jxGzjnDP+chxi0YjCTf6rAtO8wdUwcofrj9zd2g7IXre0ZXETUw3Agbj0w
CPkJxvZTNYJ58bo8QPaHRU1Gf4ZeSLuqmjQRrrIugQRVbS8tC5jsSgljDtTCXItw
yERkYr5zK5dAdcfxcVIbg/O2rJLis3x9DXOHrAmJhKbH6vt8QKGV3vIy9rZ2ZZOx
Wtb8SijhbGwb3C9ZMO6aYmT0q483Dpw1pRd9DgkNzkDNunN3qF2CSTV/xT8qVqyz
U5FwJlkLo7BXcPqar61M
=hnVy
-----END PGP SIGNATURE-----
