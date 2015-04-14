X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Tuesday" "14" "April" "2015" "14:08:07" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "40" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041421:08:07" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 14   40/1444  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29876 invoked by uid 550); 14 Apr 2015 21:09:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29853 invoked from network); 14 Apr 2015 21:09:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=zW57MERacDRvWlQD07q+UjJRb7p0Ge+ELs65g6LK21E=;
        b=SOhZqxeogeg+suTXJZAMisCK+OYDzLj2yROBA3SC0CtM2UooXZHlH12roQUVzueojP
         bbNRONkjlD4Ghrc9QByVD9+EvXp2geREyKCpkkUkXDz/utYJgdGzFp7pNUjjIYwg/XTN
         z5BCUNe6ca/6mMAcQH9sUdHRUwfzJmWJ3P5wYn3gr6ncR7XqLt600gDbkSncdTPPvAXK
         4P2jo1V1Whtukazg+L5IIrhsUrGnKC45qzxD0D3bLL0X8RNE17RYvzcu4UsRJhSadIlM
         AnBnij39z/caR6EdL6Bj07Ph65cYAs4vIfKSujvnI8lpd/WXvKhLSFSx3zqqG2V3qMbg
         /6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=zW57MERacDRvWlQD07q+UjJRb7p0Ge+ELs65g6LK21E=;
        b=O0KpWMlglQlSK8M1hKdBDwMxvfAowH4Cl+dEXP0Sse3+/SECNG7SGjvGI5WMaZLXcW
         ukewPeEUPmz9NSHxLnMqbRzoFTdFsrFtESFteW+QFjK/o/CnDAStODSJbd9PTb+EySJK
         zkZEcM9eVfFRpDSVeZcM39YJGff7uPRFyh6RU2gz/qQyMu0gchIryOsUkVze6EJB1ASS
         jfbjdayvP8dyXkpAzlZTV2FqV0dnmCEr3bMf+96W2vVzj6GwAyHpWam0OLVgJ2l86g7a
         IEh4M8R2HwjJNn7izXJwgm4kYmMW4Cx2RoQzajmxQIUkS/8jAiernW/N1ZKEw0CuJPbs
         qTaQ==
X-Gm-Message-State: ALoCoQnFDv803tFFid/Yz7qwMC5w3ulS90KTivbDRRc3SiQaYCezjlDGwQCigmj5IuaRtAlbF1Kn
X-Received: by 10.141.19.7 with SMTP id v7mr28815525qhd.94.1429045707583; Tue,
 14 Apr 2015 14:08:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
Message-ID: <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Tue, 14 Apr 2015 14:08:07 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Tue, Apr 14, 2015 at 1:35 PM, Tavis Ormandy <taviso@google.com> wrote:
> On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
> <marc.deslauriers@canonical.com> wrote:
>> Hi,
>>
>> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>>> This is mostly a question for the persons who assigned CVE-2015-1318
>>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>>> mean:
>>>
>>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>>>                   namespace-based attack because there is an execve by
>>>                   root after a chroot into a user-specified directory
>>
>> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>>
>> Marc.
>
> It looks like this is the patch for Apport:
>
> http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2943#data/apport
>
> It's far more complicated than I expected, and not obviously correct.
> It could probably use some review, I'll think about it today.
>
> Tavis.

Wait, my first thought is that it's not obvious to me that
/proc/net/unix is guaranteed to be newline delimited, newline is a
perfectly valid name in a filename, no?

>>> import socket
>>> socket.socket(socket.AF_UNIX, socket.SOCK_STREAM).bind('test\ntest')
>>> sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
>>> sock.bind('/tmp/foo\nbar')
>>> sock.listen(1)

$ grep -A1 foo /proc/net/unix
0000000000000000: 00000002 00000000 00010000 0001 01 4772228 /tmp/foo
bar
