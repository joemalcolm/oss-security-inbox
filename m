X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2802" "Wednesday" "15" "April" "2015" "11:48:41" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>" "83" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041518:48:41" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   83/2802  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150414221607.GA5795@boyd>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17690 invoked by uid 550); 15 Apr 2015 18:49:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17672 invoked from network); 15 Apr 2015 18:49:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=YSWvXmEftbM/bSIYsQjKetk6ZtgasVjH1oiGmfe8uEY=;
        b=bDkwrXJP0VMeV/ALn9uM5ijyUBFKdxcXdmjZlWNo8iZM5+U+3QWHoNatqJUboIuJNL
         bInbz8g7O+tY/nK3Kcaf9tlHF67rJ4wBYllLbosDXM6F3361N/sdlOgMUwv+v21F/eww
         3JjtCjGKs04gzpIZogdIzApd8T1ar3EfsGNyt34THHYytApAGs9l3U/t/m/Usdb7Q8KO
         V8Cg8hAk9F3my2G4tEh9N64dt8K5pwKiufOPMnkKnZC36S0bkOrmtyee9cUSfVTuChgv
         MgW7YsA0T3pap78D356+glBQBn2Puez9SVGckjw6F6KmN10upi+AlTC3dnGDoLIh6Tbo
         BCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=YSWvXmEftbM/bSIYsQjKetk6ZtgasVjH1oiGmfe8uEY=;
        b=g+dYYUNMeXE3CS1c0ozL3RqTB+EomWjL+42F28pVcFC8Xvg7N4diyvFClMusdLvqd5
         ZzG7BAyICiBwCJmrfwkB/NyyBu6edjZ0fBZrzFtI5CiIFTxC4XzNWqUaOpTqlagiRsP5
         eQxSgoYKqagSD03Zmn2LsxCPZTiKChaEf920xfsIDFx2UwrAITWqNEqzXh+jk/7tx1lJ
         Pccet0Dh+vr4/ZAbnP63spe1zBm0glKidxiiJgOi8e+68CVvftDi1exNIT6x1peJF4L4
         wNs3XsHo5BDrokWtj1mix2/l4+b55cOT22zLeVeuIHnSc7Rhl9qU9y+gzSO31BCZZJhP
         Rb3Q==
X-Gm-Message-State: ALoCoQkFMiLv1NcdQoq/H9SARq+ouFnIsFvtm1t4FxhSZ/H97V0tLaGW54ognqJ+jLb1U0vDdLtA
X-Received: by 10.55.53.137 with SMTP id c131mr54109927qka.102.1429123741791;
 Wed, 15 Apr 2015 11:49:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150414221607.GA5795@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com> <20150414221607.GA5795@boyd>
Message-ID: <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 11:48:41 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

On Tue, Apr 14, 2015 at 3:16 PM, Tyler Hicks <tyhicks@canonical.com> wrote:
> On 2015-04-14 14:10:12, Tavis Ormandy wrote:
>> On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wrote:
>> > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wro=
te:
>> >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
>> >> <marc.deslauriers@canonical.com> wrote:
>> >>> Hi,
>> >>>
>> >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>> >>>> This is mostly a question for the persons who assigned CVE-2015-1318
>> >>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>> >>>> mean:
>> >>>>
>> >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>> >>>>                   namespace-based attack because there is an execve=
 by
>> >>>>                   root after a chroot into a user-specified directo=
ry
>> >>>
>> >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>> >>>
>> >>> Marc.
>> >>
>> >> It looks like this is the patch for Apport:
>> >>
>> >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/294=
3#data/apport
>> >>
>> >> It's far more complicated than I expected, and not obviously correct.
>> >> It could probably use some review, I'll think about it today.
>> >>
>> >> Tavis.
>> >
>> > Wait, my first thought is that it's not obvious to me that
>> > /proc/net/unix is guaranteed to be newline delimited, newline is a
>> > perfectly valid name in a filename, no?
>> >
>> >>>> import socket
>> >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
>> >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>> >>>> sock.bind('/tmp/foo\nbar')
>> >>>> sock.listen(1)
>> >
>> > $ grep -A1 foo /proc/net/unix
>> > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
>> > bar
>>
>> And with complete control over this line, it seems like it's game over.
>>
>>                 container =3D lxc.Container(path[-2], real_path)
>>
>> I'm calling this re-broken.
>
> I've pointed St=C3=A9phane Graber to your analysis (and put him on cc). H=
e's
> working on a fix.
>
> Even though it isn't clear if all of the checks added in revision 2943
> can be bypassed, it is worth coming up with another approach.
>


FWIW, I verified this is exploitable.

Just create a new directory like this:

'/tmp/\n0 1 2 3 4 5 6 /tmp/exploit/exploit/'

Then create a UNIX domain socket like this:

'/tmp/\n0 1 2 3 4 5 6 /tmp/exploit/exploit/command'

Now create a config file in there like this:

lxc.logfile =3D /etc/whatever

That gets you a root owned arbitrary file, now you can write arbitrary
contents to it by causing parse errors. I think if you create a filed
called `partial` it will also run hook commands when it tries to clean
up, but clearly this is enough.

Tavis.
