X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/21/9
Message-ID: <20190621220502.aubbgwqvos6mvlz2@inutil.org>
Date: Sat, 22 Jun 2019 00:05:02 +0200
From: Moritz Muehlenhoff <jmm@...til.org>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8

Simon McVittie wrote:
> If upstream projects have a stable branch that is genuinely stable
> and bugfix-only to minimize the risk of regressions, and encourage
> downstream distributions to align on the latest stable branch during
> their development phase, then I think that goes a long way towards this.
> If I understand correctly, PostgreSQL is one of the canonical examples of
> a project that does this, and gets its upstream point releases included
> in stability-focused projects like Debian as-is.

Exactly, other examples where Debian ships upstream stable branches
when updating a stable/oldstable release (via security.debian.org or
point releases) out of the top of my head are:

- ffmpeg
- Firefox ESR
- Linux (follows upstream LTS branches)
- MariaDB
- Mediawiki
- OpenJDK
- OpenSSL
- PHP
- Thunderbird ESR
- VLC
- Wireshark
- Xen

It has served us very well overall and it's considered on a case-by-case
basis; e.g. whether upstream releases in those long term branches are
sufficiently vetted/regression-tested.

Cheers,
        Moritz
