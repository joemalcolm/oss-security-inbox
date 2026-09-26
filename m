X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/26/1
Message-ID: <87y0co619b.fsf@gmail.com>
Date: Fri, 25 Sep 2026 22:16:16 -0700
From: Collin Funk <collin.funk1@...il.com>
To: oss-security@...ts.openwall.com
Cc: Simon Josefsson <simon@...efsson.org>, "Mak, Brian" <brian.mak@....com>, brian@...k.me, Adhemerval Zanella Netto <adhemerval.zanella@...aro.org>
Subject: CVE-2026-95510: GNU Inetutils: use of uninitialized struct sigaction
Content-Type: text/plain; charset=utf-8

On 2026-09-14, Brian Mak privately reported a security issue with a
function defined in libinetutils, a part of GNU Inetutils. The function
is used by rlogin, rlogind, and telnetd. The possible exploits using the
bug aren't entirely clear. Brian noticed the bug from 'telnetd'
crashing, which could lead to a denial of service. However, from our
discussions, we were also concerned about the possibility of code
execution on platforms that use the SA_RESTORER bit of sa_flags and the
sa_restorer member of struct sigaction.

The issue and patch were sent to the linux-distros list privately by
myself on 2026-09-18. If you still require the patch it can be applied
cleanly to an inetutils-2.8 tarball like so:

  $ tar -xf inetutils-2.8.tar.gz
  $ cd inetutils-2.8
  $ curl --silent --location --remote-name https://codeberg.org/inetutils/inetutils/commit/f756321da9b964fc27fc43652b73913117883047.patch
  $ patch -p1 < f756321da9b964fc27fc43652b73913117883047.patch

And without further ado, here are some details about the issue, in hopes
that someone can see if anything interesting is possible, or not, now
that a patch is available:

The problematic function is listed in full below [1]:

    /* This is exactly like the traditional signal function, but turns on the
       SA_RESTART bit where possible.  */
    sighandler_t
    setsig (int sig, sighandler_t handler)
    {
    #ifdef HAVE_SIGACTION
      struct sigaction sa, osa;
      sigemptyset (&sa.sa_mask);
      sigemptyset (&osa.sa_mask);
    # ifdef SA_RESTART
      sa.sa_flags |= SA_RESTART;
    # endif
      sa.sa_handler = handler;
      if (sigaction (sig, &sa, &osa) < 0)
        return SIG_ERR;
      return osa.sa_handler;
    #else /* !HAVE_SIGACTION */
    # ifdef HAVE_SIGVEC
      struct sigvec sv, osv;
      sigemptyset (&sv.sv_mask);
      sigemptyset (&osv.sv_mask);
      sv.sv_handler = handler;
      if (sigvec (sig, &sv, &osv) < 0)
        return SIG_ERR;
      return osv.sv_handler;
    # else/* !HAVE_SIGVEC */
      return signal (sig, handler);
    # endif/* HAVE_SIGVEC */
    #endif /* HAVE_SIGACTION */
    }

We can see that undef "#ifdef SA_RESTART", sa.sa_flags has its
SA_RESTART bit set without being initialized previously. The concern
Brain raised is that, depending on the contents of the stack,
sa.sa_flags may also have its SA_RESTORER bit set. In addition, the
sa.sa_restorer field would be uninitialized, meaning it would be set to
whatever is on the stack. This field is a function pointer that is used
as a signal trampoline used on some architectures, meaning that it is
used to return from the signal handler back to the code that was
executing at the time the signal was delivered.

I am not very familiar with these signal details, so I asked Adhemerval
Zanella Netto, a glibc maintainer, if he could take a look at the report
to help us better understand the security impact. He mentioned that most
new generic Linux ports are not affected:

> The glibc sigaction always uses an stack allocated for the syscall and the
> SA_RESTORER and the sa_restorer is defined by an arch-specific macro:
>
> sysdeps/unix/sysv/linux/libc_sigaction.c:
>
>  29 #ifndef SA_RESTORER
>  30 # define SET_SA_RESTORER(kact, act)
>  31 # define RESET_SA_RESTORER(act, kact)
>  32 #endif
>
>  46   struct kernel_sigaction kact, koact;
>  47
>  48   if (act)
>  49     {
>  50       kact.k_sa_handler = act->sa_handler;
>  51       memcpy (&kact.sa_mask, &act->sa_mask, sizeof (sigset_t));
>  52       kact.sa_flags = (unsigned int) act->sa_flags;
>  53       SET_SA_RESTORER (&kact, act);
>  54     }
>
> On most generic new ports (RISC-V, LoongArch, metc), kernel always uses 
> the vDSO sigreturn trampoline (sa_restorer is not part of the kABI).

On x86_64 and i386, things seem less clear:

