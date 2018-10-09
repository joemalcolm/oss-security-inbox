X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Tuesday" "9" "October" "2018" "10:11:34" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "33" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018100917:11:34" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        taviso@googl Oct  9   33/1164  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181009153006.GF21509@takahe.colorado.edu>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11793 invoked by uid 550); 9 Oct 2018 17:12:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11771 invoked from network); 9 Oct 2018 17:11:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=SxJketB6JRzfd7hiyJxVdZpoxo2Lyb9OAHgnGuuq1fE=;
        b=twmR60mJErlMLz1/36oLsVuqBDzvB4MMrGPP5EAuDIpTzYWTuRn3C4Dxl76Jcmq0nQ
         5/xrZ+BuO7znKzQL3Gb+ylOw8YIctykGY4Hh3xMLwUVGpwiWE5+LdQsbgESbXo2lY6Nf
         zeL7K3rVi21xN1ehOVikaCyaiSToUzeTl4Ti4HxByeDBnofHRkREHpYWWhju+qTa1qWM
         fFrogSu1k4FL+dsM1kEeLQe9exO22MRGO+M+PzbUGWLqv4Y1/JlWi2lMGBC+vbfMghI0
         kJnxmDnSXvPSCRK6kf2ufOCgLUKKgzAK+iW0+velKNScjLN09hpahZhtAcw38vyB3gVX
         1dDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=SxJketB6JRzfd7hiyJxVdZpoxo2Lyb9OAHgnGuuq1fE=;
        b=HyWxr+N8t4oMaoA79yDnXCTfbWE+F0J7kCoxH3Wz7X1UJO1cVh5ENxyygBEA+3ysLp
         PFynZONTMxlusk4+Rn/I2qQuupvqSN5meAbqtMGR9fff9XdEEF+qsIQLYbA2CAfKuiNT
         vQK/VEwb4lNy35hk/Hiuy4brgbMmo94PB58R3dJv2WvJc+ZRr9trzjHg24wc0iIAoBrG
         BSH68cEPCGub2qm6zW2PACW1axExtARtyoPedUIqhbOZwmgflc1uz4OA99Q6isxiZKIW
         bRIS+tZDymrmkUPXRevcKe+k7e/aVlQXYZmn8gfvmE8RAN3gQ84ul3iwm5wI5uky2c7u
         a3aQ==
X-Gm-Message-State: ABuFfohPCnzzNoPbtA3V5bGKtwCAfztE8dGF5rD3pQ1XEalCklEYeRKP
	x0C/gKjjPtprK3adXv2ryS+sokq4NkF5hIfDujjJ1BTj
X-Google-Smtp-Source: ACcGV60sinTYy0zYjGi7lXl+IxHP84Qh+AxNPdPPQrtFEFdMtZHo3c2LAOnv5EMoSLYjm74BvPt5lf5UkFeaBHXe3A0=
X-Received: by 2002:a0c:c506:: with SMTP id x6-v6mr23274877qvi.154.1539105107158;
 Tue, 09 Oct 2018 10:11:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu>
In-Reply-To: <20181009153006.GF21509@takahe.colorado.edu>
Message-ID: <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002fa9700577ced5bb"
Date: Tue, 9 Oct 2018 10:11:34 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

--0000000000002fa9700577ced5bb
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 9, 2018 at 9:53 AM Leonid Isaev <leonid.isaev@jila.colorado.edu>
wrote:

> On Tue, Oct 09, 2018 at 06:58:39AM -0700, Tavis Ormandy wrote:
> > Full working exploit that works in the last few versions is attached,
> > viewing it in evince, imagemagick, gimp, okular, etc should add a line to
> > ~/.bashrc.
>
> Add zathura to the above list :)
>
> > p.s. plz can we deprecate untrusted postscript :(
>
> Which means any postscript file downloaded from the internet... Then how
> should
> people read arXiv.org, for example?


I think we should encourage switching to other document formats that we
have a better handle on securing. If you do need untrusted ps, I think
treating it the same as shell script file you downloaded from the internet.

I mean, technically there's a bash restricted mode and python rexec, but
you probably wouldn't run it on random things you just downloaded.

gs -dSAFER and bash -r are useful features, but I think ever invoking them
automatically without prompts about trust, etc, is just asking for trouble.

Tavis.

--0000000000002fa9700577ced5bb--
