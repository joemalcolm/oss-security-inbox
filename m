X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3960" "Tuesday" "19" "January" "2016" "15:07:31" "-0600" "Jeremy C. Reed" "jreed@isc.org" "<alpine.NEB.2.11.1601191507010.10673@t1.m.reedmedia.net>" "107" "[oss-security] CVE-2015-8705: Problems converting OPT resource records and ECS options to text format can cause BIND to terminate." nil nil nil "1" "2016011921:07:31" "[oss-security] CVE-2015-8705: Problems converting OPT resource records and ECS options to text format can cause BIND to terminate." (number mark "U       jreed@isc.or Jan 19  107/3960  " thread-indent "\"[oss-security] CVE-2015-8705: Problems converting OPT resource records and ECS options to text format can cause BIND to terminate.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21783 invoked by uid 550); 19 Jan 2016 21:50:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22417 invoked from network); 19 Jan 2016 21:07:42 -0000
Date: Tue, 19 Jan 2016 15:07:31 -0600 (CST)
From: "Jeremy C. Reed" <jreed@isc.org>
X-X-Sender: reed@t1.m.reedmedia.net
To: oss-security@lists.openwall.com
Message-ID: <alpine.NEB.2.11.1601191507010.10673@t1.m.reedmedia.net>
User-Agent: Alpine 2.11 (NEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [oss-security] CVE-2015-8705: Problems converting OPT resource records and ECS
 options to text format can cause BIND to terminate.

CVE:                   CVE-2015-8705
Document Version:      2.0
Posting date:          19 January 2016
Program Impacted:      BIND
Versions affected:     9.10.0->9.10.3-P2
Severity:              Medium
Exploitable:           Remotely

Description:

   In versions of BIND 9.10, errors can occur when OPT pseudo-RR
   data or ECS options are formatted to text.  In 9.10.3 through
   9.10.3-P2, the issue may result in a REQUIRE assertion failure
   in buffer.c. In prior 9.10 versions, it may result in named
   crashing (such as with a segmentation fault) or other misbehavior
   due to a buffer overrun.

Impact:

   This issue can affect both authoritative and recursive servers
   if they are performing debug logging. (It may also crash related
   tools which use the same code, such as dig or delv.)

CVSS Score:            5.4
CVSS Vector:           (AV:N/AC:H/Au:N/C:N/I:N/A:C)

For more information on the Common Vulnerability Scoring System and
to obtain your specific environmental score please visit:
http://nvd.nist.gov/cvss.cfm?calculator&adv&version=2&vector=(AV:N/AC:H/Au:N/C:N/I:N/A:C)

Workarounds:

   CVE-2015-8705 can be avoided in named by disabling debug logging.

Active exploits:

   No known active exploits.

Solution:

   Upgrade to the patched release most closely related to your
   current version of BIND.  This can be downloaded from
   http://www.isc.org/downloads.

   -  BIND 9 version 9.10.3-P3

Acknowledgements:

   ISC would like to thank Tatuya Jinmei of Infoblox for discovering
   and reporting one of the issues corrected in this fix.

Document Revision History:

   1.0 Advance Notification 12 January 2016
   1.1 "Versions affected", "Severity", "Description",
        and "Impact" information corrected. 15 January 2016
   2.0 Public disclosure 19 January 2016

Related Documents:

   See our BIND9 Security Vulnerability Matrix at
   https://kb.isc.org/article/AA-00913 for a complete listing of
   Security Vulnerabilities and versions affected.

If you'd like more information on ISC Subscription Support and
Advance Security Notifications, please visit http://www.isc.org/support/.

Do you still have questions?  Questions regarding this advisory
should go to security-officer@isc.org.  To report a new issue,
please encrypt your message using security-officer@isc.org's PGP
key which can be found here:
   https://www.isc.org/downloads/software-support-policy/openpgp-key/.
If you are unable to use encrypted email, you may also report new
issues at: https://www.isc.org/community/report-bug/.

Note:

   ISC patches only currently supported versions. When possible we
   indicate EOL versions affected.  (For current information on
   which versions are actively supported, please see
   http://www.isc.org/downloads/).

ISC Security Vulnerability Disclosure Policy:

   Details of our current security advisory policy and practice can
   be found here: https://kb.isc.org/article/AA-00861

This Knowledge Base article: https://kb.isc.org/article/AA-01336
is the complete and official security advisory document.

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

(c) 2001-2016 Internet Systems Consortium
