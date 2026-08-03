X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/8
Message-ID: <20260803171500.GL7398@frogsfrogsfrogs>
Date: Mon, 3 Aug 2026 10:15:00 -0700
From: "Darrick J. Wong" <djwong@...nel.org>
To: Marco Benatto <mbenatto@...hat.com>
Cc: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>, oss-security@...ts.openwall.com
Subject: Re: RefluXFS: LPE in the Linux kernel via XFS reflink race (CVE-2026-64600)
Content-Type: text/plain; charset=utf-8

On Mon, Aug 03, 2026 at 11:44:01AM -0300, Marco Benatto wrote:
> Sorry for the late reply,
> 
> I haven't run any tests using an XFS filesystem exported via an NFS share,
> nor have I tested any layered filesystem running on top of XFS.
> I'm presuming that if the filesystem running on top of XFS passes along the
> reflink feature, the exploit is still valid however the overhead
> introduced by upper layers may change the race window a bit and make it
> harder to exploit, at least.
> 
> I see Darrick is copied in this thread, so I defer to him if he has any
> further thoughts.

I don't.  I imagine that it's still exploitable if (a) your nfs server
itself does directio and (b) your nfs client can send directio writes to
the server, but given the extra rpc work involved I'm not surprised that
it's much harder to reproduce than running it against a raw xfs
filesystem.

--D

> 
> Marco Benatto
> Red Hat Product Security
> secalert@...hat.com for urgent response
> 
> 
> On Fri, Jul 31, 2026 at 4:37 AM Dr. Thomas Orgis <
> thomas.orgis@...-hamburg.de> wrote:
> 
> > Am Wed, 22 Jul 2026 18:07:03 -0300
> > schrieb Marco Benatto <mbenatto@...hat.com>:
> >
> > > While disabling reflink once the filesystem is created is not possible
> > > we manage to mitigate the issue using the following SystemTap script:
> >
> > I'm a bit late, but I do wonder if the issue also pertains to XFS fs
> > exported via NFS. It seems like the reflink feature is passed through,
> > but so far I was not able reproduce using
> >
> >
> > https://github.com/litosmartin/CVE-2026-64600-Refluxfs-PoC/blob/main/refluxfs.c
> >
> > I guess the race condition is avoided when going through the NFS stack,
> > but maybe only by chance. The poc ran unsuccessfully for several
> > minutes over NFS while it is successful _instantly_ locally on the NFS
> > server.
> >
> > Anyone got insight on this? XFS behind NFS should also be quite common
> > … though I had to adapt the exploit code not to work on /etc/password,
> > which is on on the NFS and thus limits the impact not to system
> > compromise, but on one user manipulating files of another user, which
> > is bad enough in my book.
> >
> >
> > Alrighty then,
> >
> > Thomas
> > --
> > Dr. Thomas Orgis
> > HPC @ Universität Hamburg
> >
> >
