X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7207" "Wednesday" "27" "June" "2018" "11:40:47" "+0200" "Solar Designer" "solar@openwall.com" "<20180627094047.GA13011@openwall.com>" "164" "Re: [oss-security] rclone data exflitration / unauthorized API use" nil nil nil "6" "2018062709:40:47" "[oss-security] rclone data exflitration / unauthorized API use" (number mark "U       solar@openwa Jun 27  164/7207  " thread-indent "\"Re: [oss-security] rclone data exflitration / unauthorized API use\"\n") "<a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>" ("<a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21703 invoked by uid 550); 27 Jun 2018 09:42:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19849 invoked from network); 27 Jun 2018 09:41:16 -0000
Date: Wed, 27 Jun 2018 11:40:47 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: oss-security-list@contactdaniel.net
Message-ID: <20180627094047.GA13011@openwall.com>
References: <a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] rclone data exflitration / unauthorized API use

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel,

On Tue, Jun 26, 2018 at 05:56:18PM -0700, oss-security-list@contactdaniel.net wrote:
> Due to it's reliance on vulnerable upstream vendor SDKs & APIs, all 
> current versions of 'rclone' are subject to a variety of attacks.
> 
> This vulnerability is an instance of a class of security vulnerabilities 
> that affect a wide variety of software. Any API which has clients 
> perform actions on arbitrary URLs chosen by the API server will lead to 
> this class of attack becoming a concern.
> 
> Current Google Cloud Storage SDKs/APIs, Backblaze B2 APIs, and Yandex 
> Disk APIs are affected.
> 
> No CVE is presently assigned.
> 
> Further details at: 
> https://www.danieldent.com/blog/restless-vulnerability-non-browser-cross-domain-http-request-attacks/

We have a policy here that while list postings may refer to external
URLs, they must be complete on their own, and yours is not.  Please see:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

I'm attaching a text export of your blog post to this message.  Next
time, please do something like this on your own.

Thanks,

Alexander

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="restless-vuln.txt"
Content-Transfer-Encoding: 8bit

   Copyright © 2018 Daniel Dent.

The RESTLESS Vulnerability: Non-Browser Based Cross-Domain HTTP Request Attacks

   June 26, 2018

   I am the author of the advisory below. As of publication, no CVE number
   has been issued. This post will be updated when a CVE number is issued.

   This advisory describes a class of security vulnerabilities which can
   manifest due to choices made during HTTP API design and implementation.
   These vulnerabilities may be used to bypass network security policies and
   enable data exflitration or unauthorized API use.

   Due to it’s reliance on the Google Cloud Storage SDK, users of the current
   version of rclone are at risk of being impacted by this attack. If a user
   uses the rclone sync command to migrate data between different Google
   Cloud Storage buckets, a situation is created where the full contents of
   any arbitrary URL chosen by the Google Cloud Storage API server will be
   silently sent to Google.

   Implementation choices made by users of vulnerable API designs may
   exacerbate or mitigate these weaknesses. As this vulnerability represents
   a specific instance of the generalized confused deputy problem,
   environments relying on ambient authority for access control will be
   especially impacted.

   This attack builds on the vulnerability discovered and disclosed by Joey
   Hess in CVE-2018-10857 (more information).

   Application developers building non-browser applications do not benefit
   from the security domain isolation frameworks provided by modern web
   browsers; developers remain responsible for considering and mitigating the
   opportunities for unintended interaction across trust boundaries.

Vulnerability Scenarios

    1. API clients which perform actions on URLs chosen by an API server
    2. API clients that follow URL redirects provided by an API server

   API clients using network transports that are vulnerable to
   man-in-the-middle attacks will be vulnerable to attack not just by
   attackers who have gained control over the API server, but also by
   attackers capable of performing man-in-the-middle attacks.

Known Affected APIs

   Software implementing unmitigated approaches to using the following APIs:

     * Google Cloud Storage
     * Backblaze B2
     * Yandex Disk

   Both the Python & Go SDKs provided by Google Cloud are vulnerable to
   variant 1 of this attack.

   This advisory may also apply to other cloud storage APIs.

   The Azure Blob Storage SDK examined by the author of this advisory uses a
   design which mitigates variant 1 of this attack.

Example Attack Scenarios

   In the context of a RESTful API implementation, an attacker with control
   of the API server returns to the client a URL from which they want the
   client to push or pull data. Alternatively, the API server uses an HTTP
   redirect to cause the client to interact with a URL of the API server’s
   choosing.

   This allows the attacker to cause the client to request data from a URL of
   the attacker’s choosing, creating opportunities for data exflitration when
   that data is later made available to a different trust domain. In clients
   that PUT or POST data to arbitrary URLs, it allows the attacker to cause
   PUT or POST requests to be sent to URLs which system designers may assume
   are inaccessible.

   Clients frequently have access to URLs which must remain private. Some
   software uses the ‘file://’ syntax to allow access to arbitrary system
   files. URLs hosted on local or private IP addresses are frequently
   accessible without authentication. In cloud environments, data available
   at 169.254.169.254 sometimes includes credentials which create significant
   privilege escalation opportunities. Any data that is authenticated through
   ambient authority is exposed.

Attack Mitigations

   The following system design choices will help mitigate the concerns
   described by this advisory:

     * Create a whitelist of URLs or URL patterns which are safe to access
     * Implement a ‘same-origin’ policy at the appropriate level of
       abstraction for the application. Choosing appropriate trust boundaries
       may require awareness of the application domain.
     * Avoid following URL redirects. If choosing to follow URL redirects,
       carefully consider the implications of allowing redirects to cross
       trust boundaries.
     * Do not accept any arbitrary URLs from remote servers. Generate all
       URLs on the client side. Use URL naming strategies which help clarify
       when a trust boundary is being crossed.
     * Use only configurations which are not vulnerable to man-in-the-middle
       attacks. If using HTTPS, ensure that appropriate certificate
       verification occurs.
     * Give special consideration to DNS rebinding attacks. Blacklist
       connections to IP space intended for internal use. Be mindful of IPv6,
       IPv4, and IPv6 mappings of IPv4 IP space.

   Google has declined to fix the above vulnerability through their security
   vulnerability reporting program. As of publication, no expected fix date
   is available.

References

   . https://www.danieldent.com/blog/restless-vulnerability-non-browser-cross-domain-http-request-attacks/
   . https://rclone.org/
   . https://en.wikipedia.org/wiki/Confused_deputy_problem
   . https://en.wikipedia.org/wiki/Ambient_authority
   . https://joeyh.name/
   . https://git-annex.branchable.com/security/CVE-2018-10857_and_CVE-2018-10859/
   . https://joeyh.name/blog/entry/two_security_holes_and_a_new_library/
   . https://cloud.google.com/storage/docs/json_api/v1/objects
   . https://www.backblaze.com/b2/docs/b2_get_upload_url.html
   . https://tech.yandex.com/disk/api/reference/content-docpage/

--VbJkn9YxBvnuCH5J--
