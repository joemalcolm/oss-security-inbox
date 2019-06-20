X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["962" "Wednesday" "19" "June" "2019" "17:13:38" "-0800" "Michael McNally" "mcnally@isc.org" "<f4082239-934b-1bdd-2125-0ad609ed5058@isc.org>" "31" "[oss-security] ISC disclosed BIND vulnerability CVE-2019-6471." nil nil nil "6" "2019062001:13:38" "[oss-security] ISC disclosed BIND vulnerability CVE-2019-6471." (number mark "U       mcnally@isc. Jun 19   31/962   " thread-indent "\"[oss-security] ISC disclosed BIND vulnerability CVE-2019-6471.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ISC disclosed BIND vulnerability CVE-2019-6471." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5416 invoked by uid 550); 20 Jun 2019 01:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5370 invoked from network); 20 Jun 2019 01:13:51 -0000
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Message-ID: <f4082239-934b-1bdd-2125-0ad609ed5058@isc.org>
Date: Wed, 19 Jun 2019 17:13:38 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] ISC disclosed BIND vulnerability CVE-2019-6471.

Today ISC disclosed a vulnerability in our BIND software.

Information about the vulnerability can be found in the ISC Knowledge
Base:

   CVE-2019-6471:  A race condition when discarding malformed
   packets can cause BIND to exit with an assertion failure
   https://kb.isc.org/docs/cve-2019-6471

New maintenance releases of BIND released today contain the fix
for the vulnerability along with other bug fixes and feature
improvements.  They may be downloaded from the ISC web site's
download page (https://www.isc.org/downloads)

   -  9.11.8
   -  9.12.4-P2
   -  9.14.3
   -  9.15.1

With the public disclosure of these vulnerabilities, parties which
had been given advance notice concerning them are released from
non-disclosure and packagers and redistributors are encouraged to
publish updated packages containing fixes.

If you have additional questions, please direct them to
security-officer@isc.org

Thank you,

Michael McNally
ISC Security Officer
