Received: (qmail 7352 invoked by uid 550); 30 Jan 2024 20:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9664 invoked from network); 30 Jan 2024 19:44:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706644023; x=1707248823; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=unHjcGm8uuN3i14LLo6fAdcXSXwSjVLFwAK+tAT/dQI=;
        b=eFofIj5IbidRqiu+2tYHJiFw7bmO+22iuUQR3qdcJPiv8qto/fiLRv5OqtD57iTi5j
         qQmzm4CrWEqxpKvS43BmsQ8KEOXUrxJL6yIj2U8W1iwvbxpVezGC/9FG4YhKQsUyQlIm
         NKIaxaVUpgV1Hn94TY3Flt2Wcsym1C7XTEUNLCn7lnYO1vl4p4synYUQgOiPessTNqVr
         Mv1vVblLdFxSJbPF1iU+LOJYTvrvRuP1ixyRy+qHeKe/8/LaHbxgxcP53TwDhm24KfGj
         wIpyKMsDgyY57Xuddrp+PHPikasrAeJYPxroWjcwThMjoiUILLGYMx2kUBKMRMdcnsWM
         JI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706644023; x=1707248823;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=unHjcGm8uuN3i14LLo6fAdcXSXwSjVLFwAK+tAT/dQI=;
        b=UiLPSoQcn9XOR281nQOumbwntOwIlSXyZV1K17EG1K59AI+0OHTuUWq4dlBAVKkcVi
         H81JMseAtZbghQIiZUIT1fYL2xv5uvinFgcMr67HE1ompfRqn6ur41Y3RbjhCLmiuhDr
         ZIBpenThYGUJ1/j//Mjhq3VVjoAQc5o1p7KuleTkaOyfOsWnfPZeLL5vyJxGY/FxVAtO
         09oUyf1vH4kHl69MCnWy+SShbWGioEXXte0bnNyO5SbUOO2EvWtLvmtlaQ2+n9dounrI
         L10XlonGb7WiEsWGlUr4s7vqOydrIx2PkBVM9cxLbAjzwxfKG99IH/iP55WRew9h2ao6
         LGNg==
X-Gm-Message-State: AOJu0YwYNvJR7LBnjwzsmDDg2KRleRN1ILkArMZPY4WD2F45mh1qvRb+
	dcuxIoxCznvkQwM7fkId/qjZ7Va0k4hYKMp4sYsP04hu+BIUS3cI/0pIuH7ZgpZYogzjSs2lAxz
	hR8wzaas52Ixs/1cVLkzMbdiEuFhklhbhZrk=
X-Google-Smtp-Source: AGHT+IEV0W6njvlttxEUfP1/3Nj1nZ7EIi8m9DC4n7IWx28jiia680AF9c35rqVSCxQbPPhHDO3iC25vZgMzMjgh3VM=
X-Received: by 2002:a81:83d6:0:b0:603:fd3c:fc2b with SMTP id
 t205-20020a8183d6000000b00603fd3cfc2bmr1240968ywf.52.1706644022367; Tue, 30
 Jan 2024 11:47:02 -0800 (PST)
MIME-Version: 1.0
References: <20240130183113.GA16546@localhost.localdomain>
In-Reply-To: <20240130183113.GA16546@localhost.localdomain>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Tue, 30 Jan 2024 14:46:51 -0500
Message-ID: <CAAHN_R22YUwGYBqk_b2JPwdJjkYV4DzeJpwngNqS3MCdX0BHRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-6246: Heap-based buffer overflow in the
 glibc's syslog()

FYI, the glibc advisory announcement is here:

https://sourceware.org/pipermail/libc-announce/2024/000037.html

and here are the individual advisories:

https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob_plain;f=3Dadvisories/GLI=
BC-SA-2024-0001;hb=3DHEAD
https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob_plain;f=3Dadvisories/GLI=
BC-SA-2024-0002;hb=3DHEAD
https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob_plain;f=3Dadvisories/GLI=
BC-SA-2024-0003;hb=3DHEAD

