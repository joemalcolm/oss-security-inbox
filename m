X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Wednesday" "24" "April" "2019" "22:55:00" "-0800" "Michael McNally" "mcnally@isc.org" "<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>" "38" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" "^Date:" nil nil "4" "2019042506:55:00" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" (number mark "        mcnally@isc. Apr 24   38/1305  " thread-indent "\"[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28408 invoked by uid 550); 25 Apr 2019 06:55:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28381 invoked from network); 25 Apr 2019 06:55:14 -0000
Message-ID: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Wed, 24 Apr 2019 22:55:00 -0800
From: Michael McNally <mcnally@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743,
 CVE-2019-6467, and CVE-2019-6468)
To: oss-security@lists.openwall.com

Today ISC disclosed two vulnerabilities affecting BIND as well
as a third vulnerability which affects *only* BIND Supported Preview
Edition (a special feature-preview version of BIND provided to
ISC support customers.)

Information about the vulnerabilities can be found in the ISC Knowledge
Base:

   CVE-2018-5743: Limiting simultaneous TCP clients is ineffective
   https://kb.isc.org/docs/cve-2018-5743

   CVE-2019-6467: An error in the nxdomain redirect feature can cause
   BIND to exit with an INSIST assertion failure in query.c
   https://kb.isc.org/docs/cve-2019-6467

   CVE-2019-6468: BIND Supported Preview Edition can exit with an
   assertion failure if nxdomain-redirect is used
   https://kb.isc.org/docs/cve-2019-6468

New releases of BIND have been issued to fix the vulnerabilities above.
They may be downloaded from the ISC website:  https://www.isc.org/downloads

   -  9.11.6-P1
   -  9.12.4-P1
   -  9.14.1

With the public disclosure of these vulnerabilities, parties which
had been given advance notice concerning them are released from
non-disclosure and packagers and redistributors are encouraged to
publish updated packages containing fixes.

If you have additional questions, please direct them to
security-officer@isc.org

Thank you,

Michael McNally
ISC Security Officer
