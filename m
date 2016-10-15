X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2558" "Saturday" "15" "October" "2016" "18:03:19" "+0200" "Solar Designer" "solar@openwall.com" "<20161015160319.GA19386@openwall.com>" "57" "Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" nil nil nil "10" "2016101516:03:19" "[oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write" (number mark "U       solar@openwa Oct 15   57/2558  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write\"\n") "<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9719 invoked by uid 550); 15 Oct 2016 16:11:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7241 invoked from network); 15 Oct 2016 16:03:29 -0000
Date: Sat, 15 Oct 2016 18:03:19 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Daniel Stenberg <daniel@haxx.se>
Message-ID: <20161015160319.GA19386@openwall.com>
References: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1609291125510.13997@tvnag.unkk.fr>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [SECURITY ADVISORY] c-ares: single byte out of buffer write

On Thu, Sep 29, 2016 at 04:02:10PM +0200, Daniel Stenberg wrote:
> `ares_create_query` single byte out of buffer write
> =================================================
> 
> Project c-ares Security Advisory, September 29, 2016 -
> [Permalink](https://c-ares.haxx.se/adv_20160929.html)
> 
> VULNERABILITY
> -------------
> 
> When a string is passed in to `ares_create_query` or `ares_mkquery` and uses
> an escaped trailing dot, like "hello\.", c-ares calculates the string length
> wrong and subsequently writes outside of the the allocated buffer with one
> byte. The wrongly written byte is the least significant byte of the 
> 'dnsclass' argument; most commonly 1.
> 
> We have been seen proof of concept code showing how this can be exploited 
> in a real-world system, but we are not aware of any such instances having 
> actually happened in the wild.
> 
> INFO
> ----
> 
> The Common Vulnerabilities and Exposures (CVE) project has assigned the name
> CVE-2016-5180 to this issue.

Yesterday, Daniel also blogged about exploitation of this vulnerability,
crediting its original reporter for the attack detail.

https://daniel.haxx.se/blog/2016/10/14/a-single-byte-write-opened-a-root-execution-exploit/

It's a rebirth of attacks on dlmalloc.  Initially, such attacks were
directly on pointer writes in dlmalloc's unlink(), using it as a
write-what-where primitive (with some minor complications: flags and an
extra write).  In or around 2003, Stefan Esser proposed hardening
unlink() with a sanity check, which got into glibc's dlmalloc shortly
thereafter.  Per Daniel's blog post, as I understood it, in the reborn
attack unlink() would instead free extra memory, essentially turning the
heap overflow into a use-after-free alike, which is then exploited as if
it were such.  Was this demonstrated before, or is it novel?  (Might be
in those later Phrack articles or such, but I forget.)

Here's the relevant excerpt:

"Writing 1 to that byte clears 2 flags, sets one flag and clears the
lowest bits of the chunk size.  The important flag it sets is called
prev_inuse and is used by dlmalloc to tell if it can merge adjacent
areas on free.  (so, if the value 1 simply had been a 2 instead, this
flaw could not have been exploited this way!)

When the c-ares buffer that had overflowed is then freed again, dlmalloc
gets fooled into consolidating that buffer with the subsequent one in
memory (since it had toggled that bit) and thus the larger piece of
assumed-to-be-free memory is partly still being in use.  Open for
manipulations!"

Alexander