Thanks,
Sid

On Tue, Jan 30, 2024 at 1:32=E2=80=AFPM Qualys Security Advisory <qsa@qualy=
s.com> wrote:
>
>
> Qualys Security Advisory
>
> CVE-2023-6246: Heap-based buffer overflow in the glibc's syslog()
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Contents
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Summary
> Analysis
> Proof of concept
> Exploitation
> Acknowledgments
> Timeline
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Summary
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We discovered a heap-based buffer overflow in the GNU C Library's
> __vsyslog_internal() function, which is called by both syslog() and
> vsyslog(). This vulnerability was introduced in glibc 2.37 (in August
> 2022) by the following commit:
>
>   https://sourceware.org/git?p=3Dglibc.git;a=3Dcommit;h=3D52a5be0df411ef3=
ff45c10c7c308cb92993d15b1
>
> and was also backported to glibc 2.36 because this commit was a fix for
> another, minor vulnerability in __vsyslog_internal() (CVE-2022-39046, an
> "uninitialized memory [read] from the heap"):
>
>   https://sourceware.org/bugzilla/show_bug.cgi?id=3D29536
>
> For example, we confirmed that Debian 12 and 13, Ubuntu 23.04 and 23.10,
> and Fedora 37 to 39 are vulnerable to this buffer overflow. Furthermore,
> we successfully exploited an up-to-date, default installation of Fedora
> 38 (on amd64): a Local Privilege Escalation, from any unprivileged user
> to full root. Other distributions are probably also exploitable.
>
> To the best of our knowledge, this vulnerability cannot be triggered
> remotely in any likely scenario (because it requires an argv[0], or an
> openlog() ident argument, longer than 1024 bytes to be triggered).
>
> Last-minute note: in December 1997 Solar Designer published information
> about a very similar vulnerability in the vsyslog() of the old Linux
> libc (https://insecure.org/sploits/linux.libc.5.4.38.vsyslog.html).
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Analysis
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> In the glibc, both syslog() and vsyslog() call the vulnerable function
> __vsyslog_internal():
>
> ------------------------------------------------------------------------
> 122 __vsyslog_internal (int pri, const char *fmt, va_list ap,
> 123                     unsigned int mode_flags)
> 124 {
> 125   /* Try to use a static buffer as an optimization.  */
> 126   char bufs[1024];
> 127   char *buf =3D NULL;
> 128   size_t bufsize =3D 0;
> ...
> 171 #define SYSLOG_HEADER(__pri, __timestamp, __msgoff, pid) \
> 172   "<%d>%s%n%s%s%.0d%s: ",                                \
> 173   __pri, __timestamp, __msgoff,                          \
> 174   LogTag =3D=3D NULL ? __progname : LogTag,                  \
> 175   "[" + (pid =3D=3D 0), pid, "]" + (pid =3D=3D 0)
> ...
> 182     l =3D __snprintf (bufs, sizeof bufs,
> 183                     SYSLOG_HEADER (pri, timestamp, &msgoff, pid));
> ...
> 187   if (0 <=3D l && l < sizeof bufs)
> 188     {
> ...
> 202     }
> 203
> 204   if (buf =3D=3D NULL)
> 205     {
> 206       buf =3D malloc ((bufsize + 1) * sizeof (char));
> ...
> 213             __snprintf (buf, l + 1,
> 214                         SYSLOG_HEADER (pri, timestamp, &msgoff, pid));
> ...
> 221           __vsnprintf_internal (buf + l, bufsize - l + 1, fmt, apc,
> 222                                 mode_flags);
> ------------------------------------------------------------------------
>
> - at lines 182-183, SYSLOG_HEADER() includes __progname (the basename()
>   of argv[0]) if LogTag is NULL (e.g., if openlog() was not called, or
>   called with a NULL ident argument);
>
> - because a local attacker fully controls argv[0] and hence __progname
>   (even when executing a SUID-root program such as su), at line 187 l
>   (the return value of __snprintf()) can be larger than sizeof bufs
>   (1024), in which case the code block at lines 188-202 is skipped;
>
> - consequently, at line 203 buf is still NULL and bufsize is still 0,
>   and at line 206 a very small 1-byte buf is malloc()ated (because
>   bufsize is 0);
>
> - at lines 213-214 this small buf is overflowed with the attacker-
>   controlled __progname (because l is larger than 1024), and at lines
>   221-222 this small buf is further overflowed (because bufsize - l + 1
>   is 0 - l + 1, a very large size_t).
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Proof of concept
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> $ (exec -a "`printf '%0128000x' 1`" /usr/bin/su < /dev/null)
> Password: Segmentation fault (core dumped)
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Exploitation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We decided to exploit this vulnerability through su (the most common
> SUID-root program) on Fedora 38. To authenticate a user, su calls the
> PAM library, and if the password provided by the user is incorrect, then
> PAM calls the glibc's syslog() function without calling openlog() first,
> thus allowing us to trigger the buffer overflow in __vsyslog_internal():
>
> ------------------------------------------------------------------------
> 782                         pam_syslog(pamh, LOG_NOTICE,
> 783                                  "authentication failure; "
> 784                                  "logname=3D%s uid=3D%d euid=3D%d "
> 785                                  "tty=3D%s ruser=3D%s rhost=3D%s "
> 786                                  "%s%s",
> 787                                  new->name, new->uid, new->euid,
> 788                                  tty ? (const char *)tty : "",
> 789                                  ruser ? (const char *)ruser : "",
> 790                                  rhost ? (const char *)rhost : "",
> 791                                  (new->user && new->user[0] !=3D '\0')
> 792                                   ? " user=3D" : "",
> 793                                  new->user
> 794                         );
> ------------------------------------------------------------------------
> 107 pam_syslog (const pam_handle_t *pamh, int priority,
> 108             const char *fmt, ...)
> 109 {
> ...
> 113   pam_vsyslog (pamh, priority, fmt, args);
> ------------------------------------------------------------------------
>  73 pam_vsyslog (const pam_handle_t *pamh, int priority,
>  74              const char *fmt, va_list args)
>  75 {
>  ..
>  81       if (asprintf (&msgbuf1, "%s(%s:%s):", pamh->mod_name,
>  82                     pamh->service_name?pamh->service_name:"<unknown>",
>  83                     _pam_choice2str (pamh->choice)) < 0)
>  ..
>  91   if (vasprintf (&msgbuf2, fmt, args) < 0)
>  ..
>  99   syslog (LOG_AUTHPRIV|priority, "%s %s",
> 100           (msgbuf1 ? msgbuf1 : _PAM_SYSTEM_LOG_PREFIX), msgbuf2);
> ------------------------------------------------------------------------
>
> But what should we overwrite in the heap to successfully exploit this
> buffer overflow? Initially, because su calls setlocale(LC_ALL, ""); at
> the very beginning of its su_main() function, we tried to reuse the key
> idea from our Baron Samedit exploits (CVE-2021-3156 in Sudo): we wrote a
> rudimentary fuzzer to execute su with a random argv[0] and random locale
> environment variables and automatically inspect the resulting crashes in
> gdb. Unfortunately this fuzzer failed to produce interesting results: we
> only obtained a handful of unique crashes, and they did not look very
> promising.
>
> However, we did not investigate the reasons for this failure, because
> while browsing through su's source code we noticed that su_main() calls
> env_whitelist_from_string() to parse the argument of the -w command-line
> option:
>
> ------------------------------------------------------------------------
> 1118                 case 'w':
> 1119                         env_whitelist_from_string(su, optarg);
> 1120                         break;
> ------------------------------------------------------------------------
>  692 static int env_whitelist_from_string(struct su_context *su, const ch=
ar *str)
>  693 {
>  694         char **all =3D strv_split(str, ",");
>  ...
>  703         STRV_FOREACH(one, all)
>  704                 env_whitelist_add(su, *one);
>  705         strv_free(all);
>  706         return 0;
>  707 }
> ------------------------------------------------------------------------
>  662 static int env_whitelist_add(struct su_context *su, const char *name)
>  663 {
>  664         const char *env =3D getenv(name);
>  665
>  666         if (!env)
>  667                 return 1;
>  668         if (strv_extend(&su->env_whitelist_names, name))
>  669                 err_oom();
>  670         if (strv_extend(&su->env_whitelist_vals, env))
>  671                 err_oom();
>  672         return 0;
>  673 }
> ------------------------------------------------------------------------
>
> Conveniently, env_whitelist_from_string() allows us (attackers) to
> malloc()ate and free() an arbitrary number of arbitrary strings at the
> very beginning of su's execution: an almost perfect heap feng shui. We
> therefore rewrote our fuzzer to execute su with a random argv[0] and a
> random whitelist option (instead of random locale environment variables)
> and immediately observed numerous unique crashes; among these, three in
> particular caught our attention.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 1/ Corruption of PAM structures
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Surprisingly, our fuzzer directly overwrote two PAM function pointers
> (in struct pam_data and struct handler):
>
> ------------------------------------------------------------------------
> Thread 2.1 "su" received signal SIGSEGV, Segmentation fault.
> 0x00007fa7d3b0e3ac in _pam_free_data (status=3D7, pamh=3D0x56211242ec10) =
at /usr/src/debug/pam-1.5.2-16.fc38.x86_64/libpam/pam_data.c:161
> 161                 last->cleanup(pamh, last->data, status);
> ...
> =3D> 0x7fa7d3b0e3ac <pam_end+92>: call   *%rax
> rax            0x4141414141414141  4702111234474983745
> ------------------------------------------------------------------------
> Thread 2.1 "su" received signal SIGSEGV, Segmentation fault.
> 0x00007f928b5e5781 in _pam_dispatch_aux (use_cached_chain=3D<optimized ou=
t>, resumed=3D<optimized out>, h=3D0x55f2e374aae0, flags=3D0, pamh=3D0x55f2=
e374aae0) at /usr/src/debug/pam-1.5.2-16.fc38.x86_64/libpam/pam_dispatch.c:=
110
> 110                 retval =3D h->func(pamh, flags, h->argc, h->argv);
> ...
> =3D> 0x7f928b5e5781 <_pam_dispatch+465>:  call   *%rax
> rax            0x4545454545454545  4991471925827290437
> ------------------------------------------------------------------------
>
> Although this sounds exciting at first (a call to 0x4141414141414141!)
> we decided to not pursue this avenue of exploitation:
>
> - we cannot overwrite such a function pointer with null bytes (because
>   we overflow __vsyslog_internal()'s buffer with a null-terminated
>   string), but userland addresses contain at least two null bytes;
>
> - we could try to partially overwrite such a function pointer, but we do
>   not control the end of the string that overflows __vsyslog_internal()'s
>   buffer (the end of the aforementioned pam_syslog() format string), and
>   such an uncontrolled, partially overwritten function pointer is very
>   unlikely to miraculously point to a useful ROP gadget.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 2/ Corruption of heap metadata
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Unsurprisingly, our fuzzer also overwrote various pieces of heap
> metadata (chunk headers managed internally by the glibc's malloc), and
> therefore triggered all kinds of assertion failures and security checks:
>
> ------------------------------------------------------------------------
> $ grep -A1 __libc_message fuzzer.out | cut -d'"' -f2 | sort -u
> ...
> chunk_main_arena (bck->bk)
> chunk_main_arena (fwd)
> corrupted double-linked list
> corrupted double-linked list (not small)
> corrupted size vs. prev_size
> corrupted size vs. prev_size in fastbins
> double free or corruption (out)
> free(): corrupted unsorted chunks
> free(): invalid next size (fast)
> free(): invalid pointer
> free(): invalid size
> malloc_consolidate(): invalid chunk size
> malloc(): corrupted top size
> malloc(): invalid size (unsorted)
> malloc(): smallbin double linked list corrupted
> malloc(): unaligned tcache chunk detected
> malloc(): unsorted double linked list corrupted
> munmap_chunk(): invalid pointer
> ------------------------------------------------------------------------
>
> Although some of these corruptions might be exploitable, we decided to
> not pursue this avenue of exploitation either:
>
> - we cannot overwrite a chunk header with a size field and an fd or bk
>   pointer that are both valid (they must both contain null bytes to be
>   valid), which severely limits our exploitation options;
>
> - in any case, we would probably need a specific heap, mmap, or stack
>   address to exploit such a corruption, but we do not have the luxury of
>   an information leak, and all these addresses are too heavily
>   randomized by ASLR to be brute forced.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 3/ Corruption of nss structures
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Our fuzzer also produced two crashes that immediately caught our
> attention because they are directly related to one of the techniques
> that we used to exploit Baron Samedit:
>
> ------------------------------------------------------------------------
> Thread 2.1 "su" received signal SIGSEGV, Segmentation fault.
> __GI___nss_lookup (ni=3Dni@entry=3D0x7ffe876a05e8, fct_name=3Dfct_name@en=
try=3D0x7fbba214e4e7 "getpwnam_r", fct2_name=3Dfct2_name@entry=3D0x0, fctp=
=3Dfctp@entry=3D0x7ffe876a05f0) at nsswitch.c:67
> 67        *fctp =3D __nss_lookup_function (*ni, fct_name);
> ...
> =3D> 0x7fbba20ec50e <__GI___nss_lookup+30>:       mov    (%rax),%rdi
> rax            0x4141414141414141  4702111234474983745
> ------------------------------------------------------------------------
> Thread 2.1 "su" received signal SIGSEGV, Segmentation fault.
> __nss_module_get_function (module=3D0x4141414141414141, name=3Dname@entry=
=3D0x7f0aed9034e7 "getpwnam_r") at nss_module.c:328
> 328       if (!__nss_module_load (module))
> ...
> =3D> 0x7f0aed8a34b7 <__nss_module_get_function+39>:       mov    (%rdi),%=
eax
> rdi            0x4141414141414141  4702111234474983745
> ------------------------------------------------------------------------
>
> As discussed in the "2/ struct service_user overwrite" subsection of our
> Baron Samedit advisory, if we overwrite the name[] field of a heap-based
> struct nss_module with a string of characters that contains a slash (for
> example "A/B/C"), then at lines 180-181 the name of a shared library is
> constructed ("libnss_A/B/C.so.2"), and at line 187 this shared library
> is loaded from our current working directory (because its name contains
> a slash, but does not start with a slash) and executed as root (because
> su is a SUID-root program):
>
> ------------------------------------------------------------------------
> 170 module_load (struct nss_module *module)
> 171 {
> ...
> 180     if (__asprintf (&shlib_name, "libnss_%s.so%s",
> 181                     module->name, __nss_shlib_revision) < 0)
> ...
> 187     handle =3D __libc_dlopen (shlib_name);
> ------------------------------------------------------------------------
>
> Unfortunately, the __progname part (which we control) of the string that
> overflows __vsyslog_internal()'s buffer cannot contain a slash (because
> __progname is the basename() of argv[0]). Luckily, however, the part of
> the overflowing string that we do not control (the pam_syslog() format
> string) includes the absolute path of our tty, which contains a slash.
> For example, if:
>
> - our tty is /dev/pts/23 (we use forkpty() in our exploit);
>
> - our unprivileged local user is nobody (uid 65534);
>
> - the argv[0] (and hence __progname) that we use to execute su is a long
>   string of 'A' characters (longer than 1024);
>
> then we can overwrite the name[] field of a heap-based struct nss_module
> with a string of the form:
>
>   "AAAAAAAAAA: pam_unix(su:auth): authentication failure; logname=3D uid=
=3D65534 euid=3D0 tty=3D/dev/pts/23 ruser=3Dnobody rhost=3D  user=3Droot"
>
> Consequently, if we first create the following three directories (in our
> current working directory):
>
>   "libnss_AAAAAAAAAA: pam_unix(su:auth): authentication failure; logname=
=3D uid=3D65534 euid=3D0 tty=3D"
>   "libnss_AAAAAAAAAA: pam_unix(su:auth): authentication failure; logname=
=3D uid=3D65534 euid=3D0 tty=3D/dev"
>   "libnss_AAAAAAAAAA: pam_unix(su:auth): authentication failure; logname=
=3D uid=3D65534 euid=3D0 tty=3D/dev/pts"
>
> and also create the following shared library (in our current working
> directory):
>
>   "libnss_AAAAAAAAAA: pam_unix(su:auth): authentication failure; logname=
=3D uid=3D65534 euid=3D0 tty=3D/dev/pts/23 ruser=3Dnobody rhost=3D  user=3D=
root.so.2"
>
> then this shared library will eventually be loaded and executed with
> full root privileges. In our tests, it takes a few 10,000s of tries to
> successfully brute force the exploit parameters (the length of argv[0],
> and the whitelist option and its associated environment variables).
>
> Note: this exploit could certainly be made much more efficient; in
> theory, it could even be a one-shot exploit, because we do not need to
> brute force the ASLR, only the heap layout.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Acknowledgments
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We thank the glibc developers (Carlos O'Donell, Siddhesh Poyarekar,
> Arjun Shankar, Florian Weimer, and Adhemerval Zanella in particular),
> Red Hat Product Security (Guilherme Suckevicz in particular), and the
> members of linux-distros@openwall (Salvatore Bonaccorso in particular).
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 2023-11-07: We sent a preliminary draft of our advisory to Red Hat
> Product Security.
>
> 2023-11-15: Red Hat Product Security acknowledged receipt of our email.
>
> 2023-11-16: Red Hat Product Security asked us if we could share our
> exploit with them.
>
> 2023-11-17: We sent our exploit to Red Hat Product Security.
>
> 2023-11-21: Red Hat Product Security confirmed that our exploit worked,
> and assigned CVE-2023-6246 to this heap-based buffer overflow in
> __vsyslog_internal().
>
> 2023-12-05: Red Hat Product Security sent us a patch for CVE-2023-6246
> (written by the glibc developers), and asked us for our feedback.
>
> 2023-12-07: While reviewing this patch, we discovered two more minor
> vulnerabilities in the same function (an off-by-one buffer overflow and
> an integer overflow). We immediately sent an analysis, proof of concept,
> and patch proposal to Red Hat Product Security, and suggested that we
> directly involve the glibc security team.
>
> 2023-12-08: Red Hat Product Security acknowledged receipt of our email,
> and agreed that we should directly involve the glibc security team. We
> contacted them on the same day, and they immediately replied with very
> constructive comments.
>
> 2023-12-11: The glibc security team suggested that we postpone the
> coordinated disclosure of all three vulnerabilities until January 2024
> (because of the upcoming holiday season). We agreed.
>
> 2023-12-13: Red Hat Product Security assigned CVE-2023-6779 to the
> off-by-one buffer overflow and CVE-2023-6780 to the integer overflow in
> __vsyslog_internal().
>
> 2024-01-04: We suggested either January 23 or January 30 for the
> Coordinated Release Date of these vulnerabilities. The glibc developers
> agreed on January 30.
>
> 2024-01-12: The glibc developers sent us an updated version of the
> patches for these vulnerabilities.
>
> 2024-01-13: We reviewed these patches, and sent our feedback to the
> glibc developers.
>
> 2024-01-15: The glibc developers sent us the final version of the
> patches for these vulnerabilities.
>
> 2024-01-16: We sent these patches and a draft of our advisory to the
> linux-distros@openwall. They immediately acknowledged receipt of our
> email.
>
> 2024-01-30: Coordinated Release Date (18:00 UTC).



--=20
https://gotplt.org
