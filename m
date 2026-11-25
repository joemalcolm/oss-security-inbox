X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/4
Message-ID: <d854f072-cabf-4cef-9ff4-54a1850f8dcf@redhat.com>
Date: Wed, 25 Nov 2026 09:05:05 +0100
From: ipedrosa@...hat.com
To: Alejandro Colomar <alx+shadow@...nel.org>, Solar Designer <solar@...nwall.com>, oss-security@...ts.openwall.com, serge@...lyn.com, Dickson Wu <dickson.wu@...tik.com>
Subject: Re: [PATCH v7 0/2] shadow: Security fix for newgidmap(1)
Content-Type: text/plain; charset=utf-8

Hi,

I'll shed a bit of light on this matter. Yesterday, someone from Red Hat's internal security team got in touch with me and shared the link, asking whether I thought it was necessary to open a CVE. To be honest, I hadn't been following this discussion very closely, but from what I had gathered, it did seem necessary to open one. Given that the link was already public, I didn't think it was necessary to place an embargo on it.

On 24/11/2026 22:47, Alejandro Colomar <alx+shadow@...nel.org> wrote:
> Hi Alexander,
> 
> > Date: 2026-11-24 18:29:43+0100
> > From: Solar Designer <solar@...nwall.com>
> >
> > On Sun, Nov 22, 2026 at 10:22:56PM +0100, Alejandro Colomar wrote:
> >> I've released publicly shadow-4.20.4 a moment ago.  Below are the
> >> details about the security issues (from the previous email, to
> >> linux-distros@).
> >>
> >> The release is available at
> >> <https://github.com/shadow-maint/shadow/releases/tag/4.20.4>.
> >
> > Thanks!  Looks like this is CVE-2026-135901:
> >
> > https://bugzilla.redhat.com/show_bug.cgi?id=2583156
> 
> Thanks!
> 
> >
> > Quoting from there:
> >
> >> CVE-2026-135901 shadow-utils: shadow-utils: newgidmap and newuidmap
> >> improperly validate file descriptor location, allowing local file
> >> corruption via bind mount
> >>
> >> OSIDB Bzimport 2026-11-24 11:34:55 UTC
> >>
> >> The newgidmap and newuidmap helper utilities accept a directory file
> >> descriptor identifying a target process's /proc/<pid>/ directory, and
> >> validate that this descriptor refers to the procfs filesystem by
> >> comparing device numbers (st_dev/st_rdev) against a known procfs path.
> >> After this check, the utilities open a file (for example "setgroups") by
> >> name relative to that directory descriptor and write privileged uid/gid
> >> mapping data to it.
> >>
> >> An unprivileged local user can defeat this validation using Linux user
> >> and mount namespaces: by bind-mounting an arbitrary, attacker-chosen
> >> file over the expected child path inside a procfs directory they hold a
> >> descriptor to, the device-number check (which only inspects the
> >> directory itself) still passes, while the subsequent open-by-name
> >> resolves through the bind mount to the attacker's chosen file instead of
> >> the intended procfs file. This redirects the helper's privileged write,
> >> resulting in the first five bytes of the attacker-chosen file being
> >> overwritten with the fixed content "deny\n".
> >>
> >> This was reported publicly, with a working proof of concept
> >> demonstrating the primitive against a SUID-root build of newgidmap, and
> >> fixed upstream in shadow 4.20.4 by using openat2(2) with RESOLVE_NO_XDEV
> >> for path resolution and by removing the affected "fd:N" argument form
> >> entirely.
> >
> > I guess "reported publicly" refers to:
> 
> I guess the same.
> 
> >
> >>>> Report, affected lines, a suggested fix (fstat the opened setgroups
> >>>> FD, or openat2 with RESOLVE_NO_XDEV) and the PoC are here:
> >>>>
> >>>> <https://gist.github.com/DicksonWu654/cdad661068d6a50da475aac57a9f07f2>
> >>>>
> >>>> Happy to test a fix or answer questions whenever it's useful.
> >>>>
> >>>> Best,
> >>>> Dickson
> >
> > which didn't appear to draw any attention before the release.
> 
> Yup; I was a bit confused by the report coming encrypted but having
> a link to a public github page with the report.  We kept it embargoed
> because
> 
> 1)  The issue wasn't too critical, so even if some people might have
>      found that, I don't think they could do much harm.
> 
> 2)  There were some chances that nobody had found that link.  Hopefully,
>      the reporter didn't share that link with other people.
> 
> 3)  If we went public before having a fix, we'd have given that link
>      more publicity.
> 
> 
> Have a lovely night!
> Alex
> 
> >
> > Alexander
> 
> 