> On x86_64:
>
>   extern void restore_rt (void) asm ("__restore_rt") attribute_hidden;
>
>   #define SET_SA_RESTORER(kact, act)                      \
>     (kact)->sa_flags |= SA_RESTORER;                      \
>     (kact)->sa_restorer = &restore_rt
>
> So for a glibc-based binary, it is not clear to me how a corrupted input can
> change the sa_restorer. On some ABIs you might result in a different 
> sa_restorer (like ARM/i386, that will use different ones depending whether
> SA_SIGINFO is used):
>
> sysdeps/unix/sysv/linux/i386/libc_sigaction.c:
>
>  24 extern void restore_rt (void) asm ("__restore_rt") attribute_hidden;
>  25 extern void restore (void) asm ("__restore") attribute_hidden;
>  26
>  27 #define SET_SA_RESTORER(kact, act)                              \
>  28   ({                                                            \
>  29      if (GLRO(dl_sysinfo_dso) == NULL)                          \
>  30        {                                                        \
>  31          (kact)->sa_flags |= SA_RESTORER;                       \
>  32          (kact)->sa_restorer = (((act)->sa_flags & SA_SIGINFO)  \
>  33                                ? &restore_rt : &restore);       \
>  34        }                                                        \
>  35      else                                                       \
>  36        (kact)->sa_restorer = NULL;                              \
>  37   })
>  38
>  39 #define RESET_SA_RESTORER(act, kact) \
>  40   (act)->sa_restorer = (kact)->sa_restorer
>
> But even in this case, the possible breakages are:
>
> * Legacy sigcontext-by-value handlers where some old code declares 
>   'void h(int sig, struct sigcontext sc)' and reads registers from the
>   stack. With an rt frame the handler reads garbage. If it modifies sc 
>   to change the resumed context, the change is lost, because 
>   rt_sigreturn restores from uc_mcontext. This does not seem the case of
>   inetutils [2], since it does not use the sigcontext.
>
> * Restorer and frame out of sync where this happens if the corruption 
>   lands after glibc chose the restorer, or if someone calls rt_sigaction 
>   directly with a hand-picked sa_restorer. I also don't this is the
>   case.
>
> * Stack usage where the rt frame is noticeably larger because it adds
>   siginfo_t (128 bytes) and a ucontext_t. On a tight sigaltstack, or near 
>   a stack guard, frame setup can fail. I haven't dig into inetutils source
>   code to check if it were the case.

Brian followed up and mentioned that he noticed this issue on 32-bit
ARM, which can have its sa_restorer set if the user sets the SA_RESTORER
flag in sa_flags, as seen in the
sysdeps/unix/sysv/linux/arm/libc_sigaction.c file in glibc:

    #define SET_SA_RESTORER(kact, act)				\
     ({								\
       if ((kact)->sa_flags & SA_RESTORER)				\
         (kact)->sa_restorer = (act)->sa_restorer;			\
       else								\
         {								\
           (kact)->sa_restorer = ((kact)->sa_flags & SA_SIGINFO)	\
    			     ? __default_rt_sa_restorer		\
    			     : __default_sa_restorer;		\
           (kact)->sa_flags |= SA_RESTORER;				\
         }								\
     })

He also mentioned that it seemed to be the case for arm64, as can be
seen in the sysdeps/unix/sysv/linux/aarch64/libc_sigaction.c file in
glibc:

    #define SET_SA_RESTORER(kact, act)		\
     ({						\
        if ((kact)->sa_flags & SA_RESTORER)		\
          (kact)->sa_restorer = (act)->sa_restorer;	\
     })

Adhemerval then double-checked and confirmed that powerpc, s390x, and sh
also set sa_restorer unconditionally. That is, the
sysdeps/unix/sysv/linux/sh/kernel_sigaction.h,
sysdeps/unix/sysv/linux/s390/kernel_sigaction.h, and
sysv/linux/powerpc/kernel_sigaction.h files in glibc all contain
something like this:

    #define SET_SA_RESTORER(kact, act)             \
      (kact)->sa_restorer = (act)->sa_restorer

Regarding the actual security impact of this bug, it is a bit of an open
question at this point. Brian said he experienced the following, which I
have no reason to not disbelieve:

> In our case, I was able to reproduce this consistently with our custom
> setsockopt() implementation by exiting or using CTRL + C in the telnet
> session, which triggered SIGCHLD.

He also mentioned that this could cause a denial of service, similar to
CVE-2022-39028 [2]:

> telnetd in GNU Inetutils through 2.3, MIT krb5-appl through 1.0.3, and
> derivative works has a NULL pointer dereference via 0xff 0xf7 or 0xff
> 0xf8. In a typical installation, the telnetd application would crash
> but the telnet service would remain available through inetd. However,
> if the telnetd application has many crashes within a short time
> interval, the telnet service would become unavailable after inetd logs
> a "telnet/tcp server failing (looping), service terminated" error.
> NOTE: MIT krb5-appl is not supported upstream but is shipped by a few
> Linux distributions. The affected code was removed from the supported
> MIT Kerberos 5 (aka krb5) product many years ago, at version 1.8.

I agree with his assessment. However, I want to be clear that I am not
confident that nothing worse than that is possible. I don't have access
to a machine (or, more likely, the knowledge) to test this, but my
concern is whether it is possible that a valid address gets placed on
the stack such that sa.sa_restorer is set to it and later used.

This bug was introduced in GNU Inetutils 1.9, released 2011-12-31. I
also have linked the commit that introduced this [3].

I would like to thank Brian Mak <brian.mak@....com> for reporting this
issue privately, with a patch, to inetutils-security@....org on
2026-09-14, along with his follow-up discussion on the private list.
Furthermore, I would like to thank Adhemerval Zanella Netto
<adhemerval.zanella@...aro.org> for his valuable input and review.

I reported it to linux-distros and Red Hat privately on 2026-09-18. Red
Hat kindly assigned CVE-2026-95510 on 2026-09-22. Thanks to them as well.

Collin

[1] https://codeberg.org/inetutils/inetutils/src/commit/40f19d84c3dead93e6fef7fc1150fde5210ebdab/libinetutils/setsig.c#L27-L56
[2] https://nvd.nist.gov/vuln/detail/cve-2022-39028
[3] https://codeberg.org/inetutils/inetutils/commit/9476515fd31e416739d850c1948e9222a53deea9
