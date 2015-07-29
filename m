X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4171" "Tuesday" "28" "July" "2015" "23:52:53" "-0400" "Michael McNally" "mcnally@isc.org" "<55B84E15.4010402@isc.org>" "116" "[oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure" nil nil nil "7" "2015072903:52:53" "[oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure" (number mark "U       mcnally@isc. Jul 28  116/4171  " thread-indent "\"[oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13514 invoked by uid 550); 29 Jul 2015 03:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12043 invoked from network); 29 Jul 2015 03:53:10 -0000
Message-ID: <55B84E15.4010402@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Jul 2015 23:52:53 -0400
From: Michael McNally <mcnally@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause
 named to exit with a REQUIRE assertion failure
To: oss-security@lists.openwall.com

A deliberately constructed packet can exploit an error in the
handling of queries for TKEY records, permitting denial of service.

CVE:                 CVE-2015-5477
Document Version:    1.0
Posting date:        28 July 2015
Program Impacted:    BIND
Versions affected:   9.1.0 -> 9.8.x, 9.9.0->9.9.7-P1, 9.10.0->9.10.2-P2
Severity:            Critical
Exploitable:         Remotely

Description:

   An error in the handling of TKEY queries can be exploited by an
   attacker for use as a denial-of-service vector, as a constructed
   packet can use the defect to trigger a REQUIRE assertion failure,
   causing BIND to exit.

Impact:

   Both recursive and authoritative servers are vulnerable to this
   defect.  Additionally, exposure is not prevented by either ACLs
   or configuration options limiting or denying service because the
   exploitable code occurs early in the packet handling, before
   checks enforcing those boundaries.

   All versions of BIND 9 from BIND 9.1.0 (inclusive) through BIND
   9.9.7-P1 and BIND 9.10.2-P2 are vulnerable.

   Operators should take steps to upgrade to a patched version as
   soon as possible.

CVSS Score:          7.8

CVSS Vector:         (AV:N/AC:L/Au:N/C:N/I:N/A:C)

For more information on the Common Vulnerability Scoring System and
to obtain your specific environmental score please visit:
https://nvd.nist.gov/cvss.cfm?calculator&version=2&vector=(AV:N/AC:L/Au:N/C:N/I:N/A:C)


Workarounds:         None.

Active exploits:     None known.

Solution:

   Upgrade to the patched release most closely related to your
   current version of BIND.  These can be downloaded from
   http://www.isc.org/downloads.

   +  BIND 9 version 9.9.7-P2
   +  BIND 9 version 9.10.2-P3

Acknowledgements:

   ISC would like to thank Jonathan Foote for discovering and
   disclosing this vulnerability.

Document Revision History:

    1.0 Advance Notification - 21 July, 2015
    2.0 Public Disclosure - 28 July, 2015

Related Documents:

See our BIND9 Security Vulnerability Matrix at
https://kb.isc.org/article/AA-00913 for a complete listing of
Security Vulnerabilities and versions affected.

If you'd like more information on ISC Subscription Support and
Advance Security Notifications, please visit http://www.isc.org/services

Do you still have questions?  Questions regarding this advisory
should go to security-officer@isc.org.  To report a new issue,
please encrypt your message using security-officer@isc.org's PGP
key which can be found here:
https://www.isc.org/downloads/software-support-policy/openpgp-key/.  If
you are unable to use encrypted email, you may also report new
issues at: https://www.isc.org/community/report-bug/.

Note:

   ISC patches only currently supported versions. When possible we
   indicate EOL versions affected.  (For current information on which
   versions are actively supported, please see
http://www.isc.org/downloads/).

ISC Security Vulnerability Disclosure Policy:

   Details of our current security advisory policy and practice can
   be found here:

https://kb.isc.org/article/AA-00861/164/ISC-Software-Defect-and-Security-Vulnerability-Disclosure-Policy.html

This Knowledge Base article https://kb.isc.org/article/AA-01272 is
the complete and official security advisory document.

Legal Disclaimer:

   Internet Systems Consortium (ISC) is providing this notice on
   an "AS IS" basis. No warranty or guarantee of any kind is expressed
   in this notice and none should be implied. ISC expressly excludes
   and disclaims any warranties regarding this notice or materials
   referred to in this notice, including, without limitation, any
   implied warranty of merchantability, fitness for a particular
   purpose, absence of hidden defects, or of non-infringement. Your
   use or reliance on this notice or materials referred to in this
   notice is at your own risk. ISC may change this notice at any
   time.  A stand-alone copy or paraphrase of the text of this
   document that omits the document URL is an uncontrolled copy.
   Uncontrolled copies may lack important information, be out of
   date, or contain factual errors.

(c) 2001-2015 Internet Systems Consortium

