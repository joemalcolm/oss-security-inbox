X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["938" "Wednesday" "15" "April" "2015" "13:44:45" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>" "24" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041520:44:45" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   24/938   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>" ("<263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>" "<1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32561 invoked by uid 550); 15 Apr 2015 20:45:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32537 invoked from network); 15 Apr 2015 20:45:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=f9uCvoqvc5mv7gSnOTdanV0Cv+7rKAK5WrDNeGrYQLI=;
        b=duUb3WvZob0ofHF3JXJCy1O1uu5ba8QNau46kzJMyrKuawGQlk5ffkBWxnY3mx/Ur0
         4tzPBEIbdbkTgLAoYUzjgan3ETKK0VbmAyDHL2j9wQ9m/Pw5k6K/kEvR3yPFAhW9a8nu
         4Ds7GlJx3ZepKusl4HObCcFWYKmJ9NjUu7LXXvq5vIkAMdHMf1GxO9ignlkUdMikJuVN
         wnqm9/iMfNDDMXcCZoJWfDh4bb4LEU2EBD0O3cTM2mb2dVjBNrIafiemyL/6yC8aMix3
         ycQjfPUDzTnLpz3SyeZrsUA9f6dqd+qNHcsk2cBxy9QWiyWh3w7W2FjYo/1mOxpuT4vm
         Y+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=f9uCvoqvc5mv7gSnOTdanV0Cv+7rKAK5WrDNeGrYQLI=;
        b=QH+Rw2n/6G1xKhXt6MZpfGCkPcgjNpTcfa7bMcPjwQV/jgUKvnsTvI7oYubcM7zbxZ
         qDzxNFwASX7hjskDqxmT30Mb2K0Kdjy2nVoui/nAJ99e7RPglNksztxfYGB5pKsfdLxS
         olZDkHmZ8vcKdv5BRA9WW789GYhUNYlvfOAWi1TyPBKF7OXaZfN6VeCDnvzE9L5SrAVR
         lPB8X/pfldv/rPiuQgFpSj29ovNTCrkHMjufP87Xu3SsPSzb8rXYbeQ7760149KYQUdP
         xo4lEsxwE1iCBmirBgoQAwTIFyr8YxmGEUmRXCyRHY/vBz0KX3ov1izoXcdWMFa4gaCw
         IysA==
X-Gm-Message-State: ALoCoQnVL2dX0WZMJFm6BTOX+wHPvaCRi1MPfUrT3BcRLIKi/UJkqAFn6e6bzQKBNmncKbXjrb0M
X-Received: by 10.140.144.67 with SMTP id 64mr14214514qhq.40.1429130706308;
 Wed, 15 Apr 2015 13:45:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>
References: <263211786.321777.1429090662008.JavaMail.zimbra@redhat.com> <1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>
Message-ID: <CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2015 13:44:45 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Wed, Apr 15, 2015 at 2:45 AM, Jakub Filak <jfilak@redhat.com> wrote:
> Hello,
>
> I have a question regarding the ABRT vulnerabilities. I don't particularl=
y understand how an attacker can use /proc/pid/exe symlink to force ABRT to=
 read an arbitrary file if the symlink cannot be changed and kernel refuses=
 to create the process if the symlink's target is not executable.
>
>> This code trusts the /proc/pid/exe symlink, even though it is possible
>> to link it anywhere you want.
>>
>> https://github.com/abrt/abrt/blob/master/src/hooks/abrt-hook-ccpp.c#L368
>>
>>        sprintf(buf, "/proc/%lu/exe", (long)pid);
>>        int src_fd_binary =3D open(buf, O_RDONLY); /* might fail and
>>                                                    return -1, it's ok */
>
> Thank you for clarifying this for me.
>

My description was incorrect, It can't be an arbitrary file, just a
file you have execute but not read permission.

Tavis.
