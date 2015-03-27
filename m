X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2228" "Friday" "27" "March" "2015" "19:46:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150327234640.B2FE942E03C@smtpvbsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "3" "2015032723:46:40" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        cve-assign@m Mar 27   60/2228  " thread-indent "\"[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<55152377.8010102@openwall.com>" ("<55152377.8010102@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27988 invoked by uid 550); 27 Mar 2015 23:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27951 invoked from network); 27 Mar 2015 23:46:52 -0000
In-Reply-To: <55152377.8010102@openwall.com>
Message-Id: <20150327234640.B2FE942E03C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 19:46:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g
To: ch3root@openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Aren't you usually combine similar issues into one CVE anyway? Same
> reported type ("stack corruption"

In this context, we don't look at stack corruption as a "type."

In general, the number of assigned CVE IDs can depend on both the
inline text of the oss-security request message as well as other
information that may be available at relatively low cost.

Here's are two examples. (We'll use "integer underflow" in the
examples even though that can be vague as discussed in the
http://cwe.mitre.org/data/definitions/191.html Alternate Terms.)

Real example in open-source FreeXL code:

  #1:  A flaw was found in the way FreeXL reads sectors from the input
  file. A specially crafted file could possibly result in stack
  corruption

  #3: A flaw was found in the way FreeXL handles a premature EOF. A
  specially crafted input file could possibly result in stack corruption

  Both of these say "stack corruption." However, #1 is about
  "workbook->sector_end <= (workbook->p_in - workbook->sector_buf)" -
  the unpatched code omitted a necessary test for an integer
  underflow. #3 is not related to an integer underflow.

Hypothetical example:

  ClosedSourceProduct 1.1 changelog

  1.1 is a mandatory security update to address these two
  stack-corruption issues:

  - fixed an integer underflow vulnerability (Bug #123)

  - fixed an EOF handling vulnerability (Bug #456)

If reasonably possible, we want the number of CVE IDs to be the same
in the open-source example and the closed-source example.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVFetpAAoJEKllVAevmvmsUJMH/3KHjKjnHuImmwWv5iYgi5tG
+PeUg+IdgDDdgOgbtX0zYSDghlQBu5oqVWXtetpCM1Kp8E7PaX5QiZGj23qQHS24
E2ipxyi6dWTH3dD6vw1kgPGg3n+neqe2sBii7AZru5S6jKsxcv398y4Xh2aF0h9S
H3uVHb+AOaXr85Zt2mwgCPesYhxnds5vo1U80yWi5jHW+52RaSIAwCLYs8UaDnv6
sflKup1D+t2Prj3QTfjk7o+c7iBhGaCgIQEwOlVLqwnUpgTWHbopiDrQe3y6eR7n
FlwWRkCRYPyDNvuwLnV+IlGmPI25vrZ7cH1bHZEFhwjepiikuBPFyO9d4C9DRhU=
=Jm7d
-----END PGP SIGNATURE-----
