X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2638" "Tuesday" "17" "March" "2015" "00:50:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150317045059.C7BA842E06C@smtpvbsrv1.mitre.org>" "79" "[oss-security] Re: CVE Request: Cap'n Proto: Several issues" nil nil nil "3" "2015031704:50:59" "[oss-security] Re: CVE Request: Cap'n Proto: Several issues" (number mark "        cve-assign@m Mar 17   79/2638  " thread-indent "\"[oss-security] Re: CVE Request: Cap'n Proto: Several issues\"\n") "<20150316062556.GA7658@eldamar.local>" ("<20150316062556.GA7658@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9882 invoked by uid 550); 17 Mar 2015 04:51:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9862 invoked from network); 17 Mar 2015 04:51:11 -0000
In-Reply-To: <20150316062556.GA7658@eldamar.local>
Message-Id: <20150317045059.C7BA842E06C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, debian@tomlee.co, bernat@debian.org
Date: Tue, 17 Mar 2015 00:50:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Cap'n Proto: Several issues
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Can you assign CVEs for the following issues in Cap'n Proto? Details
> and fixing commits are referenced in upstream problem descriptions:

> 1/ Integer overflow in pointer validation
>   - https://github.com/sandstorm-io/capnproto/blob/master/security-advisories/2015-03-02-0-c%2B%2B-integer-overflow.md
>   - https://bugs.debian.org/780565

> Discovered by Ben Laurie

> KJ_REQUIRE(elementTag->structRef.wordSize() / ELEMENTS * ElementCount64(count) <= wordCount,

> KJ_REQUIRE(wordsPerElement * ElementCount64(elementCount) <= wordCount,

> KJ_REQUIRE(ElementCount64(size) * wordsPerElement <= wordCount,

Use CVE-2015-2310.


> 2/ Integer underflow in pointer validation
>   - https://github.com/sandstorm-io/capnproto/blob/master/security-advisories/2015-03-02-1-c%2B%2B-integer-underflow.md
>   - https://bugs.debian.org/780566

> Discovered by Kenton Varda

> KJ_REQUIRE(size > 0

Use CVE-2015-2311.


> 3/ CPU usage amplification attack
>   - https://github.com/sandstorm-io/capnproto/blob/master/security-advisories/2015-03-02-2-all-cpu-amplification.md
>   - https://bugs.debian.org/780567

> Discovered by Ben Laurie

> Cap'n Proto takes the philosophy that any security mistake that is
> likely to be common in naively-written application code is in fact a
> bug in Cap'n Proto

> list could claim to have up to 2^29-1 elements while only taking 8 or
> 16 bytes on the wire

> application may notice nothing wrong and proceed to iterate through
> and handle each element in the list, potentially taking a lot of time
> and resources

Use CVE-2015-2312.


> 4/ CPU usage amplification attack #2
>   - https://github.com/sandstorm-io/capnproto/blob/master/security-advisories/2015-03-05-0-c%2B%2B-addl-cpu-amplification.md
>   - https://bugs.debian.org/780568

> Discovered by David Renshaw

> The new case occurs only if the application invokes the totalSize()
> method on an object reader.

Use CVE-2015-2313.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVB7HrAAoJEKllVAevmvms508IAKyyZQLBjgtp7bTd7lpZ5bKQ
tkHPwBKJLt5AyjkgFN+J1lF0ijW1sInbuzs/n35R/yDk7y1LByOqSUqacPiQma2T
XU+yaK13+7H4Cn3w3t9Vukix6CdhvRTlTKpK5ijF9o3PK+oWgFhcvwSiNvQ7H5nW
V3L7cxYOjUlJabqvWI60rHW1mrVSLc5GMOSFrH7Aau39KbDJAa8EkfkRITYz2Ip2
XZWvqobldBY9wgRvDGdDgpgFGvZM5nMv7irNtSnU3va8eEWXTmh5Mzu1IaKwIuZZ
LH5uX91LbcCeRSRgxfHSIn9xuyMhoQrE+GvfXVzzO54U8r6WgitKD3OguALaXU8=
=9zKY
-----END PGP SIGNATURE-----
