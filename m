Received: (qmail 12284 invoked by uid 550); 8 May 2026 02:33:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5836 invoked from network); 8 May 2026 02:32:41 -0000
Date: Fri, 8 May 2026 04:32:40 +0200
From: Solar Designer <solar@openwall.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: oss-security@lists.openwall.com,
	Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org,
	Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260508023240.GA8796@openwall.com>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com> <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com> <20260507174811.GA4838@openwall.com> <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

On Thu, May 07, 2026 at 04:28:56PM -0600, Jens Axboe wrote:
> On 5/7/26 11:48 AM, Solar Designer wrote:
> > I only skimmed, but as far as I can tell Mohamed isn't the original
> > finder of this issue and the report and PoCs are AI-generated, which
> > could be why Mohamed is not communicating further.  It's becoming a
> > trend - someone sends AI-generated report and doesn't communicate.
> > Which doesn't mean the report is useless, but it does complicate its
> > handling.

I'm sorry Mohamed for just assuming you didn't communicate further; I
got too used to send-and-forget kind of vulnerability reports lately.

> I'm pretty sure that issue was fixed by:
> 
> commit 003049b1c4fb8aabb93febb7d1e49004f6ad653b
> Author: Kai Aizen <kai@snailsploit.com>
> Date:   Wed Feb 18 17:36:41 2026 +0000
> 
>     io_uring/zcrx: fix user_ref race between scrub and refill paths
> 
> which is already in stable.
> 
> CC'ing in Pavel, who was inexplicably dropped from the emails, even
> though he is the one guy that should indeed be on the CC list.

I'm at fault for dropping Pavel.  The oss-security list adds Reply-To
pointing to the list, which at least with Mutt replaces what's in From
in reply-to-all, and I forgot to override that.  I then realized, but
thought (maybe wrongly) that since Pavel had replied to the thread he
must be either on the list or on s@k.o anyway.  Sorry, and thank you
Jens for re-adding Pavel.

> > Meanwhile, it looks like there's a blog post (by someone else? I am
> > confused) on exploitation of this issue, with exploit files attached:
> > 
> > https://ze3tar.github.io/post-zcrx.html
> 
> I won't comment too much on this to avoid offending anyone, but I'm a
> bit puzzled by:
> 
> "Once we have the address of modprobe_path (from KASLR step above), we
> write our script path via /proc/sys/kernel/modprobe: c
> 
> int fd = open("/proc/sys/kernel/modprobe", O_WRONLY);
> write(fd, "/var/tmp/evil.sh", 16);
> 
> This sysctl entry writes directly into modprobe_path in kernel memory
> and is writable with CAP_SYS_ADMIN, which we already have via
> CAP_NET_ADMIN on container configurations that grant both."
> 
> as surely the point of a local exploit is, in fact, to gain root in the
> first place. If you already have CAP_SYS_ADMIN, what is the point?
> 
> But hey, someone wrote a blog post about something that sounds
> dangerous.

Oh, wow.  That is indeed ridiculous, and puts everything else in this
report in (greater) doubt.  Not only would that require privileges to
write into that sysctl, but also why determine "the address of
modprobe_path" if we were going to just use sysctl.  The actual code in
zcrx_lpe.c tries to determine the address, but then does not use the
address, and does not use sysctl either.  So it would not do what's
claimed even if run as root, as far as I can see.  Note that "mp" is a
local variable that's only checked for non-NULL and not passed anywhere:

    uint64_t mp = kallsyms_addr("modprobe_path");
    uint64_t kt = kallsyms_addr("_text");
    if (mp) printf("[+] modprobe_path @ 0x%lx\n", mp);
    else    printf("[!] modprobe_path unreadable (kptr_restrict)\n");
    if (kt) printf("[+] _text @ 0x%lx\n", kt);

    time_t t0 = write_evil_sh();
    printf("[*] evil.sh written (t0=%ld)\n", t0);

    if (method == 0 || method == 1) method_a(ifname);
    if (method == 0 || method == 2) method_b(ifname);
    if (method == 0 || method == 3) method_c(ifname);

    printf("\n[*] dmesg:\n");
    system("dmesg 2>/dev/null | tail -20 | "
           "grep -iE 'warn_on|bug:|oob|free_count|zcrx|niov|kasan|panic' "
           "|| echo '    (nothing)'" );

    if (mp) {
        printf("\n[*] modprobe escalation...\n");
        trigger_modprobe(t0);
        escalate(t0);
    }

    printf("\n[*] done\n");
    return 0;

So AI slop it is.  The question is whether there's any substance here?

Alexander
