Received: (qmail 28653 invoked by uid 550); 12 Dec 2025 20:50:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25733 invoked from network); 12 Dec 2025 20:50:25 -0000
Date: Fri, 12 Dec 2025 21:50:24 +0100
From: Solar Designer <solar@openwall.com>
To: Huajie Wang <benjobs@apache.org>
Cc: oss-security@lists.openwall.com, omkarparth@gmail.com
Message-ID: <20251212205024.GA26668@openwall.com>
References: <8d3fb2d0-ddeb-63da-1f6a-4c430a4a407d@apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d3fb2d0-ddeb-63da-1f6a-4c430a4a407d@apache.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-54947: Apache StreamPark: Use hard-coded key vulnerability

Hi,

Thank you for bringing these CVE announcements to oss-security.  However:

On Fri, Dec 12, 2025 at 02:57:25PM +0000, Huajie Wang wrote:
> Severity: important

Is this message providing a replacement CVE and advisory for what you
had announced as "CVE-2025-53960: Apache StreamPark: Use the user's
password as the secret key Vulnerability" last week?

https://www.openwall.com/lists/oss-security/2025/12/04/1

If so, this looks like misuse of CVEs to me.  When you want to amend an
advisory, this is generally not a valid reason to issue another CVE.
You should be able to amend an advisory while retaining the CVE.  Since
I see this happen for different Apache projects lately, maybe there's an
issue in Apache guidelines or tooling that needs to be fixed?

In this case, looks like only the title and severity have changed, but
even if you edited something in the description or affected versions
range that would also be no reason for a new CVE, unless you actually
start talking about a different issue.

Also, CVEs aside, it's confusing when you post something anew without
any explanation of how it relates to seemingly the same thing you posted
before.  For a better example, see how the Xen project does it, with
revision history in advisories.

Finally, you could have posted the amendment as a "reply" to your own
message that first announced the issue.  That way, your amendment would
have been linked as "next in thread" from the original message in list
archives, so anyone who found the original message in there would know
there is and be able to easily access the additional information - which
isn't the case currently.

On the actual vulnerability:

> Description:
> 
> In Apache StreamPark versions 2.0.0 through 2.1.7, a security vulnerability involving a hard-coded encryption key exists. This vulnerability occurs because the system uses a fixed, immutable key for encryption instead of dynamically generating or securely configuring the key. Attackers may obtain this key through reverse engineering or code analysis, potentially decrypting sensitive data or forging encrypted information, leading to information disclosure or unauthorized system access.
> 
> This issue affects Apache StreamPark: from 2.0.0 before 2.1.7.
> 
> Users are recommended to upgrade to version 2.1.7, which fixes the issue.

This leaves me and probably others wondering how you fixed the issue.
Your previous announcement seems to have wrongly included a hint on the
fix in the vulnerability description.  "Use the user's password as the
secret key" - is that the fix?  Any more detail you can share on it?
Such as whether/what PBKDF is used to derive the encryption key from the
user's password (if no KDF, or a fast non-password KDF, then that's yet
another vulnerability right there).  Maybe refer to fix commit(s)?

Inclusion of more detail on the fixes may result in folks in here taking
a look and commenting, helping find potential issues with initial fixes.

> Credit:
> 
> omkarparth@gmail.com (finder)

Added to CC.

Thanks again,

Alexander
