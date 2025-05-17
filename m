Received: (qmail 15628 invoked by uid 550); 17 May 2025 13:11:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15604 invoked from network); 17 May 2025 13:11:01 -0000
Date: Sat, 17 May 2025 09:10:51 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aCiK2-Yz1dg4e4WR@netmeister.org>
References: <20250516163157.BA80D8564D@mail.netbsd.org>
 <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
 <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
Subject: Re: [oss-security] describing affected systems (was: screen:
 Multiple Security Issues in Screen (mostly affecting release 5.0.0 and
 setuid-root installations))

Jacob Bachmeyer <jcb62281@gmail.com> wrote:

> Would "systems using pkgsrc-2025Q1, notably including NetBSD 9.x and NetBSD
> 10.1" have been a fair way of describing that set?

I think that's a lot better, although I would probably
have phrased it as:

Systems using screen(1) built from pkgsrc, including
binary packages installed on NetBSD using e.g.,
pkg_add(1) or pkgin(1) before screen-5.0.0nb3 are
affected.


The details can get confusing, because you can use
pkgsrc from sources from -current or a quarterly
tagged branch across a range of operating systems, but
can also install binary packages using at least two
different tools, so ultimately neither the date nor
the OS themselves matter as much as the package
version number.  (The "nb3" here signals that this is
the 3rd pkgsrc specific version bump of the 5.0.0
upstream version.)

But no need to further argue over the precise
language. :-)

-Jan
