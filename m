X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8619" "Thursday" "20" "September" "2018" "11:32:10" "+0200" "Solar Designer" "solar@openwall.com" "<20180920093210.GA8763@openwall.com>" "126" "Re: [oss-security] ISC has issued new patch releases of BIND" nil nil nil "9" "2018092009:32:10" "[oss-security] ISC has issued new patch releases of BIND" (number mark "U       solar@openwa Sep 20  126/8619  " thread-indent "\"Re: [oss-security] ISC has issued new patch releases of BIND\"\n") "<266a9bf2-2733-054b-6ce8-bc3eb5721a8d@isc.org>" ("<266a9bf2-2733-054b-6ce8-bc3eb5721a8d@isc.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28059 invoked by uid 550); 20 Sep 2018 09:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27888 invoked from network); 20 Sep 2018 09:32:19 -0000
Date: Thu, 20 Sep 2018 11:32:10 +0200
From: Solar Designer <solar@openwall.com>
To: Michael McNally <mcnally@isc.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20180920093210.GA8763@openwall.com>
References: <266a9bf2-2733-054b-6ce8-bc3eb5721a8d@isc.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
In-Reply-To: <266a9bf2-2733-054b-6ce8-bc3eb5721a8d@isc.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] ISC has issued new patch releases of BIND

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 19, 2018 at 03:16:25PM -0800, Michael McNally wrote:
> Details on the security vulnerability and the two operational
> notifications can be found via the following links:
> 
>    https://kb.isc.org/docs/cve-2018-5741

Per oss-security list content guidelines, actual vulnerability detail
must be included in postings (message body or text/plain attachment).

I've attached a text export of the above web page to this message.
(I did not bother doing the same for the operational notifications.)

Michael, I'd appreciate it if you start including such detail in your
oss-security postings.  Including the links as well is great (such as
for easy access to updated revisions while the links work); including
only links is discouraged.

Thanks,

Alexander

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2018-5741_BIND_Update_policies_krb5-subdomain_and_ms-subdomain.txt"

CVE-2018-5741: Update policies krb5-subdomain and ms-subdomain

    Updated on 19 Sep 2018
    5 minutes to read
    Contributors  [Michael McNally]

CVE: CVE-2018-5741

Document Version: 1.0

Posting date: 19 September 2018

Program Impacted: BIND

Versions affected: The behavior described is present in all versions of BIND 9 which contain the krb5-subdomain and ms-subdomain update policies prior to our upcoming maintenance releases, BIND 9.11.5 and 9.12.3. However, the misleading documentation is not present in all versions.

Severity: Medium

Exploitable: Remotely, but only by an attacker with credentials to modify other records on the server

Description:

In order to provide fine-grained controls over the ability to use Dynamic DNS (DDNS) to update records in a zone, BIND provides a feature called update-policy. Various rules can be configured to limit the types of updates that can be performed by a client, depending on the key used when sending the update request. Unfortunately some rule types were not initially documented, and when documentation for them was added to the Administrator Reference Manual (ARM) in change #3112, the language that was added to the ARM at that time incorrectly described the behavior of two rule types, krb5-subdomain and ms-subdomain. This incorrect documentation could mislead operators into believing that policies they had configured were more restrictive than they actually were.

Impact:

The krb5-subdomain and ms-subdomain update policy rule types permit updates from any client authenticated with a valid Kerberos or Windows machine principal from the REALM specified in the identity field, to modify records in the zone at or below the name specified in the name field. The incorrect documentation, however, indicated that the policy would be restricted to names at or below the machine's name as encoded in the Windows or Kebreros principal.

For example, if named.conf contains the following configuration statement in the zone "example.com":

zone example.com {
        ...
        update-policy {
                grant SUB.EXAMPLE.COM krb5-subdomain . ANY;
        };
};

...then a client possessing a valid Kerberos machine principal for host/machine.sub.example.com@SUB.EXAMPLE.COM would be allowed to update any record at or below "example.com", whereas the documentation indicated that updates would only be permitted at or below "machine.sub.example.com". In practice, the name of the of machine encoded in the principal is not checked to ensure that it matches the records to be updated. The update policy for the zone, having established that the client possesses a valid machine principal from the SUB.EXAMPLE.COM realm, simply allows updates to all records within the zone "example.com".

