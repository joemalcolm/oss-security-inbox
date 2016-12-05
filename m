X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2271" "Monday" "5" "December" "2016" "08:15:09" "+0100" "Marcus Meissner" "meissner@suse.de" "<20161205071509.GB26169@suse.de>" "51" "[oss-security] CVE Request: zlib security issues found during audit" nil nil nil "12" "2016120507:15:09" "[oss-security] CVE Request: zlib security issues found during audit" (number mark "U       meissner@sus Dec  5   51/2271  " thread-indent "\"[oss-security] CVE Request: zlib security issues found during audit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27982 invoked by uid 550); 5 Dec 2016 07:15:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27957 invoked from network); 5 Dec 2016 07:15:21 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 5 Dec 2016 08:15:09 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20161205071509.GB26169@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: zlib security issues found during audit

Hi,

Mozilla has asked Trail of Bits / TrustInSoft to audit zlib 
https://wiki.mozilla.org/MOSS/Secure_Open_Source/Completed#zlib

which had some findings (1 medium, 4 low):

https://wiki.mozilla.org/images/0/09/Zlib-report.pdf

extracting from the referenced document:

https://docs.google.com/document/d/10i1KZS5so8xDqH2rplRa2xet0tyTvvJlLbQQmZIUIKE/edit

zlib SOS Fund Audit Fix Log
Identified Issues

Finding 1: Incompatible declarations for external linkage function deflate (Medium)
Fix: https://github.com/madler/zlib/commit/3fb251b363866417122fe54a158a1ac5a7837101
VERIFIED


Finding 2: Accessing a buffer of char via a pointer to unsigned int (Low)
Mark Adler (zlib): [This] will remain as is. Yes, speed matters a great deal. The comment in
the report: "In the longer term, platform specific micro-optimizations should be deprecated.
These optimizations may no longer be necessary: modern compilers are much better at
optimizing and vectorizing code than they used to be." does not apply. This is not a
micro-optimization, and unless the compiler has the intelligence and creativity of a good
mathematician well-versed in discrete mathematics, can detect the application of Galois
Fields in the code, know somehow to postulate a theorem for an equivalent calculation over
GF(2) that will, in the end, improve the speed, prove that theorem, and then generate on its
own the additional tables to apply that theorem, then no, there is no way that a compiler is
coming up with that one.
UNRESOLVED:This issue remains under discussion to determine whether there is a way
which removes the mismatched pointer without affecting performance.


Finding 3: Out-of-bounds pointer arithmetic in inftrees.c (Low)
Fix: https://github.com/madler/zlib/commit/6a043145ca6e9c55184013841a67b2fef87e44c0
     https://github.com/madler/zlib/commit/9aaec95e82117c1cb0f9624264c3618fc380cecb
VERIFIED

Finding 4: Undefined left shift of negative number (Low)
Fix: https://github.com/madler/zlib/commit/e54e1299404101a5a9d0cf5e45512b543967f958
(This was already fixed on the development branch before being discovered.)
VERIFIED

Finding 5: Big-endian out-of-bounds pointer (Low)
Fix: https://github.com/madler/zlib/commit/d1d577490c15a0c6862473d7576352a9f18ef811
VERIFIED

Ciao, Marcus
