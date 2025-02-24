Received: (qmail 20062 invoked by uid 550); 24 Feb 2025 17:14:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17821 invoked from network); 24 Feb 2025 17:13:40 -0000
Date: Mon, 24 Feb 2025 18:13:32 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>,
	Jordy Zomer <jordy@pwning.systems>, Damien Miller <djm@mindrot.org>,
	Dmitry Belyavskiy <dbelyavs@redhat.com>
Message-ID: <20250224171331.GA8720@openwall.com>
References: <20250218091414.GA26981@localhost.localdomain> <20250222032521.GA30890@openwall.com> <CAOcQRVX639qNrgqbKjPFpZL0_SHEdpGrcLmbLySH15fE5p5Pwg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOcQRVX639qNrgqbKjPFpZL0_SHEdpGrcLmbLySH15fE5p5Pwg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client

Hi Dmitry,

Thank you for taking a look at this.

On Mon, Feb 24, 2025 at 05:57:13PM +0100, Dmitry Belyavskiy wrote:
> On Sat, Feb 22, 2025 at 4:27???AM Solar Designer <solar@openwall.com> wrote:
> > +++ openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c
> > 2025-02-21 03:37:13.106465704 +0000
> > @@ -309,13 +309,14 @@ ssh_asprintf_append(char **dsc, const ch
> >         i = vasprintf(&src, fmt, ap);
> >         va_end(ap);
> >
> > -       if (i == -1 || src == NULL)
> > +       if (i == -1)
> >                 return -1;
> >
> >         old = *dsc;
> >
> >         i = asprintf(dsc, "%s%s", *dsc, src);
> > -       if (i == -1 || src == NULL) {
> > +       if (i == -1) {
> > +               *dsc = old;
> >                 free(src);
> >                 return -1;
> >         }
> >
> > This is in RH-added Kerberos support code.  The issue was that if the
> > second asprintf() call failed, it'd leave *dsc undefined, yet the caller
> > of this function would free() memory via that pointer.  In practice,
> > glibc would either leave the pointer unchanged or reset it to NULL
> > (varying by glibc version and specific error condition), both of which
> > are safe to free().  Yet resetting "*dsc = old;" should be safer, and
> > should avoid the memory leak that happens if *dsc got reset to NULL.
> > That memory leak shouldn't have mattered anyway because it'd only occur
> > when the process already has trouble allocating more memory here.
> >
> > The "src == NULL" checks are dropped because the first one shouldn't
> > matter if asprintf() behaves correctly and wouldn't help if it does not
> > (as src isn't initialized to NULL before the call), the second one
> > is wrong (was probably meant to check *dsc, not src), and further code
> > in this same source file relies on asprintf() return value anyway.
> 
> I'm not sure that the check for the  src == NULL should be removed at least
> for the 1st branch.

It's OK to keep it.  This really shouldn't matter.

> Unfortunately I came across implementations that caused segfault on passing
> NULL pointers to sprintf-like functions.

Of course, we shouldn't pass NULL pointers to sprintf-like functions.
But if the first asprintf() call returns other than -1, the pointer is
supposed to be non-NULL.  And if we somehow don't trust asprintf()
return value (even though it's standardized, unlike what happens to the
pointer on error), then the check for NULL is insufficient because the
pointer may as well remain uninitialized (formally it's undefined), so
you'd need to start by "src = NULL;" before the first asprintf() call
for this defensive programming to make sense.  And the second "src ==
NULL" check is redundant with the first (not reached if src is NULL).

Alexander
