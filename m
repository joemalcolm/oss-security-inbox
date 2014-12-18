X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/23
Message-ID: <CAFRnB2Xr5ki5ujnsX0mvXKL4ObPhOMreCrpJOeK8-wg0N2B9uQ@mail.gmail.com>
Date: Thu, 18 Dec 2014 23:41:31 +0000
From: Alex Gaynor <alex.gaynor@...il.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>,  Assign a CVE Identifier <cve-assign@...re.org>
Subject: Re: request for CVEs for git clients
Content-Type: text/plain; charset=utf-8

It looks like hg might also be using the same CVE, based on a tweet I saw.

Alex

On Thu Dec 18 2014 at 3:39:20 PM Kurt Seifried <kseifried@...hat.com> wrote:

> Can we please get CVEs for
> https://github.com/blog/1938-vulnerability-announced-
> update-your-git-clients
>
> In addition, the following updated versions of Git address this
> vulnerability:
>
> The Git core team has announced maintenance releases for all current
> versions of Git (v1.8.5.6, v1.9.5, v2.0.5, v2.1.4, and v2.2.1).
>
> Git for Windows (also known as MSysGit) has released maintenance version
> 1.9.5.
>
> The two major Git libraries, libgit2 and JGit, have released maintenance
> versions with the fix. Third party software using these libraries is
> strongly encouraged to update.
>
> ====
>
> looks like most Linux users are ok though "The vulnerability concerns
> Git and Git-compatible clients that access Git repositories in a
> case-insensitive or case-normalizing filesystem."
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>
>

