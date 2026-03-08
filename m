Received: (qmail 9433 invoked by uid 550); 8 Mar 2026 04:58:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5653 invoked from network); 8 Mar 2026 04:49:40 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1772945372; cv=none;
        d=google.com; s=arc-20240605;
        b=PF1ljJ0XsMsEqtRkMCqB2ggjlk1L7g5qdXG5zPsQ6dZ8u6BXvRjqx5jt7tcJAtRUuB
         2JLK8l2EPbAi1qxOTLaCit9ULqf7AZZ1tqNAyKZfmlPxLLvOG8feo7yD/XEZ7s0W4YQN
         GWGSIktcGuy5gYPguXN0jFtePUxLxjfJDcWf+gCbAWm+SGAbHk9VHT+AKdA5ol87i7Zy
         eih+31/7CSBtVbVdmnhKAZnkkaSwMGnizi9aPBr7oFB7FYLMbDy6VtH/H5xphylCYRfb
         TOM3fZan6Q25U1/2Fw8bo/GjQS9SMZ8nBa0mi6lIMO+SfYB3sDKv9/e6qR5/9CI8B3xQ
         Qt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ETkoZMRw+relepPw2jLBg9J3+rl4b6pMpwoZbLr9DfQ=;
        fh=XvbE7gy5AuGRMf9G/iyrFUDxpnyHLyiw2bdkjuYtZSg=;
        b=kHLRmmUV1P9HPzppi4qSBDnf0/gYBbQHcRs61D4mv6DxRRUpPbO7lpb0xu09JH8ri2
         30CnkrS4qJlh3U53SukuTv3xsy0niy+KCYuaTtHz4lwPitm89d6XyViULtFZL4upOJnN
         x0bKBew3JKPGDbIBlBveAbGbTH82UUppPH0pQpb71/3v7oqs1jBcLlnPtzl89T3mUGyY
         Bym96nng875fLI321McrpsAU5qA+JqRXkO6ZGDh6AaKrZVATbA93DGeJCFXdS1pP2E9b
         ANjQmQJ+JZRlU5SiOonkj4sAKt1eUYeL9CJPdjhASyCfurifpE1IYWQ1XOhAsp2qIQ01
         7RQw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772945372; x=1773550172; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ETkoZMRw+relepPw2jLBg9J3+rl4b6pMpwoZbLr9DfQ=;
        b=QuUnID9z2OByhuPPaWYfdEkTdLM72WDzOShxpe7TMEaNEj9mTYxwsUL6V9BE32Y5CI
         Eq3C+GQoXO004fwrfMqF1H5o0dtSx0AzwZ/L/W015tiGtkpGRfvnWUvQB9S1wGlyPQzR
         qmpNc6L0SW/3MsdkKO4Aag3Xaabe1DidxtCcsChHIEBCl+3bpcKBbUFpcr2BefHIvPxd
         4VNxyP4isfAExr3ZxjTm66HkHnrFbxFugeFiql9/ySLRswQFw2CgKFwbngwA5w9ZyuDv
         puL1yOgCfamq2IKhXckLT7TzmcvnbsRJAFxEvgFTqzWNJ/aEGRr1SKhxLF5yhql5rx5E
         Umaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772945372; x=1773550172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ETkoZMRw+relepPw2jLBg9J3+rl4b6pMpwoZbLr9DfQ=;
        b=JkXxILp61cUW6s1VmKU1sYdBeWvxMPp8+KLPOW0VxWda0eTNumIOycVZ1ZLV+TZ9k7
         genTkIa0QocpGbUwm5Yil5gBTszNxd3yvt+j3pff92vrC3P0DyTEt+Jf+bdYKDHe+wvY
         HiSMF+1nHImhVV9A5/EK70ASWArzwX/yA7t0V42vX7dAuAdD+XrEcIaHd4o1DhKifnAM
         hQJb2qtubfAYNkHXanMS9RezDP+zfa+do/WlC0ck8vYBjerIT17ggcCIiFSWzA36p5Ce
         udmymSw/bHBId6RPSjKQwtnpwf84gdf2dqOKJLepjX9PQxM4RoPXeB4RMQ/4T91QQYS5
         tZ2A==
