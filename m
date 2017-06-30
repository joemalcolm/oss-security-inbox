X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14664" "Friday" "30" "June" "2017" "12:57:05" "+0200" "Solar Designer" "solar@openwall.com" "<20170630105705.GA4208@openwall.com>" "326" "Re: [oss-security] ISC announces two BIND vulnerabilities" "^Cc:" nil nil "6" "2017063010:57:05" "[oss-security] ISC announces two BIND vulnerabilities" (number mark "U       solar@openwa Jun 30  326/14664 " thread-indent "\"Re: [oss-security] ISC announces two BIND vulnerabilities\"\n") "<1498819293.18870.28.camel@debian.org>" ("<ffbe986b-312f-039a-e660-8d375b4426c1@isc.org>" "<1498819293.18870.28.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29858 invoked by uid 550); 30 Jun 2017 10:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29710 invoked from network); 30 Jun 2017 10:57:13 -0000
Message-ID: <20170630105705.GA4208@openwall.com>
References: <ffbe986b-312f-039a-e660-8d375b4426c1@isc.org> <1498819293.18870.28.camel@debian.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
In-Reply-To: <1498819293.18870.28.camel@debian.org>
User-Agent: Mutt/1.4.2.3i
Cc: ISC Security Officer <security-officer@isc.org>
Date: Fri, 30 Jun 2017 12:57:05 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC announces two BIND vulnerabilities
To: oss-security@lists.openwall.com

--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

For transparency and for information of those wanting to join the
distros list (thus, for them to have a better idea of whether
membership would be useful to them or not): ISC brought these issues to
the distros list on June 28 (or the night of June 29 UTC), so distros
list members had about 1.5 days of advance notice.

On Fri, Jun 30, 2017 at 12:41:33PM +0200, Yves-Alexis Perez wrote:
> As per list policy, and since I'm following these for Debian, here's some more
> details inline for the list.

Thank you, Yves-Alexis!

Adding to this, attached are text exports of the ISC advisories,
produced by running ELinks against "Print Article" versions of the ISC
web pages.

It would be great if ISC would resume posting the actual detail in here
themselves, in addition to the website links.

> The vulnerabilities are very similar to the knot one (no CVE yet) found by the
> same researchers (Synaktiv):
> 
> CVE-2017-3142: An error in TSIG authentication can permit unauthorized zone
> transfers
> 
> An attacker who is able to send and receive messages to an authoritative DNS
> server and who has knowledge of a valid TSIG key name may be able to
> circumvent TSIG authentication of AXFR requests via a carefully constructed
> request packet. A server that relies solely on TSIG keys for protection with
> no other ACL protection could be manipulated into:
> 
> * providing an AXFR of a zone to an unauthorized recipient
> * accepting bogus NOTIFY packets
> 
> CVE-2017-3043: An error in TSIG authentication can permit unauthorized dynamic
> updates
> 
> An attacker who is able to send and receive messages to an authoritative DNS
> server and who has knowledge of a valid TSIG key name for the zone and service
> being targeted may be able to manipulate BIND into accepting an unauthorized
> dynamic update.

Thanks again,

Alexander

--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2017-3142.txt"

            CVE-2017-3142: An error in TSIG authentication can permit unauthorized zone transfers

  AA-01504

An attacker may be able to circumvent TSIG authentication of AXFR and NOTIFY requests.

CVE:
CVE-2017-3142
Document Version:
2.0
Posting date:
29 June 2017
Program Impacted:
BIND
Versions affected:
9.4.0->9.8.8, 9.9.0->9.9.10-P1, 9.10.0->9.10.5-P1, 9.11.0->9.11.1-P1, 9.9.3-S1->9.9.10-S2,
9.10.5-S1->9.10.5-S2
Severity:
Medium
Exploitable:
Remotely

Description:

An attacker who is able to send and receive messages to an authoritative DNS server and who has knowledge of
a valid TSIG key name may be able to circumvent TSIG authentication of AXFR requests via a carefully
constructed request packet.  A server that relies solely on TSIG keys for protection with no other ACL
protection could be manipulated into:

  * providing an AXFR of a zone to an unauthorized recipient
  * accepting bogus NOTIFY packets

Impact:

  * An unauthorized AXFR (full zone transfer) permits an attacker to view the entire contents of a zone.
    Protection of zone contents is often a commercial or business requirement.
  * If accepted, a NOTIFY sets the zone refresh interval to 'now'.  If there is not already a refresh cycle
    in progress then named will initiate one by asking for the SOA RR from its list of masters.  If there is
    already a refresh cycle in progress, then named will queue the new refresh request.  If there is already
    a queued refresh request, the new NOTIFY will be discarded. Bogus notifications can't be used to force a
    zone transfer from a malicious server, but could trigger a high rate of zone refresh cycles.

CVSS Score:  5.3

CVSS Vector:  CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N

For more information on the Common Vulnerability Scoring System and to obtain your specific environmental
score please visit: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N

Workarounds:

The effects of this vulnerability can be mitigated by using Access Control Lists (ACLs) that require both
address range validation and use of TSIG authentication in conjunction.  For information on how to configure
this type of compound authentication control, please see:
https://kb.isc.org/article/AA-00723/0/Using-Access-Control-Lists-ACLs-with-both-addresses-and-keys.html.
(Note that this technique may not be effective against bogus NOTIFY packets if an attacker is able to reach
the target DNS server whilst using a spoofed sending address).

Active exploits:

No known active exploits but a similar issue was announced publicly on 23 June 2017 by another DNS server
software provider.

Solution:  Upgrade to the patched release most closely related to your current version of BIND. These can all
be downloaded from http://www.isc.org/downloads.

  * BIND 9 version 9.9.10-P2
  * BIND 9 version 9.10.5-P2
  * BIND 9 version 9.11.1-P2

BIND Supported Preview Edition is a special feature preview branch of BIND provided to eligible ISC support
customers.

  * BIND 9 version 9.9.10-S3
  * BIND 9 version 9.10.5-S3

Acknowledgements: ISC would like to thank Clement Berthaux from Synacktiv for reporting this issue.

Document Revision History:

1.0 Advance Notification 26 June 2017
1.1 Correct Notify to NOTIFY; Update phrasing in Workarounds section; Update phrasing in Description; Correct
date of similar public announcement, 29 June 2017
2.0 Public disclosure 29 June 2017

Related Documents:

See our BIND9 Security Vulnerability Matrix at https://kb.isc.org/article/AA-00913 for a complete listing of
Security Vulnerabilities and versions affected.

If you'd like more information on ISC Subscription Support and Advance Security Notifications, please visit
http://www.isc.org/support/.

Do you still have questions?  Questions regarding this advisory should go to security-officer@isc.org.  To
report a new issue, please encrypt your message using security-officer@isc.org's PGP key which can be found
here: https://www.isc.org/downloads/software-support-policy/openpgp-key/.  If you are unable to use encrypted
email, you may also report new issues at: https://www.isc.org/community/report-bug/.

Note: ISC patches only currently supported versions. When possible we indicate EOL versions affected.  (For
current information on which versions are actively supported, please see http://www.isc.org/downloads/).

ISC Security Vulnerability Disclosure Policy:  Details of our current security advisory policy and practice
can be found here:
https://kb.isc.org/article/AA-00861/164/ISC-Software-Defect-and-Security-Vulnerability-Disclosure-Policy.html

This Knowledge Base article https://kb.isc.org/article/AA-01504 is the complete and official security
advisory document.

Legal Disclaimer:

Internet Systems Consortium (ISC) is providing this notice on an "AS IS" basis. No warranty or guarantee of
any kind is expressed in this notice and none should be implied. ISC expressly excludes and disclaims any
warranties regarding this notice or materials referred to in this notice, including, without limitation, any
implied warranty of merchantability, fitness for a particular purpose, absence of hidden defects, or of
non-infringement. Your use or reliance on this notice or materials referred to in this notice is at your own
risk. ISC may change this notice at any time.  A stand-alone copy or paraphrase of the text of this document
that omits the document URL is an uncontrolled copy. Uncontrolled copies may lack important information, be
out of date, or contain factual errors.

References

   Visible links
   . https://kb.isc.org/article/AA-01504/0/CVE-2017-3142%3A-An-error-in-TSIG-authentication-can-permit-unauthorized-zone-transfers.html
   . http://www.web-site-scripts.com/knowledge-base/article/AA-00551
   . http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-3142
   . https://www.isc.org/downloads/bind/
   . https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N
   . https://kb.isc.org/article/AA-00723/0/Using-Access-Control-Lists-ACLs-with-both-addresses-and-keys.html
   . http://www.isc.org/downloads
   . https://kb.isc.org/article/AA-00913
   . http://www.isc.org/support/
   . https://www.isc.org/downloads/software-support-policy/openpgp-key/
   . https://www.isc.org/community/report-bug/
   . https://kb.isc.org/article/AA-00861/164/ISC-Software-Defect-and-Security-Vulnerability-Disclosure-Policy.html
   . https://kb.isc.org/article/AA-01504

--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2017-3143.txt"

           CVE-2017-3143: An error in TSIG authentication can permit unauthorized dynamic updates

  AA-01503

An attacker may be able to forge a valid TSIG or signature for a dynamic update.

CVE:
CVE-2017-3143
Document Version:
2.0
Posting date:
29 June 2017
Program Impacted:
BIND
Versions affected:
9.4.0->9.8.8, 9.9.0->9.9.10-P1, 9.10.0->9.10.5-P1, 9.11.0->9.11.1-P1, 9.9.3-S1->9.9.10-S2,
9.10.5-S1->9.10.5-S2
Severity:
High
Exploitable:
Remotely

Description:

An attacker who is able to send and receive messages to an authoritative DNS server and who has knowledge of
a valid TSIG key name for the zone and service being targeted may be able to manipulate BIND into accepting
an unauthorized dynamic update.

Impact:

A server that relies solely on TSIG keys with no other address-based ACL protection could be vulnerable to
malicious zone content manipulation using this technique.

CVSS Score:  7.5

CVSS Vector:  CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N

For more information on the Common Vulnerability Scoring System and to obtain your specific environmental
score please visit: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N

Workarounds:

The effects of this vulnerability can be mitigated by using Access Control Lists (ACLs) that require both
address range validation and use of TSIG authentication in conjunction.  For information on how to configure
this type of compound authentication control, please see:
https://kb.isc.org/article/AA-00723/0/Using-Access-Control-Lists-ACLs-with-both-addresses-and-keys.html.

Administrators who have made use of named.conf option "update-policy local;" should refer to the
Administrator Reference Manual (ARM) for details of the automatic update policy that will be established and
to assess whether or not this conveys any additional risk to their server.  (Note that this option is not
enabled by default).

Active exploits:

No known active exploits but a similar issue was announced publicly on 23 June 2017 by another DNS server
software provider.

Solution:  Upgrade to the patched release most closely related to your current version of BIND. These can all
be downloaded from http://www.isc.org/downloads.

  * BIND 9 version 9.9.10-P2
  * BIND 9 version 9.10.5-P2
  * BIND 9 version 9.11.1-P2

BIND Supported Preview Edition is a special feature preview branch of BIND provided to eligible ISC support
customers.

  * BIND 9 version 9.9.10-S3
  * BIND 9 version 9.10.5-S3

Acknowledgements: ISC would like to thank Clement Berthaux from Synacktiv for reporting this issue.

Document Revision History:

1.0 Advance Notification 26 June 2017
1.1 CVSS score corrected (was previously erroneously listed as 7.8) 27 June 2017
1.2 Update phrasing in the Workarounds section; Correct date of similar public announcement, 29 June 2017
1.3 Remove references to SIG(0), which is not affected, 29 June 2017
2.0 Public disclosure 29 June 2017

Related Documents:

See our BIND9 Security Vulnerability Matrix at https://kb.isc.org/article/AA-00913 for a complete listing of
Security Vulnerabilities and versions affected.

If you'd like more information on ISC Subscription Support and Advance Security Notifications, please visit
http://www.isc.org/support/.

Do you still have questions?  Questions regarding this advisory should go to security-officer@isc.org.  To
report a new issue, please encrypt your message using security-officer@isc.org's PGP key which can be found
here: https://www.isc.org/downloads/software-support-policy/openpgp-key/.  If you are unable to use encrypted
email, you may also report new issues at: https://www.isc.org/community/report-bug/.

Note: ISC patches only currently supported versions. When possible we indicate EOL versions affected.  (For
current information on which versions are actively supported, please see http://www.isc.org/downloads/).

ISC Security Vulnerability Disclosure Policy:  Details of our current security advisory policy and practice
can be found here:
https://kb.isc.org/article/AA-00861/164/ISC-Software-Defect-and-Security-Vulnerability-Disclosure-Policy.html

This Knowledge Base article https://kb.isc.org/article/AA-01503 is the complete and official security
advisory document.

Legal Disclaimer:

Internet Systems Consortium (ISC) is providing this notice on an "AS IS" basis. No warranty or guarantee of
any kind is expressed in this notice and none should be implied. ISC expressly excludes and disclaims any
warranties regarding this notice or materials referred to in this notice, including, without limitation, any
implied warranty of merchantability, fitness for a particular purpose, absence of hidden defects, or of
non-infringement. Your use or reliance on this notice or materials referred to in this notice is at your own
risk. ISC may change this notice at any time.  A stand-alone copy or paraphrase of the text of this document
that omits the document URL is an uncontrolled copy. Uncontrolled copies may lack important information, be
out of date, or contain factual errors.

References

   Visible links
   . https://kb.isc.org/article/AA-01503/0/CVE-2017-3143%3A-An-error-in-TSIG-authentication-can-permit-unauthorized-dynamic-updates.html
   . http://www.web-site-scripts.com/knowledge-base/article/AA-00551
   . http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-3143
   . https://www.isc.org/downloads/bind/
   . https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N
   . https://kb.isc.org/article/AA-00723/0/Using-Access-Control-Lists-ACLs-with-both-addresses-and-keys.html
   . http://www.isc.org/downloads
   . https://kb.isc.org/article/AA-00913
   . http://www.isc.org/support/
   . https://www.isc.org/downloads/software-support-policy/openpgp-key/
   . https://www.isc.org/community/report-bug/
   . https://kb.isc.org/article/AA-00861/164/ISC-Software-Defect-and-Security-Vulnerability-Disclosure-Policy.html
   . https://kb.isc.org/article/AA-01503

--pWyiEgJYm5f9v55/--
