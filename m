X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/02/10
Message-ID: <cb5b46fd-8e2c-2638-c23-f557483c6fa@gathman.org>
Date: Tue, 2 Nov 2021 16:52:33 -0400 (EDT)
From: Stuart D Gathman <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: Trojan Source Attacks
Content-Type: text/plain; charset=utf-8

On Mon, 1 Nov 2021, Nicholas Boucher wrote:

> The first and primary technique, which we dub the Trojan Source attack, uses
> Unicode Bidirectional (Bidi) control characters embedded in comments and
> string literals to produce visually deceptive source code files. This
> technique enables an adversary to encode constructs that visually appear to
> be comments or string literals but execute as code, or vice versa. Complete
> details, as well as recommended mitigations, can be found in the attachment
> 001 Trojan Source.pdf. This vulnerability is tracked under CVE-2021-42574.

Syntax coloring thus becomes a critical security tool.  And bugs in
syntax coloring for an editor/viewer should be consider security flaws
and reported on oss-security.
