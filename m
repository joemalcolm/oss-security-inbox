Received: (qmail 3707 invoked by uid 550); 26 Mar 2025 23:07:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3329 invoked from network); 26 Mar 2025 23:07:11 -0000
Date: Thu, 27 Mar 2025 00:07:03 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250326230703.GA7131@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] atop: Heap corruption

Hi,

This (or rather an earlier vague warning) made it to various tech news
sites today:

https://rachelbythebay.com/w/2025/03/26/atop/

> Wednesday, March 26, 2025
> Problems with the heap

[...]

> Now, first off, I don't know exactly how to exploit this sort of thing. I was there in the 90s when this overflow stuff started popping off, and I'm pretty sure that if you can do this, you can do much worse.
> 
> This is what I'm talking about:
> 
> Terminal 1:
> 
> user1$ random-tool
> 
> Terminal 2:
> 
> user2$ atop
> malloc(): corrupted top size
> Aborted
> 
> ... that's pretty bad, right?
> 
> So you twiddle the tool a little bit and go again and...
> 
> user2$ atop
> Segmentation fault
> 
> That's not great, either!
> 
> Or... how about...
> 
> user2$ atop
> Fatal glibc error: malloc assertion failure in sysmalloc: (old_top == initial_top (av) && old_size == 0) || ((unsigned long) (old_size) >= MINSIZE && prev_inuse (old_top) && ((unsigned long) old_end & (pagesize - 1)) == 0)
> 
> Again, this is not my world. I've never written a heap exploit, but reading about it briefly makes me think that there's meat on these bones.
> 
> user1 does something... and gets user2 to blow up. If you can make that do something useful, then you get user2 to run stuff on your behalf.
> 
> What if user2 is root? Then you own the box.
> 
> Okay? So maybe stop running it as root, but also just stop running it.

Some people on various forums are now looking at recent atop commits:

https://github.com/Atoptool/atop

but none appear relevant - indeed, the above doesn't look like it was
investigated nor reported properly, so there isn't expected to be a fix
in the repo yet.

With no specific published reproducer, I suggest someone from this
community try and identify one (fuzzing?) and publish it this time.
Then the issue(s) could be investigated and fixed.

Indeed, fixing individual issues may not be enough to make atop safe to
use (the codebase is arguably too large for what it does, and code
quality poor), but that's what's being done to other software in such
cases (e.g., "similar" bugs also existed in procps-ng and were fixed).

Alexander
