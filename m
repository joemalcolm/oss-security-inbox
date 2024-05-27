Received: (qmail 24223 invoked by uid 550); 27 May 2024 11:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22263 invoked from network); 27 May 2024 11:34:34 -0000
Date: Mon, 27 May 2024 13:34:30 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240527113430.GA14378@openwall.com>
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com> <20240418164242.GA2468@openwall.com> <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] The GNU C Library security advisories update for 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix out-of-bound writes when writing escape sequence

On Mon, May 27, 2024 at 11:16:53AM +0200, Charles Fol wrote:
> Although very late, here is a follow up explaining the impact of the 
> vulnerability.
> 
> Provided that you can force an application to convert a partially 
> controlled buffer to ISO-2022-CN-EXT, you get an
> overflow of 1 to 3 bytes whose value you don't control.
> 
> This can be triggered in at least two ways in PHP:
> 
> - Through direct calls to iconv()
> - Through the use of PHP filters (i.e. using a "file read" vulnerability)
> 
> Due to the way PHP's heap is built, you can use such a memory corruption 
> to alter part of a free list pointer,
> which can in turn give you an arbitrary write primitive in the program's 
> memory.
> 
> With this bug, any person that has a file read vulnerability with a 
> controlled prefix on a PHP application has RCE.
> Any person that can force PHP into calling iconv() with controlled 
> parameters has RCE.
> 
> We have provided more explanations on a blogpost of ours (I do not think 
> that I can post it here, it shouldn't be too
> hard to find if you're interested).

Surely you can post a link to a blog post, although we strongly prefer
that besides the link you also post a plain text copy of most content,
for archival.

I assume you refer to:

https://www.ambionics.io/blog/iconv-cve-2024-2961-p1

This ends with:

> This concludes the first part of the series on CNEXT (CVE-2024-2961).
> The exploit is now available on our GitHub. There is still much more to
> explore: what about direct calls to iconv() ? What happens the file read
> is blind?
> 
> In part 2, we'll dive deeper in the PHP engine to target an iconv() call
> found in a very popular PHP webmail. I'll describe the impact of such
> direct calls on the PHP ecosystem, and show you some unexpected sinks.
> Finally, in part 3, we'll cover blind file read exploitation.

The GitHub link is:

https://github.com/ambionics/cnext-exploits/

I understand it'd be difficult to convert a so nicely formatted blog
post into a plain text posting, but perhaps you can now post the plain
text description you had shared with the distros list?

Are your OffensiveCon slides online or will be soon?  A link to them can
also be shared.

Thanks,

Alexander
