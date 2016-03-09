X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["775" "Wednesday" "9" "March" "2016" "14:02:46" "-0600" "Jeremy C. Reed" "security-officer@isc.org" "<alpine.NEB.2.11.1603091401200.15253@t1.m.reedmedia.net>" "23" "[oss-security] ISC BIND vulnerabilities are now public (CVE-2016-1285,  CVE-2016-1286, CVE-2016-2088)" nil nil nil "3" "2016030920:02:46" "[oss-security] ISC BIND vulnerabilities are now public (CVE-2016-1285, CVE-2016-1286, CVE-2016-2088)" (number mark "U       security-off Mar  9   23/775   " thread-indent "\"[oss-security] ISC BIND vulnerabilities are now public (CVE-2016-1285,  CVE-2016-1286, CVE-2016-2088)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5819 invoked by uid 550); 9 Mar 2016 20:02:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5798 invoked from network); 9 Mar 2016 20:02:57 -0000
Date: Wed, 9 Mar 2016 14:02:46 -0600 (CST)
From: "Jeremy C. Reed" <security-officer@isc.org>
X-X-Sender: reed@t1.m.reedmedia.net
To: oss-security@lists.openwall.com
cc: security-officer@isc.org
Message-ID: <alpine.NEB.2.11.1603091401200.15253@t1.m.reedmedia.net>
User-Agent: Alpine 2.11 (NEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [oss-security] ISC BIND vulnerabilities are now public (CVE-2016-1285,  CVE-2016-1286,
 CVE-2016-2088)

Please be advised that ISC announced security advisories for
vulnerabilities in ISC BIND.

CVE-2016-1285: An error parsing input received by the rndc control
channel can cause an assertion failure in sexpr.c or alist.c. All
versions since 9.2.0 are affected.
https://kb.isc.org/article/AA-01352

CVE-2016-1286: A problem parsing resource record signatures for
DNAME resource records can lead to an assertion failure in resolver.c
or db.c. All versions since 9.0.0 are affected.
https://kb.isc.org/article/AA-01353

CVE-2016-2088: A response containing multiple DNS cookies causes
servers with cookie support enabled to exit with an assertion
failure in resolver.c. This affects the 9.10.x versions.
https://kb.isc.org/article/AA-01351



Jeremy C. Reed
ISC Security Officer

