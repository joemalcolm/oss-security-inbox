X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9507" "Sunday" "19" "May" "2019" "18:23:59" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" nil "230" nil "^Date:" nil nil "5" nil nil (number mark "        Jason@zx2c4. May 19  230/9507  " thread-indent "\"Re: [oss-security] Potential DoS vulnerability in CGit\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential DoS vulnerability in CGit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25799 invoked by uid 550); 19 May 2019 16:24:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25777 invoked from network); 19 May 2019 16:24:27 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:references:in-reply-to:from:date:message-id:subject:to
	:content-type; s=mail; bh=VslFNLGpIfBcXNA2JLvKPF81uxQ=; b=tHv+j9
	S9RpJiW/BhJrTgi2vklUho1EoAndiUaC+P0yym7xMymELO4RhvYSJqFSuciXYTjL
	QtzAON0DZsokGmQRM65u6XnuOzYT70It6nRA+0sebA9TyJBBbTRcseoVkqolq1H3
	rFHTvLY3q1LcsNPJ35nDMppE23pAPgpa+dTCgElMYeTAhFCWU/OzTyiIL01B1H2o
	mFniLFkdSaZneNoHr9zgD4z0KNvH2cGsFBNKQaRCj06bqqOs6ZkTHKBLAyjmGV23
	br+G93vm5BLCPJYam4b24MnKNbKvN+E4rYP11jx7QOXpf+u4wRSagz06bIbwSsc+
	2CrNXERylwxvcTZQ==
X-Gm-Message-State: APjAAAVmYXUt/CGFfRfsk2DTr19Sa55NMRBYlmhLqADvPC70CXfE9HdA
	rrkHO3jJP2V2+5H0qmB087rd5kJKlDQqAY4kJbM=
X-Google-Smtp-Source: APXvYqxuh1F82V2OaUXfKq1AajUK9VPcQVhGgTSKUZNio0vF8yV/042/KmB9bGOW6jeD/kHxURmSFjcQp0bRKrgPt0E=
X-Received: by 2002:a05:6808:219:: with SMTP id l25mr14377531oie.66.1558283052525;
 Sun, 19 May 2019 09:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <LfF7Bgg--3-1@tuta.io>
In-Reply-To: <LfF7Bgg--3-1@tuta.io>
X-Gmail-Original-Message-ID: <CAHmME9qo2ncBdK9-JNsWVb1J6S=Xij-=4kr0vATL3gzOrLiT5w@mail.gmail.com>
Message-ID: <CAHmME9qo2ncBdK9-JNsWVb1J6S=Xij-=4kr0vATL3gzOrLiT5w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000ce2ef10589400b6e"
Date: Sun, 19 May 2019 18:23:59 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Potential DoS vulnerability in CGit
To: oss-security <oss-security@lists.openwall.com>, wsnark@tuta.io

--000000000000ce2ef10589400b6e
Content-Type: text/plain; charset="UTF-8"

Hey Wire,

I'm glad you emailed oss-sec, as all four of your messages went right into
the gmail spam filter. Your message here caused a bunch of people to let me
know on irc and sms. Really sorry about the snafoo. I'll have a close look
at this and ship a patch need be during the next 24 hours.

Regards,
Jason

--
Sent from my telephone.

Jason A. Donenfeld

On Sun, May 19, 2019, 14:51 Wire Snark <wsnark@tuta.io> wrote:

> Hello, oss-security list
>
> I need your advice on the following bug in CGit disclosured by me recently
> in the cgit 'at' lists.zx2c4.com [1].
> CGit is a hyperfast web frontend for git repositories written in C [2].
>
> There is no formal security contact at [3], contacting CGit author and
> maintainer Jason Donenfeld directly didn't work either (probably my mail
> ends up in spam or whatever). My posting to CGit mailing list hasn't
> received a reply yet (since May 15) so I'm not sure whether someone has
> even read it so far.
>
> My question: is this a valid security issue (DoS) that's worth applying
> for CVE? This is my first bug in public software actually, so your advice
> on this will be very helpful. Should I do more thorough performance
> measures, or this qualitative analysis below is enough?
>
> [1] https://lists.zx2c4.com/pipermail/cgit/2019-May/004364.html <
> https://lists.zx2c4.com/pipermail/cgit/2019-May/004364.html>
> [2] https://git.zx2c4.com/cgit/ <https://git.zx2c4.com/cgit/>
> [3] https://git.zx2c4.com/cgit/about/ <https://git.zx2c4.com/cgit/about/>
>
> ### Bug description
>
> A specially crafted URL in the request is processed by cgit with a sort of
> non-linear(quadratic) function, excessively using CPU and network
> resources. That is, given input with len(input) = n, output produced by
> cgit becomes len(output) ~ C * n^2.
>
> Severity: Low (?)
>
> ### Reproducers
>
> Hand-crafted reproducers I have come with so far look like:
> curl http://localhost:8080/mycgit/tree/0/0/ <
> http://localhost:8080/mycgit/tree/0/0/><...>/0/0/0
>
> Where "localhost:8080" is where my web server is, "mycgit" is a valid
> repository name, and the number of /0/ blocks that can be filled is
> determined by the maximum URL length configured at the particular web
> server.
>
> Reproducer for my local server setup: local_repr.txt (attached)
> Input len = 8056, Output is ~15.5Mb.
>
> For kernel.org, that is using cgit: kernel.org_repr.txt (attached)
> There are 2 reproducers:
> - URL with len=1305 bytes. Output is html with len=424 kbytes.
> - URL with len=1875 (maximum that is accepted at kernel.org at the
> moment). Output is html with len=863 kbytes.
>
> The dependency seems to be quadratic with C ~ 0.25.
>
> Original hang reproducer generated by AFL: afl_repr.bin (attached)
> Input: 34kb, Output: ~600Mb
>
> Note: afl_repr.bin file format is tab-separated values for all used env
> variables by cgit; the reproducer is different and contains some
> non-printable chars (in my fuzzing setup cgit reads env variables from
> stdin, allowing arbitrary input)
>
> ### Analysis
>
> Backtrace from interrupting cgit during processing of this input (with
> output in terminal, i.e. slow):
> Program received signal SIGINT, Interrupt.
> 0x00007ffff7d741c5 in write () from /usr/lib/libpthread.so.0
> (gdb) bt
> #0  0x00007ffff7d741c5 in write () from /usr/lib/libpthread.so.0
> #1  0x00005555555647d4 in html_raw (data=<optimized out>, size=6948) at
> ../html.c:83
> #2  0x0000555555564ec1 in html (txt=<optimized out>) at ../html.c:211
> #3  html_url_path (txt=<optimized out>, txt@entry=0x55555574ff30 "Oe",
> '/' <repeats 198 times>...)
>     at ../html.c:211
> #4  0x000055555556e70d in repolink (title=title@entry=0x0,
> class=class@entry=0x0,
>     page=page@entry=0x5555556b175b "tree", head=head@entry=0x555555759450
> "fuzzing",
>     path=path@entry=0x55555574ff30 "Oe", '/' <repeats 198 times>...) at
> ../ui-shared.c:288
> #5  0x000055555556e853 in reporevlink (page=page@entry=0x5555556b175b
> "tree",
>     name=name@entry=0x555555751a54 "", title=title@entry=0x0,
> class=class@entry=0x0,
>     head=head@entry=0x555555759450 "fuzzing", rev=0x0,
>     path=0x55555574ff30 "Oe", '/' <repeats 198 times>...) at
> ../ui-shared.c:319
> #6  0x000055555556fbc9 in cgit_tree_link (path=0x55555574ff30 "Oe", '/'
> <repeats 198 times>...,
>     rev=<optimized out>, head=<optimized out>, class=0x0, title=0x0,
> name=0x555555751a54 "")
>     at ../ui-shared.c:345
> #7  cgit_self_link (name=name@entry=0x555555751a54 "", class=0x0,
> title=0x0) at ../ui-shared.c:527
> #8  0x0000555555571347 in cgit_print_path_crumbs (path=<optimized out>) at
> ../ui-shared.c:957
> #9  cgit_print_pageheader () at ../ui-shared.c:1103
> #10 0x00005555555718cf in cgit_print_layout_start () at ../ui-shared.c:863
> #11 cgit_print_error_page (code=code@entry=404, msg=msg@entry=0x55555568d951
> "Not found",
>     fmt=fmt@entry=0x555555690f7c "Path not found") at ../ui-shared.c:852
> #12 0x0000555555575d5b in cgit_print_tree (rev=0x555555759450 "fuzzing",
>     path=0x55555574ff30 "Oe", '/' <repeats 198 times>...) at
> ../ui-tree.c:382
> #13 0x0000555555561993 in process_request () at ../cgit.c:800
> #14 0x0000555555563579 in cache_process (size=<optimized out>,
> path=<optimized out>,
>     key=<optimized out>, ttl=<optimized out>, fn=fn@entry=0x555555561890
> <process_request>)
>     at ../cache.c:370
> #15 0x000055555556236f in cmd_main (argc=<optimized out>, argv=<optimized
> out>) at ../cgit.c:1161
> #16 0x000055555555ed4f in main (argc=2, argv=0x7fffffffe7e8) at
> common-main.c:45
>
> As I understand, the issue is in ui-shared.c, cgit_print_path_crumbs():
>
> ctx.qry.path = p = path;
> while (p < end) {
>   if (!(q = strchr(p, '/')))
>     q = end;
>   *q = '\0';
>   html_txt("/");
>   cgit_self_link(p, NULL, NULL);
>   if (q < end)
>     *q = '/';
>   p = q + 1;
> }
>
> It attempts to print a cgit_self_link() on each subpath in the URL,
> resulting in O(n^2) for n as number of subpaths in the url.
>
> ### How to fix
>
> I don't really know cgit internals, so I can propose only very simple fix
> - limit the depth of path crumbs handling, e.g.
>
> diff --git a/ui-shared.c b/ui-shared.c
> index d27a5fd..279862f 100644
> --- a/ui-shared.c
> +++ b/ui-shared.c
> @@ -949,7 +949,9 @@ static void cgit_print_path_crumbs(char *path)
>         ctx.qry.path = NULL;
>         cgit_self_link("root", NULL, NULL);
>         ctx.qry.path = p = path;
> -       while (p < end) {
> +       int maxdepth = 10;
> +       while (p < end && maxdepth > 0) {
> +               maxdepth--;
>                 if (!(q = strchr(p, '/')))
>                         q = end;
>                 *q = '\0';
>
> Probably this magic 10 should be defined somewhere (do not think it should
> be configurable though). Also I don't know what is valid path depth
> expected here.
> With this fix I confirm the output size is reduced to normal (8056-len URL
> gives 50K, 34K AFL-generated one gives 204K html output).
>
> ### Security implications
>
> I think this issue can be leveraged to cause Denial of Service condition
> on the cgit server. I have tried following experiment: at the localhost
> start 100 curl instances with reproducer (8056 one) and "--limit-rate 10K
> -sS >/dev/null" options so they do not consume output html too fast. This
> results in a few seconds of high CPU usage at the target server (I used 4
> vCPU VM from some old Core i7 mobile CPU). 100 curls cause load ~1, adding
> more can push to 2 and so on; curls do not seem to consume much CPU
> themselves. I use nginx, fcgiwrap and cgit.cgi, so nginx worker process and
> fcgiwrap were using the most of CPU, probably until all cgit output has
> been saved in nginx buffer (not really sure here, but seems like nginx
> memory usage grows). After initial CPU usage burst cgit finishes rendering
> and terminates, so CPU usage goes down. Some clients may receive one of the
> two errors:
>   curl: (18) transfer closed with outstanding read data remaining
>   curl: (56) Recv failure: Connection reset by peer
>
> Most of the clients continued to work. Sometimes (especially if increasing
> a number of clients) there are fcgiwrap failures like:
>
> [crit] 21295#21295: *1182 pwritev()
> "/var/lib/nginx/fastcgi/2/57/0000000572" has written only 936 of 8184 while
> reading upstream, client: 127.0.0.1, server: localhost, request: "GET
> /mycgit/tree/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/<...cut...>/0/
>
> After applying the fix, none of the issues have been observed with 100-400
> curl readers at the same setup (even if throttled to 1K instead of 10K as
> before, to keep connections open). CPU bursts only for a very short amount
> of time (mostly when 100s of curls are forked/exec'd, though slight
> fcgiwrap CPU usage has been observed in htop too).
>
> ### About the author
>
> My name is Fyodor [Wire Snark], I'm an amateur security researcher at
> DC7831 (http://defcon-nn.ru <http://defcon-nn.ru>), our local DEF CON
> group in Nizhniy Novgorod, Russia.
>
> This report has been prepared as a result of my self-studying fuzzing with
> AFL and LibFuzzer from LLVM and applying them to cgit. I haven't seen any
> such fuzzing reported for cgit, so if you know any previous work on this,
> I'd be glad to know (I plan to publish a blog post about my fuzzing setup
> and these results; no crashes have been observed so far).
>
>
> Best regards,
> Wire Snark
>

--000000000000ce2ef10589400b6e--