The ms-subdomain rule type behaves similarly, but for Windows machine principals such as machine$@SUB.EXAMPLE.COM instead of Kerberos principals.

The krb5-subdomain and ms-subdomain rules are intended to limit updates to names below the name field (in this example, ".", which covers the entire zone). Because of a separate bug in the named.conf parser, a name field below "." could not be configured in some releases.

Upcoming maintenance releases will address this configuration bug, as well as adding new krb5-selfsub and ms-selfsub rule types which more accurately implement the behavior that the ARM formerly attributed to krb5-subdomain and ms-subdomain.

CVSS Score: 6.5

CVSS Vector: CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N

For more information on the Common Vulnerability Scoring System and to obtain your specific environmental score please visit: https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N.

Workarounds:

To limit updates to a subset of a zone -- for example, "sub.example.com" -- create a new "sub.example.com" child zone beneath "example.com", and set the desired update-policy in the child zone rather than the parent.

Active exploits:

No known active exploits but the reporter has also disclosed the issue to a public bug tracker for another open-source project.

Solution:

At the present time, ISC is not providing any code changing the behavior of the update-policy feature. While we believe that there are a few operators out there who are relying on the strictest interpretation permitted by the erroneous documentation, we have to balance that against changing the behavior of features in stable branches of BIND, including the 9.11 branch which is meant to be a feature-complete Extended Support Version of BIND. As a compromise between these conflicting priorities, we have decided that our best course of action is to disclose the error but leave the existing behavior of the krb5-subdomain and ms-subdomain policies as they are (while correcting the erroneous documentation.

In upcoming maintenance releases, the name field for ms-subdomain and krb5-subdomain will be corrected so that names lower than "." can be configured, and two new rule types will be added, krb5-selfsub and ms-selfsub, analogous to the existing selfsub rule type, which implement the behavior that was formerly described in the documentation for krb5-subdomain and ms-subdomain: restricting updates to names at or below the machine name encoded in the client's Windows or Kerberos principal. These new update-policy options will debut in the next set of maintenance releases scheduled for the BIND 9.11 and 9.12 branches (as well as the BIND 9.13 development branch) and should be available to users in October 2018.

    BIND 9.11.5
    BIND 9.12.3

Acknowledgements:

This issue was reported to us by Dominik George.

Document Revision History:

1.0 Public Disclosure 19 September 2018

Related Documents:

See our BIND 9 Security Vulnerability Matrix for a complete listing of Security Vulnerabilities and versions affected.

Do you still have questions? Questions regarding this advisory should go to security-officer@isc.org. To report a new issue, please encrypt your message using security-officer@isc.org's PGP key which can be found here: https://www.isc.org/downloads/software-support-policy/openpgp-key/. If you are unable to use encrypted email, you may also report new issues at: https://www.isc.org/community/report-bug/.

Note:

ISC patches only currently supported versions. When possible we indicate EOL versions affected. (For current information on which versions are actively supported, please see https://www.isc.org/downloads/).

ISC Security Vulnerability Disclosure Policy:

Details of our current security advisory policy and practice can be found in the ISC Software Defect and Security Vulnerability Disclosure Policy.

This Knowledgebase article is the complete and official security advisory document.

Legal Disclaimer:

Internet Systems Consortium (ISC) is providing this notice on an "AS IS" basis. No warranty or guarantee of any kind is expressed in this notice and none should be implied. ISC expressly excludes and disclaims any warranties regarding this notice or materials referred to in this notice, including, without limitation, any implied warranty of merchantability, fitness for a particular purpose, absence of hidden defects, or of non-infringement. Your use or reliance on this notice or materials referred to in this notice is at your own risk. ISC may change this notice at any time. A stand-alone copy or paraphrase of the text of this document that omits the document URL is an uncontrolled copy. Uncontrolled copies may lack important information, be out of date, or contain factual errors.

--jRHKVT23PllUwdXP--
