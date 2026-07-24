X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/25
Message-ID: <20260724155101.5edoySnm@steffen%sdaoden.eu>
Date: Fri, 24 Jul 2026 17:51:01 +0200
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

John Haxby wrote in
 <5B415E28-11C7-4BCD-81FF-2F120FDC0357@...il.com>:
 |> On 23 Jul 2026, at 11:00, Peter Gutmann <pgut001@...auckland.ac.nz> \
 |> wrote:
 |> 
 |>> If it is *vitally* important that your kernel *never* need to updated \
 |>> *ever*,
 |>> then a traditional kernel like Linux, *BSD, MacOS, iOS, or Windows \
 |>> is NOT
 |>> what you're looking for. What you need is a formally-proved kernel.
 |> 
 |> That's the textbook answer.  The practical answer is "what you need is a
 |> minimal RTOS".  It doesn't need any formal proof, it just needs to \
 |> be basic
 |> enough that there's nothing there to attack.  Not being able to get \
 |> a shell on
 |> something because there isn't one is probably the single biggest \
 |> win you can
 |> have in device security.
 |
 |Live patching in it various guises is also useful.  I know at Oracle \

That was an interesting link from the blog you had pointed to,
yes.  I wondered how modular the kernel would have to be for this.
I mean the Linux kernel (and others) can do live-patching, at
least in the boot phase, i know about that.
I wondered how much this goes in line with lock paths, resource
lifetime, and all that.  I thought these patches must be heavily
engineered to deal with possible pitfalls, the code context must
be understood very consciously (which, sorry, my hm experience can
only very patchily bring in line with the term "patch pumpkin").
See .. i am no kernel developer.

 |we had systems that were (and probably are) running for some years \
 |without a reboot and fully up yo date with security fixes.   The danger \
 |there, of course, that they've been hacked about while running and \
 |when, eventually, you do need to reboot it won't come up.  (When I \
 |worked at HP we had exactly that: two vital machines were both dependent \
 |on the other one being up and normally that's OK, but not when someone \
 |accidentally hit the big power button instead of the big exit button).
 |
 |But to Peter's point, if there isn't a shell, the attack surface is \
 |greatly reduced.  I recall one customer who was adamant that they wanted \
 |to remove the shell to do just that.   I pointed out that, sure, there's \
 |no shell but they had python which is just as useful to an attacker \
 |and if the attacker really wants a shell then they could use python \
 |to download one ... 

Off-topic to what you say, but i use a build-from-source Linux
distribution, and there come in so-and-so-many Python module
dependencies that they are often not tracked as dependencies from
the package system side, yes they are not even mentioned by the
projects themselves at all, they then come in via "PIP" that wants
an online connection.  I think that became a real problem.

 |There are, of course, numerous IoT devices and home routers and whatnot \
 |that are vulnerable to attack, shell or no shell, that are regularly \
 |recruited into botnets but in those the weakness is very rarely, if \
 |ever, the kernel -- it's badly written, unmaintained webapps or cgi \
 |programs.  I'm reminded that most of the security breaches that came \
 |to my attention over the years were in application code because updates \
 |were just too difficult, needing signficant effort and downtime.
 |
 |In the end, it's not the number of CVEs, it's the design of the applicat\
 |ion platform.  The platform needs to have a seamless update mechanism \
 |*designed in*.   My phone and the laptop that I'm typing this message \
 |on both update automatically (or would do if I let them, [*]).  At \

To note that i found it massively astonishing, to say the least,
how much data crosses the internet for certain quite minimal
updates of smartphone, a Window system, and, way over a decade
ago, MacOS.  Plus, for smartphones, how plain security updates
increase resource consumption.
Plus to mention possible stale data, lost temporary files of even
larger sort, stale users / groups / configuration files.  And
more.

Package systems are so incredible complicated to do right, if
there exists one which really does it completely right, including
cleanup, also of now stale dependencies (is that even possible, if
configuration or certain scripts may invoke programs of what is
now a stale dependency per se), without reboot / complete
reinstallation.  And all that automatically.

This is of course a small and private opinion.
I have actually seen enterprise systems with more or less all of
the above mentioned negative aspects, but running "stable" for
decades nonetheless.  *But* those things were so gigantic, noone,
to the best of my knowledge, really had an insight of all those
uncountable files etc.

 |least one of my linux machines used "dnf automatic" (as well as live \
 |patching) so I didn't need to worry if I want on holiday).  The point \

There you name live patching.

 |it, though, that those cheap home routers and IoT devices don't have \
 |automatic updates because the infrastructure needed to support that \
 |is too expensive: my ubiquity router and nest thermostats are relatively \
 |expensive because, in part, I paid for the infrastructure to update them.
 |
 |And I don't care if you say you have a kernel with a formal proof -- \
 |you'll still have bugs in somewhere in the application stack.
 |
 |jch
 |
 |[*] I update my various devices first so that if there are any problems \
 |then I can warn my friends and family.   That's just paranoia now, \
 |I not had a problem with updates for, oh, 15 years or more.

Most errors i make myself.

 --End of <5B415E28-11C7-4BCD-81FF-2F120FDC0357@...il.com>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
