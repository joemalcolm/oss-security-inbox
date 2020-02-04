X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/02/04/3
Message-ID: <20200204130919.GD11664@f195.suse.de>
Date: Tue, 4 Feb 2020 14:09:19 +0100
From: Matthias Gerstner <mgerstner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
Content-Type: text/plain; charset=utf-8

Hi,

On Tue, Feb 04, 2020 at 01:27:11PM +0100, Solar Designer wrote:
> > I personally suggest the following directory mode instead:
> > 
> > root:mysql  0750 /usr/lib/mysql/plugin/auth_pam_tool_dir
> 
> Why not simply
> 
> root:mysql 04710 /usr/lib/mysql/plugin/auth_pam_tool
> 
> without the directory?  I see only one reason: it's a bigger change
> relative to the current implementation, which is more work now, but
> perhaps this cleanup is worth it longer-term.

yes, exactly. I don't want to diverge too much from what upstream does
at the moment.

When this doesn't matter then your suggestion is the better one and
would be the cleaner approach for upstream to follow.

Cheers

Matthias

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
