X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1571" "Tuesday" "30" "June" "2015" "17:40:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150630214059.71D3AABC0C3@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: Question about world readable config files and commented warnings" nil nil nil "6" "2015063021:40:59" "[oss-security] Re: Question about world readable config files and commented warnings" (number mark "        cve-assign@m Jun 30   36/1571  " thread-indent "\"[oss-security] Re: Question about world readable config files and commented warnings\"\n") "<5592FDC6.3050507@redhat.com>" ("<5592FDC6.3050507@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22415 invoked by uid 550); 30 Jun 2015 21:41:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22396 invoked from network); 30 Jun 2015 21:41:12 -0000
In-Reply-To: <5592FDC6.3050507@redhat.com>
Message-Id: <20150630214059.71D3AABC0C3@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 30 Jun 2015 17:40:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Question about world readable config files and commented warnings
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> the specific case of:
> 
> Configuration file takes a password and has world readable permissions
> by default (and let's assume no explicit warning in the comments in the
> config file).

CVE covers the CWE-276 ("Incorrect Default Permissions") issue and
similar weak-permissions issues as long as a security boundary is
crossed. A security boundary would be crossed on a general-purpose,
multi-user computer, as well as on most other multi-user platforms.
Typically there is an exception in the case of an embedded device
where a multi-user level of access control isn't set up and wasn't
ever intended or documented by the vendor. For example, obtaining an
OS image of an arbitrary embedded device, and noting that it has a
filesystem that supports file permissions, doesn't necessarily imply
anything about what those permissions were supposed to be.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVkwvZAAoJEKllVAevmvmsjSsIALdZzYAdIBfjW1UlQEfKwP7Z
7njDEjKjIHpIWOnH9S+LZyYfMBrCZT9mLtRPUzpFwNOuyV/SZBL7MBRJScyDlpQ4
INdBMNt+gN9NPbqs/ZqZgvA3LWSXSI5L8yI1DmM0Xx2/i2rZ6V6TXoH7u6+uiXDM
fGA/j8M7ePyXor4dwFx0kZo8LshzE4gTx12tr1u7TIcmMzyyPCTA+LOG7MbOeBFh
YICPwZPI99hGieeLmRu7+S8Cyd8pqyz4h7v1xkTheyEqFUdyp8LvuSO02uJYTeC6
8Yc/bp+QZl11OBRFDsAoIo2WBr+zASDRT60eJnvfK+v1IRmCZMqAo9fadUk8m58=
=YCxq
-----END PGP SIGNATURE-----
