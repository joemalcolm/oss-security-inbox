Received: (qmail 20006 invoked by uid 550); 6 Nov 2024 15:45:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19987 invoked from network); 6 Nov 2024 15:45:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector1; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=nRcBBVupHqObimNX76vsDyoLgmiiRWqflA7IIIAk5+Q=; b=GW4fY04qUyiR5blYuabx5ArJCX
	TCs9Yqpmuf4xFcH3i/Pyhczz9PXqYNlUND+QUUP3b1uM/JkxfwL1KD2CP4DC+Y2AAxKnkR+kjQ7au
	LUawocJc34Z8j4gNiJlHPWBc9MeZNSzKDDvmYV/ofzOx2EBNeEq6Qf+lIjtuC2CfJQBOpHDDSjtzG
	to/IBTF5L5GfhDr05MDCVbVezzXAl+bVEygr2bXLHz8lKUY0JKVN6pk5W0TnO0/ZOq7tdzg5llkLE
	MHkoE0Z8HsMs92Dg4Ol4S6BIJFu247MTGWbOW9XPsG9ZHWTN+mPAyKrWBsdk4ctb5igrfcUy0CxWh
	izkrwCxA==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Date: Wed, 6 Nov 2024 10:44:55 -0500
References: <20241106041215.GA4432@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20241106041215.GA4432@openwall.com>
Message-Id: <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.1)
Subject: Re: [oss-security] shell wildcard expansion (un)safety



> On Nov 5, 2024, at 11:12 PM, Solar Designer <solar@openwall.com> wrote:
>=20
> Alexander Hu, CC'ed here, sent a message titled "shell expansion bug" to
> the distros list and a few other distro security contacts and shell
> maintainers.  The message described known and correct behavior (not a
> bug), even if unexpected by some and risky. ...

> Since this issue and other related ones were known for decades,
> getopt(3) and getopt_long(3), which are used by many programs, will stop
> processing options upon seeing a plain "--" argument.

However, many programs do *not* use getopt or getopt_long to process argume=
nts.
Many programs support "--", but "not* all do,so using "--" as the sole coun=
termeasure
requires careful review of every command's documentation.

I urge always using "./" to prefix wildcards if the first character is a wi=
ldcard,
e.g., "./*.pdf", because this ALWAYS works.

> ... over the years we gained things like ...
>=20
> find . -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 grep text --

The "-print0" and "-0" options have been widely implemented, but
POSIX 2024 finally formally adds them. So I urge using them where they
make sense, as they counter embedded linefeed characters in filenames.

> Can the shells do anything to mitigate this?  I think not without
> breaking compatibility.  The only not-too-unreasonable change I can
> think of is wildcard expansion prefixing filenames with "./", maybe only
> those that start with "-" and maybe not when used with builtin "echo".

I think something like this is a good idea, hopefully it'd be an option tha=
t could eventually
be standardized. I think "./" should be prefixed if the first character is =
a wildcard,
so that the resulting filenames will be consistent.

A simpler approach would be to simply forbid creating filenames that
include control characters or begin with "-". If you're doing that, also co=
nsider
an option requiring UTF-8 for new filenames. The current
situation makes it unnecessarily hard to write secure programs.
I wouldn't call supporting such filenames a "security vulnerability" exactl=
y,
but they make developing secure software harder, and nothing *requires*
that we (as an industry) support them. POSIX never guaranteed such
filenames were allowed, and even has an error code for bad filenames.

Long ago I wrong a really long essay about POSIX filename issues.
Some people here may find it interesting:
https://dwheeler.com/essays/fixing-unix-linux-filenames.html

--- David A. Wheeler

