X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/12
Message-ID: <awNcI-F3dGjTVstI@devuan>
Date: Sun, 22 Nov 2026 22:22:56 +0100
From: Alejandro Colomar <alx+shadow@...nel.org>
To: Alejandro Colomar <alx@...nel.org>
Cc: oss-security@...ts.openwall.com, serge@...lyn.com, ipedrosa@...hat.com,  Dickson Wu <dickson.wu@...tik.com>
Subject: Re: [PATCH v7 0/2] shadow: Security fix for newgidmap(1)
Content-Type: text/plain; charset=utf-8

Hi!

I've released publicly shadow-4.20.4 a moment ago.  Below are the
details about the security issues (from the previous email, to
linux-distros@).

The release is available at
<https://github.com/shadow-maint/shadow/releases/tag/4.20.4>.


Have a lovely night!
Alex

> Date: 2026-11-14 23:23:41+0100
> From: Alejandro Colomar <alx@...nel.org>
>
> Hi!
> 
> Below goes the original bug report.
> 
> > Date: Fri, 6 Nov 2026 20:43:45 -0500
> > From: Dickson Wu <dickson.wu@...tik.com>
> > To: alx@...nel.org, ipedrosa@...hat.com, serge@...lyn.com
> > Subject: Security report: newgidmap (encrypted)
> > Message-ID: <CAFaZ9eqJ18S7PsVj5_Rj9wustfU2eNZrGqXp4AJD1+yROc1u3Q@...l.gmail.com>
> >
> > Hi Alejandro, Iker and Serge,
> > 
> > I'm reporting a local issue in newgidmap, following SECURITY.md
> > (encrypted to the three keys listed there).
> > 
> > newgidmap fd:N checks that the passed directory FD is on the procfs
> > device, then opens "setgroups" relative to it with O_RDWR as root and
> > writes "deny\n".  An unprivileged user can, inside their own user and
> > mount namespace, bind-mount a root-owned file over setgroups under a
> > task directory of the host procfs and pass that directory FD back to
> > newgidmap.  The device check passes because the directory itself is
> > still on procfs, and the first five bytes of the target file become
> > "deny\n".  Mapping the caller's own GID is enough to reach
> > write_setgroups(), so no subgid entry is needed, and the later gid_map
> > failure doesn't undo the write.
> > 
> > I reproduced it on the 4.20.3 release with the helper installed SUID
> > root and a disposable root-owned 0600 file: the first five bytes
> > changed and the rest of the file, owner and mode stayed the same,
> > while a fresh-procfs control was rejected and left its file untouched.
> > get_pid.c and newgidmap.c are the same on current master.  It's a
> > fixed five-byte write at offset 0, so I'd call it a local
> > integrity/DoS issue rather than code execution.
> > 
> > Report, affected lines, a suggested fix (fstat the opened setgroups
> > FD, or openat2 with RESOLVE_NO_XDEV) and the PoC are here:
> > 
> > <https://gist.github.com/DicksonWu654/cdad661068d6a50da475aac57a9f07f2>
> > 
> > Happy to test a fix or answer questions whenever it's useful.
> > 
> > Best,
> > Dickson
> 
> We worked on this patch set of two patches (sent as replies to this
> mail), which applies on top of the 4.20.3 release to fix the bug.
> If you need help backporting it to older versions, let me know (but
> I think it should be relatively easy).
> 
> Let's use an embargo of 1 week, so let's disclose on 2026-11-22.
> 
> I haven't encrypted this patch set, since we've already been discussing
> it unencrypted, and it's also not critical.
> 
> 
> Have a lovely night!
> Alex
> 
> 
> Serge E. Hallyn (2):
>   lib/idmapping.c, src/newidmap.c: Use openat2(2) for safety
>   src/new[gu]idmap.c: Drop fd:N
> 
>  lib/Makefile.am     |  2 ++
>  lib/atoi/getnum.c   |  1 -
>  lib/atoi/getnum.h   |  9 ---------
>  lib/fs/open/open.c  | 48 +++++++++++++++++++++++++++++++++++++++++++++
>  lib/fs/open/open.h  | 16 +++++++++++++++
>  lib/get_pid.c       | 32 ------------------------------
>  lib/idmapping.c     |  3 ++-
>  lib/prototypes.h    |  1 -
>  man/newgidmap.1.xml | 11 -----------
>  man/newuidmap.1.xml | 11 -----------
>  src/newgidmap.c     | 20 +++++++------------
>  src/newuidmap.c     | 17 ++++------------
>  12 files changed, 79 insertions(+), 92 deletions(-)
>  create mode 100644 lib/fs/open/open.c
>  create mode 100644 lib/fs/open/open.h
> 
> -- 
> 2.55.0
> 



-- 
<https://www.alejandro-colomar.es>

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
