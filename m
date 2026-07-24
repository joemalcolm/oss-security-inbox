X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/5
Message-Id: <5B415E28-11C7-4BCD-81FF-2F120FDC0357@gmail.com>
Date: Fri, 24 Jul 2026 11:20:10 +0100
From: John Haxby <john.haxby@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8



> On 23 Jul 2026, at 11:00, Peter Gutmann <pgut001@...auckland.ac.nz> wrote:
> 
>> 
>> If it is *vitally* important that your kernel *never* need to updated *ever*,
>> then a traditional kernel like Linux, *BSD, MacOS, iOS, or Windows is NOT
>> what you're looking for. What you need is a formally-proved kernel.
> 
> That's the textbook answer.  The practical answer is "what you need is a
> minimal RTOS".  It doesn't need any formal proof, it just needs to be basic
> enough that there's nothing there to attack.  Not being able to get a shell on
> something because there isn't one is probably the single biggest win you can
> have in device security.


Live patching in it various guises is also useful.  I know at Oracle we had systems that were (and probably are) running for some years without a reboot and fully up yo date with security fixes.   The danger there, of course, that they've been hacked about while running and when, eventually, you do need to reboot it won't come up.  (When I worked at HP we had exactly that: two vital machines were both dependent on the other one being up and normally that's OK, but not when someone accidentally hit the big power button instead of the big exit button).

But to Peter's point, if there isn't a shell, the attack surface is greatly reduced.  I recall one customer who was adamant that they wanted to remove the shell to do just that.   I pointed out that, sure, there's no shell but they had python which is just as useful to an attacker and if the attacker really wants a shell then they could use python to download one ... 

There are, of course, numerous IoT devices and home routers and whatnot that are vulnerable to attack, shell or no shell, that are regularly recruited into botnets but in those the weakness is very rarely, if ever, the kernel -- it's badly written, unmaintained webapps or cgi programs.  I'm reminded that most of the security breaches that came to my attention over the years were in application code because updates were just too difficult, needing signficant effort and downtime.

In the end, it's not the number of CVEs, it's the design of the application platform.  The platform needs to have a seamless update mechanism *designed in*.   My phone and the laptop that I'm typing this message on both update automatically (or would do if I let them, [*]).  At least one of my linux machines used "dnf automatic" (as well as live patching) so I didn't need to worry if I want on holiday).  The point it, though, that those cheap home routers and IoT devices don't have automatic updates because the infrastructure needed to support that is too expensive: my ubiquity router and nest thermostats are relatively expensive because, in part, I paid for the infrastructure to update them.

And I don't care if you say you have a kernel with a formal proof -- you'll still have bugs in somewhere in the application stack.

jch



[*] I update my various devices first so that if there are any problems then I can warn my friends and family.   That's just paranoia now, I not had a problem with updates for, oh, 15 years or more.
Download attachment "signature.asc" of type "application/pgp-signature" (269 bytes)
