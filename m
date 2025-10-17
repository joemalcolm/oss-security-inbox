Received: (qmail 30477 invoked by uid 550); 17 Oct 2025 23:51:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24472 invoked from network); 17 Oct 2025 23:50:25 -0000
Date: Sat, 18 Oct 2025 01:50:23 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Thorsten Alteholz <debian@alteholz.de>
Message-ID: <20251017235023.GA23530@openwall.com>
References: <20251017231636.GC2696@qaa.vinc17.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017231636.GC2696@qaa.vinc17.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] rplay (Mark R. Boyns) potential security issues (unsanitized data, unchecked malloc...)

On Sat, Oct 18, 2025 at 01:16:36AM +0200, Vincent Lefevre wrote:
> Debian distributes Mark R. Boyns's rplay 3.3.2. I've had
> a very quick look at the source and found at least:
> 
> * In rplay/rplay.c line 600, the use of atoi() on something that
>   looks like unsanitized data from a remote server:
> 
>         remote_size = -1;
>         p = rptp_parse(response, "size");
>         if (p)
>             remote_size = atoi(p);
> 
> * Various malloc() without a check of failure, such as:

These look like minor correctness and robustness issues.

In the code lines you quoted below, I am more worried about potential
for attacker triggerable integer overflows in calculation of malloc()
and realloc() sizes.  These have the potential of being vulnerabilities
worse than DoS, so may be worth further investigation.

> contrib/xjukebox-0.9/xjukebox.c-    *list = (spool_info **)realloc(*list, (*items_count + 1) *

> contrib/xjukebox-0.9/xjukebox.c-    *nlist = (String *)realloc(*nlist, (*items_count + 1) * sizeof(String));

> rx/rxanal.c:            *subexps = (struct rexp_node **)malloc (sizeof (struct rexp_node *) * *re_nsub);
> rx/rxanal.c-          else
> rx/rxanal.c-            *subexps = (struct rexp_node **)realloc (*subexps,
> rx/rxanal.c-                                                     sizeof (struct rexp_node *) * *re_nsub);

> My bug report in the Debian BTS:
> 
>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1118224
> 
> The upstream version was released in 1999, thus 26 years ago!
> And the rplay homepage no longer exists.
> 
> Has anyone looked at this more closely?
> Are there CVEs?

I don't know.  I did a quick search now, and couldn't find any.

Alexander
