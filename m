X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3770" "Wednesday" "12" "December" "2018" "15:24:15" "+0100" "Solar Designer" "solar@openwall.com" "<20181212142415.GA11037@openwall.com>" "74" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121214:24:15" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "        solar@openwa Dec 12   74/3770  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27670 invoked by uid 550); 12 Dec 2018 14:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26074 invoked from network); 12 Dec 2018 14:24:22 -0000
Message-ID: <20181212142415.GA11037@openwall.com>
References: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Jann Horn <jannh@google.com>
Date: Wed, 12 Dec 2018 15:24:15 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

On Wed, Dec 12, 2018 at 01:27:13AM +0100, Jann Horn wrote:
> NOTE: I have requested a CVE identifier, and I'm sending this message,
> to make tracking of the fix easier; however, to avoid missing security
> fixes without CVE identifiers, you should *NOT* be cherry-picking a
> specific patch in response to a notification about a kernel security
> bug.

(I resisted the urge to comment on this piece in previous postings.)

What should distros/users do, then?  Use latest mainline or upstream
stable kernels?  That would expose them to the many recent bugs like
this one, but which haven't yet been found (or not yet made public,
which is worse).

As far as I can tell, by far most Linux kernel vulnerabilities (that are
eventually found and made public) are in relatively recent (as of that
time) kernel versions.  So a user or a distro would avoid most
vulnerabilities (that are eventually found and made public) by staying
sufficiently behind current versions, and relying on backports, even if
at risk of missing untracked vulnerabilities.  Currently this can be
achieved e.g. by using RHEL7'ish kernels forked by Red Hat off 3.10, but
probably not anything newer than that yet.  (And when RHEL7 was just
released, its kernels were not quite ready for such use.  It takes
even RHEL kernels a few years and a few hundred revisions to mature and
become a lower security risk.  Fortunately, there's a previous RHEL at a
few years and a few hundred revisions old yet still maintained during
that time.)

A question to ask may be: out of Linux kernel vulnerabilities being
patched, are there more high and critical overall severity (e.g., as
risk impact times risk probability) vulnerabilities found in "too
recent" kernels than there are high and critical severity untracked
vulnerabilities (also or instead) affecting "sufficiently old" kernels?
My gut feeling is there are many more such vulnerabilities in "too
recent" kernels than there are those untracked vulnerabilities in
"sufficiently old" kernels.  (BTW, a vulnerability being untracked
likely correlates with it being a lower risk probability at least for
non-targeted attacks.)  Hence optimal strategy for a distro and their
users is to stay with "sufficiently old" base versions and backport
whatever is known to be worthy of a backport.

There are no maintained upstream stable branches started long enough ago
for them to be as mature as e.g. RHEL7 kernels are now.  Besides,
upstream stable branches also suffer from lack of backports of fixes for
untracked vulnerabilities.

The recommendation to use latest mainline or upstream stable kernels is
safe to give (and in a way even the most responsible one to give), but
not necessarily the best to follow.

I do not have a suggestion on what to do about that as it relates to
recommendations/disclaimers on postings such as Jann's.  Ideally, we
wouldn't have so many new security vulnerabilities being introduced to
new Linux kernels all the time, but that seems unrealistic given the
pace of Linux kernel development and growth.

> In Linux kernel versions since 4.11, userfaultfd can be used to write
> arbitrary data into holes in sparse tmpfs files to which an attacker
> has read-only access.
> 
> This is CVE-2018-18397.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=29ec90660d68bbdd69507c1c8b4e33aa299278b1
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.87
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.7
> https://bugs.chromium.org/p/project-zero/issues/detail?id=1700

Interesting.  How did you find this?

Alexander

P.S. I guess Jann's message did not reach subscribers who are on Gmail
and such because of google.com's DMARC policy.  So I made sure to quote
all of it above.
