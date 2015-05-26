X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Tuesday" "26" "May" "2015" "12:53:04" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLHRZdy0K2EaBny7btAj_-5vHiUxD4zSyLUqVyt86x+Wg@mail.gmail.com>" "31" "Re: [oss-security] Re: hwclock(8) SUID privilege escalation" nil nil nil "5" "2015052619:53:04" "[oss-security] Re: hwclock(8) SUID privilege escalation" (number mark "        taviso@googl May 26   31/1368  " thread-indent "\"Re: [oss-security] Re: hwclock(8) SUID privilege escalation\"\n") "<20150526135946.GE4203@chaz.gmail.com>" ("<20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt>" "<20150526135946.GE4203@chaz.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14066 invoked by uid 550); 26 May 2015 19:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14048 invoked from network); 26 May 2015 19:53:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=VyeMmd5rhKSYObrI82t8jTqN7WB7a3sW8k2YGnFCl5M=;
        b=QjC4nEBWjS9mhpeatErxn+tG3tSd522r8oBZjpcWoIIFzdM24kQ8ZEmSjXEjrTEXgj
         Vi2NEOtfPN1vpZFwpg4rKqNCgJkn4JA+Q6fob7/r/1+IZ2YhttPDYMZL32zSgCHL3glH
         Vhu+s8/bq02Tj/wy5xwSAYoL0oucnXy3YreI7WVWSsa/FdQoatFF1Dor2o1Hbh8jXAO6
         DluIFQoU+mipx+9W+pB/o8z6zH5/S+qsTEyqRzILmJc+1qsrT8tEyrHxFpEcV/8/gjH0
         CcCAz8LvRAmCjKovY0MUSn2D4Yd6CY3pLb2dwRAYYlEmh7QFWb7vwiggCotLUdkAkY/m
         4uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=VyeMmd5rhKSYObrI82t8jTqN7WB7a3sW8k2YGnFCl5M=;
        b=VEK/9dlAhN+n7YZatWhVZN5Y9JLDvr8l/+i/zAOzdm+XbtfLA3y+TQ/dgtHKPjAWt1
         aZqvDAhM0fKSrMECQzixf8H4X7ef+WK9+iy8RTkNko2pXvvBxmopbCu1R16j1Y87ozKf
         qcMPVd4LoaBT8xFsWgwUT1+/+eylJ1ajVUSTnXqZkDhw3B5sasapuDjARY8tTesZ9mvM
         cyFFNpNDwvY6a/5eMRsu8mj7BoTW5PI11oTECOA9tiSY4idUkTpCuCIqYF5CysY2nECt
         S2FhIgO7wHJbIbDvxwFt1AGBPAl6xMkZDkN77dPk46wbZGPyCs1PlSbu6hYhtIuFQghK
         G+bg==
X-Gm-Message-State: ALoCoQkU2IS+i2KXW+0TTmf9mpQACnFcj7a8VUFmMwejpY+1NKizZ1atBfBqil0X5WdjR8PcI8L/
X-Received: by 10.140.151.197 with SMTP id 188mr38158254qhx.18.1432670005430;
 Tue, 26 May 2015 12:53:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150526135946.GE4203@chaz.gmail.com>
References: <20150526124747.16414nohrczpwps0@webmail.alunos.dcc.fc.up.pt> <20150526135946.GE4203@chaz.gmail.com>
Message-ID: <CAJ_zFkLHRZdy0K2EaBny7btAj_-5vHiUxD4zSyLUqVyt86x+Wg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 26 May 2015 12:53:04 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: hwclock(8) SUID privilege escalation
To: oss-security@lists.openwall.com

On Tue, May 26, 2015 at 6:59 AM, Stephane Chazelas
<stephane.chazelas@gmail.com> wrote:
> 2015-05-26 12:47:47 +0200, up201407890@alunos.dcc.fc.up.pt:
> [...]
>> Please note that this is possible on Debian-derived (and therefore Ubuntu),
>> because /bin/sh is provided by dash which does NOT make use
>> of privmode (does not drop privileges if ruid != euid, unlike bash),
>> which is a very stupid idea.
>>
>> privmode is surprisingly effective at mitigating some common vulnerability
>> classes and misconfigurations, and it has been around since mid 90's.
>> Indeed, Chet Ramey (bash author and maintainer) explains that the
>> purpose of this is to prevent "bogus system(3)/popen(3) calls in
>> setuid executables"
> [...]
>
> No, bash does NOT drop privileges if ruid != euid when called as
> sh either . If it were, it would break those commands that use
> system()/popen() from suid/sgid executables (which arguably they
> shouldn't be doing) and expect the euid/egid to be preserved.
>

Yes it does, you are most likely a Debian user. Debian patched bash to
add the behavior you describe back because someone complained it broke
uucp delivery in 1999 (see debian bug 52586).

That is why popen() in setuid programs are usually only exploitable on
Debian/Ubuntu, see this link for more discussion
http://www.openwall.com/lists/oss-security/2013/08/22/12

Tavis.
