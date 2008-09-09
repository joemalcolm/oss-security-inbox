X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/09/11
Message-ID: <Pine.GSO.4.51.0809091039060.6699@faron.mitre.org>
Date: Tue, 9 Sep 2008 10:39:37 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: vmiklos@...galware.org, coley@...re.org
Subject: Re: CVE request for bitlbee
Content-Type: text/plain; charset=utf-8


On Mon, 8 Sep 2008, Tomas Hoger wrote:

> On Sat, 30 Aug 2008 01:24:14 +0200 Miklos Vajna
> This issue fixed in 1.2.2 was assigned CVE id CVE-2008-3920:
>
>   Unspecified vulnerability in BitlBee before 1.2.2 allows remote
>   attackers to "recreate" and "hijack" existing accounts via unspecified
>   vectors.
>
> However, upstream released 1.2.3 in the meantime, fixing the incomplete
> fix in 1.2.2.  Quoting news page:
>
>   Unfortunately 1.2.2 did not fix all possible account hijacking
>   loopholes. Another very similar flaw was found by Tero Marttila. In
>   the migration to the user configuration storage abstraction layer, a
>   few safeguards that prevent overwriting existing accounts disappeared.

Use CVE-2008-3969 for this meta-fix.

- Steve
