X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3827" "Wednesday" "15" "April" "2015" "09:45:07" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKL6O2mH3WBjCG5JR=2N3aw6idiLT4_PZC9TOD76MpPFA@mail.gmail.com>" "107" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041516:45:07" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15  107/3827  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150415163622.GC15511@boyd>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<20150415160557.GA15511@boyd>" "<CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>" "<20150415163622.GC15511@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22175 invoked by uid 550); 15 Apr 2015 16:46:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22154 invoked from network); 15 Apr 2015 16:46:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=iDSt4cLsVS/mZB1/KpcjFAhRp/UZZc8QSYiFB7sYEa8=;
        b=kPcxglUzvt+ndHbvN+bBsHEaibK6JqHt9xJkzSyxlMEzxOc9IEsNQ0BvEGKGMw9Uxb
         1jGCZvxCAvtszCNolMZQ8k6OCDNRbYwhT9gX51ZpXw4qYJgGmZebRqHRhUKYjQiaCFIN
         6CpTpWdS5/cYHao3q/cuE4BCQdFb0ZEqLC1fU+okvlxUtgSctYw7CAbbkNOHWnFj/jaf
         x5QjURwjN04d2K1FVYtZOrO/gTMs3XG4NSGIMbpAoIREksvjTvdxqAVUdBVJPyDbhTNS
         cVQU1MR7itG1inuMaqQ1jxKfZdiUj5rfyydvxX6lRYLxHSrSLKVheuvxP4IMEBv1vao0
         xnrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=iDSt4cLsVS/mZB1/KpcjFAhRp/UZZc8QSYiFB7sYEa8=;
        b=T7S1DbZCGjGeHV0MBymJBRivIsBuY7VgJyFHX+LPm2RksB+gCXg83lYumdW7FNIE4R
         SWLBCdad3WvD2fKfn0naKTmKnNa5dJEyeXNX2k/ppy+LLWjszArz3YMzOpGJ9T2vpK8g
         mAKYrPPJ2stlkPy1H9NnF0DdKHLLIjY3Ecii1s0yBjn605KgozORggHKFURuVEFdDQya
         BKpANY7HDt3E30f+vCjJt+cb6RQAzZLUAYlHoxjYZsY95UQP+MCHc3Z8aiWyyHcWbWyJ
         bE9pZ52MEpK4DwZYAaaHeuLYtZ70wHmWr2jjQxtMrLaDywDWDJLIGd1RnBZ/fjLxOZZu
         sSrw==
X-Gm-Message-State: ALoCoQmbFpR9g0HedAgLAeDBYvC5m2ifCeumDoyON0o14n1V2ZoQMoOv372Zhjkj75O4Sy+ziPm+
X-Received: by 10.55.53.137 with SMTP id c131mr52912803qka.102.1429116328392;
 Wed, 15 Apr 2015 09:45:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150415163622.GC15511@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd> <20150415160557.GA15511@boyd>
 <CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com> <20150415163622.GC15511@boyd>
Message-ID: <CAJ_zFkKL6O2mH3WBjCG5JR=2N3aw6idiLT4_PZC9TOD76MpPFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 09:45:07 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

On Wed, Apr 15, 2015 at 9:36 AM, Tyler Hicks <tyhicks@canonical.com> wrote:
> On 2015-04-15 09:21:39, Tavis Ormandy wrote:
>> On Wed, Apr 15, 2015 at 9:05 AM, Tyler Hicks <tyhicks@canonical.com> wro=
te:
>> > On 2015-04-14 17:16:08, Tyler Hicks wrote:
>> >> On 2015-04-14 14:10:12, Tavis Ormandy wrote:
>> >> > On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> =
wrote:
>> >> > > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com=
> wrote:
>> >> > >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
>> >> > >> <marc.deslauriers@canonical.com> wrote:
>> >> > >>> Hi,
>> >> > >>>
>> >> > >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>> >> > >>>> This is mostly a question for the persons who assigned CVE-201=
5-1318
>> >> > >>>> and CVE-2015-1862. Should these CVE assignments be interpreted=
 to
>> >> > >>>> mean:
>> >> > >>>>
>> >> > >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>> >> > >>>>                   namespace-based attack because there is an e=
xecve by
>> >> > >>>>                   root after a chroot into a user-specified di=
rectory
>> >> > >>>
>> >> > >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>> >> > >>>
>> >> > >>> Marc.
>> >> > >>
>> >> > >> It looks like this is the patch for Apport:
>> >> > >>
>> >> > >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revisio=
n/2943#data/apport
>> >> > >>
>> >> > >> It's far more complicated than I expected, and not obviously cor=
rect.
>> >> > >> It could probably use some review, I'll think about it today.
>> >> > >>
>> >> > >> Tavis.
>> >> > >
>> >> > > Wait, my first thought is that it's not obvious to me that
>> >> > > /proc/net/unix is guaranteed to be newline delimited, newline is a
>> >> > > perfectly valid name in a filename, no?
>> >> > >
>> >> > >>>> import socket
>> >> > >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\n=
test')
>> >> > >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>> >> > >>>> sock.bind('/tmp/foo\nbar')
>> >> > >>>> sock.listen(1)
>> >> > >
>> >> > > $ grep -A1 foo /proc/net/unix
>> >> > > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp=
/foo
>> >> > > bar
>> >> >
>> >> > And with complete control over this line, it seems like it's game o=
ver.
>> >> >
>> >> >                 container =3D lxc.Container(path[-2], real_path)
>> >> >
>> >> > I'm calling this re-broken.
>> >>
>> >> I've pointed St=C3=A9phane Graber to your analysis (and put him on cc=
). He's
>> >> working on a fix.
>> >>
>> >> Even though it isn't clear if all of the checks added in revision 2943
>> >> can be bypassed, it is worth coming up with another approach.
>> >
>> > Hi Tavis - We've opened a bug to track the issue that you discovered:
>> >
>> >   https://launchpad.net/bugs/1444518
>> >
>> > St=C3=A9phane has prepared a patch that is more resilient to a malicio=
us
>> > /proc/net/unix:
>> >
>> >   https://launchpadlibrarian.net/203372380/apport.diff
>> >
>> > Any feedback that you have would be appreciated. Thanks again!
>> >
>> > Tyler
>>
>> Thanks Tyler, I'll think about this morning. I'm not sure if these
>> observations are important, but my first thought is It's definitely
>> possible to make the st_uid of /proc/ppid 0, you could just do su
>> $USER for example.
>
> Ah, right. Looking at the real uid in /proc/ppid/status is the way to do
> it.
>
>>
>> Also, you can at least trust /proc/pid is stopped while the core
>> handler is running, but ppid is still running. I think this matters,
>> because the pid might be recycled.
>
> That's why I suggested that he chdir('/proc/ppid') and then only work
> off of relative paths. I assumed that would be sufficient but I'll
> verify that.

That's true, but there's a race between reading the Ppid and the chdir.


Tavis.
