X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/24/2
Message-ID: <20100924164823.GA21584@openwall.com>
Date: Fri, 24 Sep 2010 20:48:23 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: Minor security flaw with pam_xauth
Content-Type: text/plain; charset=utf-8

On Tue, Sep 21, 2010 at 04:02:47PM -0400, Josh Bressers wrote:
> Since you have the best understanding of these, can you break them down
> with reasonable explanations and I'll assign IDs to whatever still needs
> them?

pam_xauth missing return value checks from setuid() and similar calls,
fixed in Linux-PAM 1.1.2 - CVE-2010-3316

pam_env and pam_mail accessing the target user's files as root (and thus
susceptible to attacks by the user) in Linux-PAM below 1.1.2, partially
fixed in 1.1.2 - no CVE ID mentioned yet

pam_env and pam_mail in Linux-PAM 1.1.2 not switching fsgid (or egid)
and groups when accessing the target user's files (and thus potentially
susceptible to attacks by the user) - CVE-2010-3430

pam_env and pam_mail in Linux-PAM 1.1.2 not checking whether the
setfsuid() calls succeed (no known impact with current Linux kernels,
but poor practice in general) - CVE-2010-3431

Now, in case someone fixes CVE-2010-3430 but fails to add return value
checks for the added calls, we'll need yet another CVE ID for the
partial fix... but I hope this won't happen.

Alexander
