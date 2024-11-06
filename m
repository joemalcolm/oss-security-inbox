Received: (qmail 32198 invoked by uid 550); 6 Nov 2024 18:05:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24013 invoked from network); 6 Nov 2024 17:16:04 -0000
Authentication-Results: ext-mx-out011.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received:received; s=dkim20240523; t=
	1730913352; x=1732727753; bh=N6bzL7Ko0cTyyS7vLjDurxvgdPjFB+etGPr
	yQ9ernj4=; b=aO6agfzxGLEudEmSbtpvxKRblOdqiJpyjLYC/q1qhujAYwvTdav
	zVXf8hPfus9g9XExLeqMAEycGL97qInIqyIe/Kr3AzvldnLaRSV8z2csXDuDnmui
	2OrF0lt/PRf1yM9mWCOO+Ex/K45nXqoCBC5NYpFXExmmpBQ8O8tBMwPi0rQ0jwhG
	cq4OvlwDq4i7TUNdX5nWeybdsAC+VIL4VGGrXDsgknVzrZ47/tyPQ/ib/rRiQXku
	iyr45KJ8phQMOFlScTiIQY7M5KJbCGD6AxiJfpajDJw0361B/Hj1MSQ2g3btsWCD
	KPFUpmZqpI4cbNZdFt8BqYprE5y7IL+//mg==
X-Virus-Scanned: amavis at mykolab.com
Date: Wed, 6 Nov 2024 18:15:50 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZyukRn2-8UWsW7aX@nihonium>
References: <20241106041215.GA4432@openwall.com>
 <4312e59a-2392-4405-8251-19ece737ff93@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4312e59a-2392-4405-8251-19ece737ff93@gentoo.org>
Subject: Re: [oss-security] shell wildcard expansion (un)safety

* Eli Schwartz <eschwartz@gentoo.org> [2024-11-06 05:42]:
> On 11/5/24 11:12 PM, Solar Designer wrote:
> > So there's no bug in the shells here, but bugs of this kind are common
> > in shell usage (omitting the "--" argument where it's needed, usage of
> > wildcard expansion where that is unnecessary, etc.)
> > 
> > Can the shells do anything to mitigate this?  I think not without
> > breaking compatibility.  The only not-too-unreasonable change I can
> > think of is wildcard expansion prefixing filenames with "./", maybe only
> > those that start with "-" and maybe not when used with builtin "echo".
> 
> Well, to be fair the shell already does exactly this if you do
> 
> grep text ./*

And shellcheck will warn about this kind of bug and suggest doing exactly that
or using "--":

$ cat x.sh
#!/bin/bash
grep text *

$ shellcheck x.sh
In x.sh line 2:
grep text *
          ^-- SC2035 (info): Use ./*glob* or -- *glob* so names with dashes won't become options.
For more information:
  https://www.shellcheck.net/wiki/SC2035 -- Use ./*glob* or -- *glob* so name...

- Fay