X-Gm-Message-State: AOJu0YxmBK7AFGVWRGk1eNL8wP1o0fw/VkVzNVSGG3aJMNa6y7eHPr9M
	cPh8rie2200xdVk4hV9F6HypeX8Qo8OesfQLLpIV04L9xmwKHLM9NXmIwProjel7JFlCnNAnZg5
	VhAMRSFO5A90dmMr9N1csquejfv4rGDsOgcBD
X-Gm-Gg: ATEYQzwdokPAkUOS2+/COt8ZPzuZU2kRRlI2MjZyMpnfrGF4A+CuJNBcQxtu7MVNsOQ
	w98ubdTX99sT6dgOi3rJ3KjXq5JmoZ8hsUYgtjcU9E75RvsyTT5QjFXDf5CimlpFbdQp3RcaLyp
	lIujB/KWBvturvBxLx5eBuAhT8KJ5k6lfTI9oBTnwIOIzC6MVH9ao0EPR8uLwdi1AlZwUrsFiI6
	n2ZG0Gx6HtoMDC6t7V7H60mlEgqhH4SaddEhrvunc6eaNGwht+07mFagIHuuxz7xztMcf4vIzoE
	JzoQ69BmP+abyLOyc0eDZrM7DV9TblGlAoyW5r71x2fdC08+7byxETOwPZld7sjy8HCGvyKPQDg
	J6nY=
X-Received: by 2002:a05:600c:3515:b0:485:364e:934e with SMTP id
 5b1f17b1804b1-485364e94admr14293145e9.21.1772945371563; Sat, 07 Mar 2026
 20:49:31 -0800 (PST)
MIME-Version: 1.0
References: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <20260224052943.GA13045@openwall.com> <20260224064351.GA14779@openwall.com>
 <20260307002011.18141-1-justin.swartz@risingedge.co.za> <20260308025745.GA24992@openwall.com>
In-Reply-To: <20260308025745.GA24992@openwall.com>
From: Pat Gunn <pgunn01@gmail.com>
Date: Sat, 7 Mar 2026 23:49:20 -0500
X-Gm-Features: AaiRm53Vx3vONmEQRDHI9pMEhCHte4XrhnZW-DUum1QUrqpaqrM8YO7CFyFkOYY
Message-ID: <CADz+4x-kKkAgy05Q44rV5n2sphRtcJxiqqBYey=8Z=52xVrqSg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: bug-inetutils@gnu.org
Content-Type: multipart/alternative; boundary="000000000000140bb7064c7c0385"
Subject: Re: [oss-security] Re: Telnetd Vulnerability Report

--000000000000140bb7064c7c0385
Content-Type: text/plain; charset="UTF-8"

