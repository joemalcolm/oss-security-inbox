X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2524" "Tuesday" "10" "November" "2020" "20:48:21" "-0800" "Eric Pruitt" "eric.pruitt@gmail.com" "<20201111044821.GA15234@sinister.lan.codevat.com>" "63" "[oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil "11" "2020111104:48:21" "[oss-security] Dash executes code when noexec (\"-n\") is specified" (number mark "U       eric.pruitt@ Nov 10   63/2524  " thread-indent "\"[oss-security] Dash executes code when noexec (\"-n\") is specified\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Dash executes code when noexec (\"-n\") is specified" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5586 invoked by uid 550); 11 Nov 2020 08:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27953 invoked from network); 11 Nov 2020 04:48:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :pgp-key:user-agent;
        bh=icehswJk6hOd1dKTwZyaEvhN4f/pv8OxmNvpjWsctao=;
        b=lgUngrGu32ah+O4783ZFAdXGmAZjbzsXahyOGE4HA8RS45myqO/EYbPV39m26vTyVc
         OhlH1Hgp5ivuzraFV+cTq25YMI3Gl6jQwjrnYLLg/v7RvsCDxkT/ke3lJzt197ZuwwFT
         66nqoE5jYY5TMrnubIp1Otr+C+O4RLj2yrQl267AC2tD1Bpj+D6UEtvJDhKt8sK3YQDy
         nauVqtgDxK3tN1VAqt1IW9MKPM4Fm2bKi3qXsZmMLci33NdNBkE18SBzOKOgzm/tduXs
         0RdaAcf45vsTPZNkPYmGHgJof3mUhNQRzzvZnUSFKdqnff8675JnbRE/OzmzKcaErNOA
         6mpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:pgp-key:user-agent;
        bh=icehswJk6hOd1dKTwZyaEvhN4f/pv8OxmNvpjWsctao=;
        b=S+XKtMBaFfijiiPsqPJ67BIILahoG46JKoF2j2n5kDlXgkEDjdDoptbAdd4f5O9eWf
         WL8VbX7Y2nJcz3dOMfgc/nhRbZatRKeox9qvag3prpqHzMbfax7YY1f7H4iTGJHpGLtV
         UnTOuaT8LH4rs81QyPZY6cbyu4qfl8P7WF0zSCU6nHilI8GCnloO7Z7hl8QJ8+8YY0CF
         ROGi1BITkG9f8t/apaf1NOa+GzRgH16OuOajIqKsy5R+i8TkVxQmmIT93Y9Go53HKgIJ
         jf7/MO6GshWgvebEcDfywUgCEuVW2DvG5/56OuO3Sv3A57gdaPWE6LIfPrrpVa/tGJLG
         YXtA==
X-Gm-Message-State: AOAM533rxwMa2HNnn0y4OlK/BcIV2HFVt6Ly2Nqhnea4F2WfqL8Ljf46
	6pHHZY0JSmwWqCgczTdlivvlR72AN+Y=
X-Google-Smtp-Source: ABdhPJwY9eK9MIGEBeTxfFswk3MAsn8SwDzGXXvUPxcUdpOHWrO2/dcbPve38DRJQw9eM7It/EKv9w==
X-Received: by 2002:a63:77c1:: with SMTP id s184mr19822094pgc.377.1605070103185;
        Tue, 10 Nov 2020 20:48:23 -0800 (PST)
Date: Tue, 10 Nov 2020 20:48:21 -0800
From: Eric Pruitt <eric.pruitt@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <20201111044821.GA15234@sinister.lan.codevat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
PGP-Key: https://www.codevat.com/pgp.asc#F8601B5D2511B4C3535232488DDDE2E6053692AB
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Dash executes code when noexec ("-n") is specified

I emailed security@debian.org a couple of weeks ago about an issue with
Dash executing code when I wouldn't expect it to based on its
documentation and the POSIX spec, but I didn't get a response, so I'm
posting the message here in hopes of getting another opinion:

Most UNIX shells support "-n" / noexec which should syntax check scripts
without executing them, but Dash will execute code anyway in some
contexts:

    $ dash -n -c 'echo this should not be executed'
    this should not be executed

Interestingly, it does not execute code that gets piped in:

    $ echo 'echo this should not be executed' | dash -n
    $

In discussing "set -n" / noexec, POSIX 2018
(https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#set)
states "The shell shall read commands but does not execute them; this
can be used to check for shell script syntax errors. An interactive
shell may ignore this option," and I did not find anything in the Dash
manual that would suggest this is intentional:

    $ man dash | fgrep -C2 noexec
               -f noglob        Disable pathname expansion.

               -n noexec        If not interactive, read commands but do
                                not execute them.  This is useful for
                                checking the syntax of shell scripts.

Maybe this is an issue with how Dash determines whether its being
executed interactively, but even if I try redirecting file descriptors
so none of them point to a TTY, the code still gets run:

    $ ls -l
    total 0
    $ dash -n -c 'touch script_was_executed' < /dev/null >/dev/null 2>&1
    $ ls -l
    total 0
    -rw------- 1 ericpruitt ericpruitt 0 Oct 28 17:22 script_was_executed
    $

None of the other shells I tested exhibit this:

    $ ksh -n -c 'echo this should not be executed'
    $ mksh -n -c 'echo this should not be executed'
    $ zsh -n -c 'echo this should not be executed'
    $ bash -n -c 'echo this should not be executed'
    $

This has the potential to be a security hazard because programs could
unintentionally execute arbitrary code. I discovered this while helping
someone with a test framework in which I suggested implementing shell
script syntax checking as part of validating some configuration files
that contain short Bash and Dash scripts (e.g. Cron jobs). Had this
issue not been discovered, it's possible the build system would've
inadvertently executed code I only wanted to syntax check.

Can you confirm whether or not this behavior is expected?

Thanks,
Eric
