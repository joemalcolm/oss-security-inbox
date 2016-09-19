X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Monday" "19" "September" "2016" "13:52:45" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVZu3oCinNrhmTbeFc_JQcJDS0N55suTN3JFQof2AvbVw@mail.gmail.com>" "28" "Re: [oss-security] Possible CVE for TLS protocol issue" nil nil nil "9" "2016091920:52:45" "[oss-security] Possible CVE for TLS protocol issue" (number mark "U       reed@reedlod Sep 19   28/869   " thread-indent "\"Re: [oss-security] Possible CVE for TLS protocol issue\"\n") "<CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>" ("<CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24078 invoked by uid 550); 19 Sep 2016 20:53:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24054 invoked from network); 19 Sep 2016 20:53:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=0BIE9gdm6R94YVCOATlxgy6QuIEa3HNxdrW9TywZkZU=;
        b=XGOxzAl2++qWQhcEQnXSbWOQ/nEAPuaKyGrXqzQrOal/4UM2qQqxuaMWJllA+IVa02
         3U4H8bqGqRyS8fs9DSFDip43xy950cOQL4iRkYyxiV7Jdx8rcbl3SfwuHFR92DrLqU3H
         I6ZgFzGBePCmXim00cvbjaGqcieEa+VNKXAP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0BIE9gdm6R94YVCOATlxgy6QuIEa3HNxdrW9TywZkZU=;
        b=mVor556YF6vZe5qu5TTrXn97wZ8P7612N4YBDcZC78kbt1PqA3QhlFD8ofOOveIgnF
         ERVw9MOMjrWL+yQZh0jgIjJNCCoLndi+l8XF32HLpEtXjusdq3SraBRt9ZAya0FCOW+r
         K0/JFMZ8SpyWO5fP9syxaWzkGFWChRjCVMJ9o6XPFvax5IYsaej5Rrh2L+mgIzmUCDkN
         DN8F0wizFYgZ2xnWpNExCE8p0DVXhjPm6HcJIx7dTiT+VOx4GxZJAqRJ46OXT1YURogD
         twyL4FRvvs4J5gmjRek0B9n+64kQQqtN34D36fuByLKiHz0ilrrQqpv010Q/nluhjrSg
         0Elg==
X-Gm-Message-State: AE9vXwOXHqpLlDC/7JR3itWaN13Ujlw6nOBDh26CgPADdSIUAgXwDrDbBx+MPmDTbjWhg/I262oM7Q6xMJ7FcbYZ
X-Received: by 10.107.27.14 with SMTP id b14mr42977616iob.60.1474318386524;
 Mon, 19 Sep 2016 13:53:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>
References: <CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>
From: Reed Loden <reed@reedloden.com>
Date: Mon, 19 Sep 2016 13:52:45 -0700
Message-ID: <CALPTtNVZu3oCinNrhmTbeFc_JQcJDS0N55suTN3JFQof2AvbVw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113fdd68b736d8053ce27f04
Subject: Re: [oss-security] Possible CVE for TLS protocol issue

--001a113fdd68b736d8053ce27f04
Content-Type: text/plain; charset=UTF-8

Seems pretty old, just FYI:

Research paper published: 2015/11/08. Additional content added: 2015/14/09.

~reed

On Mon, Sep 19, 2016 at 1:39 PM, Kurt Seifried <kseifried@redhat.com> wrote:

> This was pointed out to me by mjc@:
>
> https://kcitls.org/
>
> TL;DR: if you can trick someone to install a client certificate you can
> then spoof any future web site. Certainly not what we want from the people
> issuing client certificates. It sounds like this is a protocol level
> vulnerability affecting closed and Open Source vendors potentially, and it
> is public so posting it here.
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>

--001a113fdd68b736d8053ce27f04--
