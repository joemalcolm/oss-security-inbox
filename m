X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Tuesday" "8" "December" "2020" "15:30:30" "+0800" "- Nop" "nopitydays@gmail.com" "<CA+-U7QAbjc5H+0TD_ZAOgod57N9XU8YRoAB=kxJKE1GLr3F5HA@mail.gmail.com>" "28" "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil "12" "2020120807:30:30" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" (number mark "U       nopitydays@g Dec  8   28/686   " thread-indent "\"Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2\"\n") "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>" ("<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>" "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17526 invoked by uid 550); 8 Dec 2020 11:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5206 invoked from network); 8 Dec 2020 07:30:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ovn9ZluD86pwYRxwXP0rtzJAzgFEgOp9rnyQm4RWE4g=;
        b=Jl3riAKTDEtRf1S77xGr0VuAZMvgSBns6gj7Xzn6k3mXoeG66wGWTLICLp3w08tXYo
         w2q6AbeANHpFyvjpw08JTBJrKdXVoFR0otV5UNi3cuxHq2nmSjcZPR1WO6UlkvZAxmkO
         ROuHmrS258p4WkGE3hFdBSD4HyerFuoJ00GvVQ+JCHlFufU1Vfi96zA+wycENDt+soD+
         bbSB9pKShlKwS0AbNM8SEGvUGVu64QDuOCP+St65Ww9ddySJMGCPlwaDOovGnWyi+SGQ
         nCnDpYchnO84Z14Pc0H/YlNHu9K5yYDgJtKA8LKgzicuG/DD7SwrsJHeptJfLh6bmZde
         Flzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ovn9ZluD86pwYRxwXP0rtzJAzgFEgOp9rnyQm4RWE4g=;
        b=SO7wZM5OpmR3b08qq/VkrphpIW9Afq5iSN1ufrsW3g0mgE3BwQDrZRquE2XMTg2T90
         OGgaQUIw/pZqos3sC4XP9F8dGOabWsskCCUd1E9er5YT0AMoCZjqULva6KDicg1By2cW
         EE2v/xEGCU132rh2Xd8TMczYAqIIq//SX0ai+CGuUTW11XRrqgiI8b8m3mLxlKqqoPaw
         Gp4oh1JAu1EE7QA6TO+h0rykNQxBDcS6Ye2us0DT2DTJ/9Jo+2NObRRCPiTefzBXvn2a
         FrqgSbtWAieIz4gAv/iUmL94JMnwr+/EQRfB4p1l+t7bQPjEJZWrS9NLoH3EaOnYYMnD
         OQSA==
X-Gm-Message-State: AOAM530NzLXtElLeA1YG8RQenYZAuijNiMI7KqP2xyi7KVSLNjbu1OWp
	vaY+KcXrN0zpZuEkfI4gnNsA2qHb+5bP445uSIE=
X-Google-Smtp-Source: ABdhPJwhInmnGtcwGlGmG9tJxelkpUAwAe8inIjG6j0mwbIcp9ZSaLMxA5YDkYkH8x172KEVp3bYGrsJ3wkITseqi0E=
X-Received: by 2002:a5d:4a04:: with SMTP id m4mr23601715wrq.60.1607412641538;
 Mon, 07 Dec 2020 23:30:41 -0800 (PST)
MIME-Version: 1.0
References: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
 <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
In-Reply-To: <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
From: - Nop <nopitydays@gmail.com>
Date: Tue, 8 Dec 2020 15:30:30 +0800
Message-ID: <CA+-U7QAbjc5H+0TD_ZAOgod57N9XU8YRoAB=kxJKE1GLr3F5HA@mail.gmail.com>
To: John Haxby <john.haxby@oracle.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000081a50e05b5eeeba8"
Subject: Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2

--00000000000081a50e05b5eeeba8
Content-Type: text/plain; charset="UTF-8"

Hi,

CVE-2020-27830 has been assigned to this issue.

Regards,
Bodong

On Mon, Dec 7, 2020 at 6:23 PM John Haxby <john.haxby@oracle.com> wrote:

>
>
> > On 7 Dec 2020, at 02:20, Shisong Qin <qinshisong1205@gmail.com> wrote:
> >
> > Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
> > Linux kernel(5.9.11 is the latest at that now). In the
> > spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
> > without checking whether it is NULL or not, and may lead to a NULL-ptr
> > deref crash.
>
> Did you ask for a CVE for bug?
>
> jch
>

--00000000000081a50e05b5eeeba8--
