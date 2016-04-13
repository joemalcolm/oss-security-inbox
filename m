X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2333" "Wednesday" "13" "April" "2016" "10:20:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160413142040.A22F96C04FB@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE-Request for brltty auth bypass" "^Cc:" nil nil "4" "2016041314:20:40" "[oss-security] Re: CVE-Request for brltty auth bypass" (number mark "        cve-assign@m Apr 13   57/2333  " thread-indent "\"[oss-security] Re: CVE-Request for brltty auth bypass\"\n") "<20160412074937.GA30265@suse.de>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5811 invoked by uid 550); 13 Apr 2016 14:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5792 invoked from network); 13 Apr 2016 14:20:52 -0000
In-Reply-To: <20160412074937.GA30265@suse.de>
Message-Id: <20160413142040.A22F96C04FB@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 13 Apr 2016 10:20:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-Request for brltty auth bypass
To: krahmer@suse.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.suse.com/show_bug.cgi?id=967436

We don't know enough about the deployment of this product to decide
whether a CVE is needed. As far as we can tell, the available
information is:

  - the last release was 5.3.1 on 2015-12-21

  - the vulnerable code was not in that release

  - the vulnerable code was added in
    https://github.com/brltty/brltty/commit/e62b3c925d03239a372d425fb87b2cac65d8ef19
    on 2016-01-28

  - the vulnerable code was fixed in
    https://github.com/brltty/brltty/commit/74affe7d1401f2b43ad32e18cb78704d22604ad7
    on 2016-04-12

  - SUSE Bug 967436 mentions the existence of home:mgorse:branches:hardware but
    doesn't state that this was distributed to any SUSE customers

  - https://github.com/brltty/brltty/blob/master/README doesn't seem to
    have any suggestion that building the latest code from the master
    branch was ever recommended for an end user

We can assign a CVE ID if there's an assertion that it's reasonable to
expect that someone was affected by this vulnerability. Otherwise, we
feel it could be thought of as one of the millions of cases where
potentially unfinished code is added to a master branch of something,
with the expectation that it could be reviewed/revised at some point
before it is released.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDlUvAAoJEL54rhJi8gl5nf4P/0xGuraGsr0t2YArrabJsLhy
psyPiii4a5IenxWfvuhysCRyR1em07qjyxZv10AwxRbAj9WdmIODlXybPnSq6lEc
wzwkZT1VUKUrgbSOCHIY4S6qEgn4uGinTf0LiT72aAVPdtfUOaPatZLGVr/DWPwb
qdDRE2e768JnbwCu6KEyHYTuOwAG6BX0vorYjdCpPLoxgt9jKccgX7GgTp7Chfj9
ya8GM2nLvRVwP5RfD/so9OpxU7nFHT8jLnNh+JzqcPj5tUpDSn8miT05lavYQpBa
Bttxapv57evtNTPtpk4cJ1efqNvFNsP9LNaWDWhD8xetlxHIpHtoamYfWohl/SB8
6H9tPo2MtR8teoljJ/rsYJmqHDCG6jKJswdnFyxtdWq6KYf0sqGH4v7fMmENslKN
8bUDYyUAZxyqNAX67sJHWDB7LzWGQKMTMdLaLQ/RU0JuNnHBs5ZTkqYno4R3r3Z8
NKDPs01VivU6X53grCOeLKGcb8JdEHVfdICm2wVas7m80RWQVwlovrXXF9DoevUv
uXt/8MwkEQOO7dWwDmXjkXODmxGCMGznCyPQecyIqa68M0B6I7SJAZeEg4SDQ1Tf
6gXSfIbahurkkJKAy43ftI4RG42M6pElHXzNarV6fNK9q0a4jTYxyabrJPceRoi8
dYBecJWP9YFfamGXYADJ
=F6zB
-----END PGP SIGNATURE-----
