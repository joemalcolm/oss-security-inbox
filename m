X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3145" "Wednesday" "15" "April" "2015" "09:21:39" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>" "89" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041516:21:39" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   89/3145  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150415160557.GA15511@boyd>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<20150415160557.GA15511@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22259 invoked by uid 550); 15 Apr 2015 16:22:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22238 invoked from network); 15 Apr 2015 16:22:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=69AKxQjtxpCBJWnwCH5FmaShBuYmNupcUOx44LYC8Gs=;
        b=CBnAVpRHBQsXNIcHppryV4wVXCFxHDHPFJbIKQlgMQ/aMhYgpQ9KIkjMQltQ4T3Kkp
         gNHP8PjH5VoMPdV2bZpsE5K6lFpmvYRdz+PRQd263wQMQyh89lHWL9+OLA/Li52aiVNf
         x/WF+GFDDzfn9BkIDX6onY5bbmQssepCA70dauCLsSmc7Qu5MPlOcXmHILZMumYrgDaf
         8nNVo9dkhBuUMwZvZDEmB2ZxYSyv0xRmDfSa3fff6EzLR5YLuzfCxW8hDFR+kMscY6FU
         3mr4pTpZAtBPGOxkZxw+hr2C2Xoyuvlls28RmKgJnJlwZmLsKEoW7Xx5JCRJuZgUx9QD
         q1ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=69AKxQjtxpCBJWnwCH5FmaShBuYmNupcUOx44LYC8Gs=;
        b=Ad+dKexWA7JgK7+PVEdSeR9GLC3KKXv9nv0poMZYzPI0i9kXiO3c1HA26RFqS36zkb
         V10SNw6dEFAZ8UEKPAcW9S3OEkGgLaOMO0HUv0MrjP5kMSLPW7qo4Q7TEoU6ZBmcRhiB
         uy2q9QuEUqN/ZTybNGSOoFfMMpLEUz61B7YPcdVRnmGE5XiTfmZrBOrtoEsn7G53ZRQG
         ZXpqcI4071vGgIr/i7axUUm7X1X/EG4wXs8ndIUf0ebjs0r4X4kYYBEmTCAQ+tgKVAjR
         cZvyLYa4qIMaH3m92ZtYV7h6mW3GWXKWbavRWR5RlCIjS5FJNoVvO2v86BKF9MqzxuqE
         lWdA==
X-Gm-Message-State: ALoCoQmikZc8qpty7Vb9jhtDycsKO/ALCB7/ytUDKMjuuM1frdoM6q1HeUJQLI7+N5H/2sQ9ILKf
X-Received: by 10.140.151.197 with SMTP id 188mr34011749qhx.18.1429114919959;
 Wed, 15 Apr 2015 09:21:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150415160557.GA15511@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd> <20150415160557.GA15511@boyd>
Message-ID: <CAJ_zFkJ77jRVKqeM7oA52Etvp67AFvLPc+CUnBH2J6g+rs0NOg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 09:21:39 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

On Wed, Apr 15, 2015 at 9:05 AM, Tyler Hicks <tyhicks@canonical.com> wrote:
> On 2015-04-14 17:16:08, Tyler Hicks wrote:
>> On 2015-04-14 14:10:12, Tavis Ormandy wrote:
>> > On Tue, Apr 14, 2015 at 2:08 PM, Tavis Ormandy <taviso@google.com> wro=
te:
>> > > On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> w=
rote:
>> > >> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
>> > >> <marc.deslauriers@canonical.com> wrote:
>> > >>> Hi,
>> > >>>
>> > >>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>> > >>>> This is mostly a question for the persons who assigned CVE-2015-1=
318
>> > >>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>> > >>>> mean:
>> > >>>>
>> > >>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>> > >>>>                   namespace-based attack because there is an exec=
ve by
>> > >>>>                   root after a chroot into a user-specified direc=
tory
>> > >>>
>> > >>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>> > >>>
>> > >>> Marc.
>> > >>
>> > >> It looks like this is the patch for Apport:
>> > >>
>> > >> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2=
943#data/apport
>> > >>
>> > >> It's far more complicated than I expected, and not obviously correc=
t.
>> > >> It could probably use some review, I'll think about it today.
>> > >>
>> > >> Tavis.
>> > >
>> > > Wait, my first thought is that it's not obvious to me that
>> > > /proc/net/unix is guaranteed to be newline delimited, newline is a
>> > > perfectly valid name in a filename, no?
>> > >
>> > >>>> import socket
>> > >>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntes=
t')
>> > >>>> sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>> > >>>> sock.bind('/tmp/foo\nbar')
>> > >>>> sock.listen(1)
>> > >
>> > > $ grep -A1 foo /proc/net/unix
>> > > 0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
>> > > bar
>> >
>> > And with complete control over this line, it seems like it's game over.
>> >
>> >                 container =3D lxc.Container(path[-2], real_path)
>> >
>> > I'm calling this re-broken.
>>
>> I've pointed St=C3=A9phane Graber to your analysis (and put him on cc). =
He's
>> working on a fix.
>>
>> Even though it isn't clear if all of the checks added in revision 2943
>> can be bypassed, it is worth coming up with another approach.
>
> Hi Tavis - We've opened a bug to track the issue that you discovered:
>
>   https://launchpad.net/bugs/1444518
>
> St=C3=A9phane has prepared a patch that is more resilient to a malicious
> /proc/net/unix:
>
>   https://launchpadlibrarian.net/203372380/apport.diff
>
> Any feedback that you have would be appreciated. Thanks again!
>
> Tyler

Thanks Tyler, I'll think about this morning. I'm not sure if these
observations are important, but my first thought is It's definitely
possible to make the st_uid of /proc/ppid 0, you could just do su
$USER for example.

Also, you can at least trust /proc/pid is stopped while the core
handler is running, but ppid is still running. I think this matters,
because the pid might be recycled.

Tavis.