I think it would be refreshing to see distros still using telnet to
entirely ditch the environment-propagation mechanism; in my view it never
was a good idea. A few arguments:
A) telnet was usable between different distros, operating systems, and
systems configurations. The meaning (and applicability) of different
environments between those differs; a system running DYNIX might not have
the same termcap entries as one running Ultrix, and someone running Windows
likely wouldn't set it at all. Likewise for EDITOR; the editor on one host
might be outdated or not present on another
B) There are, as noted here, issues with passing and parsing env vars.
Maybe this is fixable with some patches, sure, but why do it if we don't
have to?
C) The user can instead handle almost all of this with dotfiles or launch
scripts on the target system (in fact, things like EDITOR will often be
overwritten during shell init even if passed, depending on what system and
user shell-init config does)
D) Users probably never expected env vars to be passed along because it's
such a weird mechanism (even though it's a very old mechanism)

The one use case I can think of where this is is actually useful would be
in a tight cluster where everybody's xhost+ everyone else, so DISPLAY can
be passed around and actually works (in this case they're expecting rsh
type behaviour), but this feels like a niche argument for a bad mechanism.

It's probably way too late to make this change for telnet given how long
ago it fell of the tail end of standard utils, but were telnet still in
broad use, it would be great to see every (Linux and other) implementation
of it remove the env-var-passing mechanism. It never should have been in
there in the first place.

On Sat, 7 Mar 2026 at 22:16, Solar Designer <solar@openwall.com> wrote:

> On Sat, Mar 07, 2026 at 02:20:11AM +0200, Justin Swartz wrote:
> > WHITELISTING
> >
> > The obsolete blacklist, implemented by scrub_env(), has been removed.
> > The daemon now clears the inherited environment and enforces a default
> > whitelist (USER, LOGNAME, TERM, LANG, and LC_*) for all NEW_ENVIRON
> > values.
>
> Makes sense to me.
>
> Note that this list is different from Linux NetKit's, which is:
>
>     /*
>      * Allow only these variables.
>      */
>     if (!strcmp(varp, "TERM")) return 1;
>     if (!strcmp(varp, "DISPLAY")) return 1;
>     if (!strcmp(varp, "USER")) return 1;
>     if (!strcmp(varp, "LOGNAME")) return 1;
>     if (!strcmp(varp, "POSIXLY_CORRECT")) return 1;
>
> I also checked the major *BSDs.  telnetd was removed from OpenBSD in
> 2005, so I didn't look further.  It was removed from FreeBSD in 2022:
>
>
> https://cgit.freebsd.org/src/commit/?id=d701f45aba19f232ce7817085935f33dd609ed8b
>
> where it used this at time of removal:
>
>         static const char *acc[] = {
>                 "XAUTH=", "XAUTHORITY=", "DISPLAY=",
>                 "TERM=",
>                 "EDITOR=",
>                 "PAGER=",
>                 "LOGNAME=",
>                 "POSIXLY_CORRECT=",
>                 "PRINTER=",
>                 NULL
>         };
>
> Curiously, there was CVE-2009-0641 where FreeBSD 7.x would accept even
> LD_PRELOAD, but I couldn't quickly find where the bug was exactly:
>
> https://lists.openwall.net/full-disclosure/2009/02/14/1
>
> Message-ID: <72f8221d0902131846h6c77a8d1t90c3352f978b8732@mail.gmail.com>
> Date: Sat, 14 Feb 2009 03:46:07 +0100
> From: Kingcope Kingcope <kcope2@...glemail.com>
> To: full-disclosure@...ts.grok.org.uk
> Subject: FreeBSD zeroday
>
> https://www.freebsd.org/security/advisories/FreeBSD-SA-09:05.telnetd.asc
>
> "recent changes in FreeBSD's environment-handling code rendered
> telnetd's scrubbing inoperative"
>
> We could want to find the detail in order to avoid the same pitfall.
>
> NetBSD still has telnetd:
>
> https://cvsweb.netbsd.org/bsdweb.cgi/src/libexec/telnetd/
>
> and in sys_term.c it has:
>
> /*
>  * scrub_env()
>  *
>  * We only accept the environment variables listed below.
>  */
>
> void
> scrub_env(void)
> {
>         static const char *reject[] = {
>                 "TERMCAP=/",
>                 NULL
>         };
>
>         static const char *acceptstr[] = {
>                 "XAUTH=", "XAUTHORITY=", "DISPLAY=",
>                 "TERM=",
>                 "EDITOR=",
>                 "PAGER=",
>                 "LOGNAME=",
>                 "POSIXLY_CORRECT=",
>                 "TERMCAP=",
>                 "PRINTER=",
>                 NULL
>         };
>
>         char **cpp, **cpp2;
>         const char **p;
>
>         for (cpp2 = cpp = environ; *cpp; cpp++) {
>                 int reject_it = 0;
>
>                 for(p = reject; *p; p++)
>                         if(strncmp(*cpp, *p, strlen(*p)) == 0) {
>                                 reject_it = 1;
>                                 break;
>                         }
>                 if (reject_it)
>                         continue;
>
>                 for(p = acceptstr; *p; p++)
>                         if(strncmp(*cpp, *p, strlen(*p)) == 0)
>                                 break;
>                 if(*p != NULL)
>                         *cpp2++ = *cpp;
>         }
>         *cpp2 = NULL;
> }
>
> I'm not saying you should revise the list in any way - just sharing what
> others have.  It may well be that allowing those other env vars by
> default is obsolete since use cases for telnet are now more specialized,
> and maybe allowing LANG and LC_* is desirable for current use cases.
>
> Separately note that I didn't check the *BSDs telnet _client_ (which I
> think is still present in all *BSDs) for being (hopefully not) willing
> to export arbitrary env vars.  The maintainers could want to check this.
> And you could want to check the telnet client in InetUtils, now that we
> know this package missed telnet[d] security fixes in general.  This was
> CVE-2005-0488 (and CVE-2005-1205 on Windows).
>
> "Certain BSD-based Telnet clients, including those used on Solaris and
> SuSE Linux, allow remote malicious Telnet servers to read sensitive
> environment variables via the NEW-ENVIRON option with a SEND ENV_USERVAR
> command."
>
> > TELOPT_TTYPE INTERCEPTION
> >
> > The whitelist validation has been extended, in the second version of the
> > patch set, to intercept raw terminal type negotiations (aka
> TELOPT_TTYPE),
> > to prevent questionable TERM payloads from bypassing the NEW_ENVIRON
> > filter.
>
> Good idea.
>
> > The daemon now clears the inherited environment (preserving PATH
> > and TERM, respectively, if present) before calling telnetd_setup().
>
> Inherited from inetd or the like?  It's supposed to be trusted input and
> env vars in there may be set on purpose, so dropping them is unexpected.
> I think e.g. sshd doesn't do that, why would telnetd?  Think things like
> LD_PRELOAD=/lib64/libhardened_malloc.so (although /etc/ld.so.preload is
> a more reliable way to do this when practical to do it globally).
>
> > +++ b/telnetd/state.c
> > @@ -1495,10 +1495,18 @@ suboption (void)
> >             case NEW_ENV_VAR:
> >             case ENV_USERVAR:
> >               *cp = '\0';
> > -             if (valp)
> > -               setenv (varp, valp, 1);
> > -             else
> > -               unsetenv (varp);
> > +             if (is_env_var_allowed (varp, valp))
> > +               {
> > +                 if (valp)
> > +                   {
> > +                     if (valp && *valp != 0)
> > +                       setenv (varp, valp, 1);
> > +                   }
> > +                 else
> > +                   {
> > +                       unsetenv (varp);
> > +                   }
> > +               }
> >               cp = varp = (char *) subpointer;
> >               valp = 0;
> >               break;
> > @@ -1514,10 +1522,18 @@ suboption (void)
> >             }
> >         }
> >       *cp = '\0';
> > -     if (valp)
> > -       setenv (varp, valp, 1);
> > -     else
> > -       unsetenv (varp);
> > +     if (is_env_var_allowed (varp, valp))
> > +       {
> > +         if (valp)
> > +           {
> > +             if (valp && *valp != 0)
> > +               setenv (varp, valp, 1);
> > +           }
> > +         else
> > +           {
> > +             unsetenv (varp);
> > +           }
> > +       }
> >       break;
> >        }                              /* end of case TELOPT_NEW_ENVIRON
> */
>
> Some code duplication here.  Not new with these changes, but could be
> worth moving to a new function e.g. set_env_var_if_allowed().
>
> > +/* A default whitelist for environment variables. */
> > +static const char *allowed_env_vars[] = {
> > +  "USER",
> > +  "LOGNAME",
> > +  "TERM",
> > +  "LANG",
> > +  "LC_*",
> > +  NULL
> > +};
>
> Can make not only the strings but also the pointers const:
>
> static const char * const allowed_env_vars[] = {
>
> so that both may end up in a read-only section.
>
> > +int
> > +is_env_var_allowed (const char *var, const char *val)
> > +{
> > +  const char **p;
> > +  int allowed = 0;
> > +
> > +  for (p = allowed_env_vars; *p; p++)
> > +    {
> > +      if (fnmatch (*p, var, FNM_NOESCAPE) == 0)
> > +        {
> > +          allowed = 1;
> > +          break;
> > +        }
> > +    }
> > +
> > +  if (!allowed)
> > +    return 0;
>
> You didn't strictly need the "allowed" variable, you could check *p
> after the loop.  But maybe it's more readable the way you wrote it.
>
> My review above isn't in full context - I only looked at the patches.
>
> Alexander
>

--000000000000140bb7064c7c0385--
