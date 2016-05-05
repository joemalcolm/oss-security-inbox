X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3499" "Thursday" "5" "May" "2016" "01:02:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160505050222.ABB4B3AE03D@smtpvbsrv1.mitre.org>" "95" "[oss-security] Re: CVE Request: No Demangling During Analysis of Untrusted Binaries" "^Cc:" nil nil "5" "2016050505:02:22" "[oss-security] Re: CVE Request: No Demangling During Analysis of Untrusted Binaries" (number mark "        cve-assign@m May  5   95/3499  " thread-indent "\"[oss-security] Re: CVE Request: No Demangling During Analysis of Untrusted Binaries\"\n") "<5716C1F8-38A3-4FEF-A222-AA5BDC3298F1@gmail.com>" ("<5716C1F8-38A3-4FEF-A222-AA5BDC3298F1@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32257 invoked by uid 550); 5 May 2016 05:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32230 invoked from network); 5 May 2016 05:02:37 -0000
In-Reply-To: <5716C1F8-38A3-4FEF-A222-AA5BDC3298F1@gmail.com>
Message-Id: <20160505050222.ABB4B3AE03D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, bschmidt@redhat.com, florian@eich-krohm.de, nickc@redhat.com
Date: Thu,  5 May 2016 01:02:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: No Demangling During Analysis of Untrusted Binaries
To: boehme.marcel@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1) Exploitable Buffer Overflow (Fixed in GCC trunk)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=69687

As far as we can tell, you sent a CVE request for this vulnerability
to cve-assign@mitre.org (from a different email address of yours) on
2016-02-05, and we replied with a CVE ID on 2016-02-06. Is there an
additional aspect of 69687 that you are reporting now?

Our reply at that time was:

  > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=69687

  >> Since n is a signed int, n wraps over at some iteration. Since,
  >> realloc expects n to be unsigned, we end up allocating less memory
  >> then actually needed. In the beginning though n is too large and
  >> xrealloc simply complains. However, if you play a bit with the length
  >> of arg, you'll quickly turn that integer overflow in a buffer
  >> overflow.

  Use CVE-2016-2226 for this incorrect handling of a signed int.


> 2) Invalid Write due to a Use-After-Free (Fixed in GCC trunk)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70481

Comment 2 says "two distinct bugs."

Use CVE-2016-4487 for the btypevec bug.

Use CVE-2016-4488 for the ktypevec bug.


> 3) Invalid Write due to Integer Overflow (Fixed in GCC trunk)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70492

Use CVE-2016-4489.


> 4) Write Access Violation (Fixed in GCC trunk)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70498

Use CVE-2016-4490 for this issue described as "Root cause: In
cp-demangle.c sometimes length-variables are of type long ... Other
times they are of type int."

Note that this CVE ID is not about the Comment 1 "case where
consume_count returns -1" -- that comment does not belong in 70498 at
all.


> 5) Various Stack Corruptions (Patch under Review)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70909
> https://gcc.gnu.org/ml/gcc-patches/2016-05/threads.html#00105

Use CVE-2016-4491 for this issue caused by a lack of checking for "has
itself as ancestor more than once."


> 6) Write Access Violation (Patch under Review)
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70926
> https://gcc.gnu.org/ml/gcc-patches/2016-05/threads.html#00223

Use CVE-2016-4492 for both of the "first read the value of a length
variable len from the mangled string, then strncpy len characters from
the mangled string; more than necessary" issues.

Use CVE-2016-4493 for both of the "read the value of an array index n
from the mangled string, which can be negative due to an overflow"
issues.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKtL3AAoJEHb/MwWLVhi2+5gP/3qHIH8ngHS85trkFRrAiLtn
5nNVzyil6xjQCo7F7ScLfYQK0AfKGhBhQzO16dAI2hHMIRc8AaXH4cinRHHHQrYM
hrwj5SoZoXMgrUZLZJ2v1H0oidBwMFUqprnC1NEgqNMoRw6DM0NZTsy4opgKCl1R
dbSfqBybZr+qscnn4wAaN2ctOS0A2/PlSIxDJ5LRPEJyb+fLNVVnbj5LIybjD/To
uPpQPkGKekK3oD52huRlb5hLy9qq3eVzoyu0Lup34ec0iRnLQjqwmYm8dZvbhPnt
QMgZPe0iyRaQAtpE5nj7eZDhFuQ9vqS1KikzuinZRUkLcIGroGmnUtGdCCDUHzL1
s12c6fpGkU2Huuz9mgVrdtOKdcSyFnvEl14xMCQLBhf8LVNKQ9RkVaHPUWLt+0uw
/BtwNCs6NSAGtfi0yuX4F76u3SGKTnell7Za9BJQKXZFeDtwTUc9N01eWGpovB1l
um6HQ75vca6+kxlX6ZZn9Zm7Dr1CNtcCLfKka9MtxmfkaucV5vOjlqURA58jrpdS
NJU5TgRr2WcFqI/3gfOzQFkz1R1voZMgQJEKNIRtLC04nLWxXwoRAGQ9oJK34y0Z
BVoWD9jDc3lEXx+X5MOmUZy4+RQQl0qizLquLxqTXbRUBpgsFP0Mw/w7dWCkghCA
kazRhIrShTety5Dx7/qO
=Qvdr
-----END PGP SIGNATURE-----
