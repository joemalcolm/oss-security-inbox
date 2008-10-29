X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/29/4
Message-ID: <20081029120525.5ff1e016@redhat.com>
Date: Wed, 29 Oct 2008 12:05:25 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: jamie@...onical.com, coley <coley@...re.org>
Subject: Re: CVE request for ecryptfs
Content-Type: text/plain; charset=utf-8

Hi Jamie!

On Thu, 23 Oct 2008 16:16:28 -0500 Jamie Strandboge
<jamie@...onical.com> wrote:

> While reviewing ecryptfs, I discovered an information disclosure
> vulnerability in ecryptfs-setup-private and notified upstream. This
> helper script was known as ecryptfs-setup-confidential in earlier
> releases.
> 
> The problem arises when ecryptfs-setup-private invokes
> ecryptfs-wrap-passphrase and ecryptfs-add-passphrase with command line
> arguments that include the user's existing login password as well as
> the newly created mount password. As a result, these passwords can be
> snooped in the process table.

Well the question is whether this should be worded as
ecryptfs-setup-{private,confidential} issue, or more generic issue
affecting various ecryptfs-* command line utilities, that only accept
passwords as command line arguments (i.e. no interactive prompt).  So
even though there's not ecryptfs-setup-* script to fix in older
versions, steps done by ecryptfs-setup-* are likely to be performed by
the user manually, resulting in the same risk of leak as with helper
script.  Or do I miss anything?

-- 
Tomas Hoger / Red Hat Security Response Team
