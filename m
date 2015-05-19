X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2515" "Monday" "18" "May" "2015" "23:15:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150519031554.36633B2E035@smtpvbsrv1.mitre.org>" "63" "[oss-security] Re: About PHP and CVE-2015-1353" nil nil nil "5" "2015051903:15:54" "[oss-security] Re: About PHP and CVE-2015-1353" (number mark "        cve-assign@m May 18   63/2515  " thread-indent "\"[oss-security] Re: About PHP and CVE-2015-1353\"\n") "<55487A4D.3050303@fedoraproject.org>" ("<55487A4D.3050303@fedoraproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19712 invoked by uid 550); 19 May 2015 03:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19665 invoked from network); 19 May 2015 03:16:06 -0000
In-Reply-To: <55487A4D.3050303@fedoraproject.org>
Message-Id: <20150519031554.36633B2E035@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 18 May 2015 23:15:54 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: About PHP and CVE-2015-1353
To: remi@fedoraproject.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> On bad input, the call will produce a bad output.
> 
> I don't see any way to exploit this for any bad thing.
> 
> I really think we should reject this CVE.
> Upstream doesn't even consider this as a bug.

>> Multiple integer overflows in the calendar extension in PHP through
>> 5.6.7 allow remote attackers to cause a denial of service or possibly
>> have unspecified other impact via a crafted year value to (1) the
>> GregorianToSdn function in gregor.c or (2) the JulianToSdn function in
>> julian.c, as demonstrated by a crafted third argument to the
>> gregoriantojd or juliantojd function.

We are rejecting this CVE because there is, in effect, a specification
indicating that PHP would not be the responsible product for any
security issue related to a large number in the third argument to the
gregoriantojd or juliantojd function.

The http://php.net/manual/en/function.gregoriantojd.php and
http://php.net/manual/en/function.juliantojd.php pages state:

  year

     The year as a number between -4714 and 9999

  year

     The year as a number between -4713 and 9999

(Similar documentation has existed for several years, probably going
back to when gregoriantojd and juliantojd were first implemented.)

The integer overflow occurs for a year much larger than 9999
(approximately 1.47 million). This violates the specification, and it
is reasonable for PHP's behavior to be undefined. It's conceivable
that an open-source application exists with a security impact for
untrusted input of a year such as 1.47 million: in that case, a CVE ID
could be assigned to that application.

(In other words, a CVE can exist for an integer overflow that is
relevant only because of business logic. A CVE for an integer overflow
does not require the overflow to have any effect on memory safety.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVWqpkAAoJEKllVAevmvmsAxsIALNWNhkrF21EIeVWqvDTkrwz
99ldxVEIVbtDR8o2ouzKQrBVMZNI0lmDQ2qzVBtdKwf9oWIjTOYvsgQtuqDDRFOU
Ab0RJl+6CnY8tvFVCZh7Y2IoYz3GM3BnAVF0fyXygnI2cPcfq6jWAOHNw1iikWOp
9PfqGEkq1kJpNzD+qGG30Get9UfzPwi5IyXfMDhUWB9in7bgYPfkn2IOiTlgRXA6
wTxhdM+oV6QfrDQBe8NDscMl89Fhu7qotiRexQiPLifEs0O+LfptxckcSyPW+dkT
RmeIwq2HOsBeGCcDcSWKXLHCCqqFilso99E8IjJ1jgf00+gDmV5j+nFA2KIilSc=
=AJ8l
-----END PGP SIGNATURE-----
