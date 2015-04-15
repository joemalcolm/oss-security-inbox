X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1177" "Wednesday" "15" "April" "2015" "15:14:33" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLGThO_XTxEDJynNwmYjP7iK8YAJwH=PBfyE_ehZAiUiQ@mail.gmail.com>" "31" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041522:14:33" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   31/1177  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>" ("<263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>" "<1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com>" "<CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25740 invoked by uid 550); 15 Apr 2015 22:15:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25719 invoked from network); 15 Apr 2015 22:15:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=LavyhDa6pVrp+MgBLmujgBE6jpGFqdmsu1QLRVHZ24w=;
        b=TMXHpmoM9qsVc+TiOX3zPHykezSFeVpqTbgpWVdXL840wI0yFzPuwq/lM4xME58vmr
         sZUjpySzVQJeEUx+aLBw8B7NT0K2rnPjFkqU0FhKOkpZ+1P21GoZNZbJsQu9isdih/vx
         K41cFHzGL4pw0o/hOhTh76w/LPefxKuZ4wu2uMyAD8HUc87oKwVzNJnqsKSgq7ySGbX0
         fersVlSJNi9z8jYpVUPre25SX4WQru/l812uVThAX5gKMw2K5S4h0r1No2gGKZ6y15hm
         XgPeQTRck8GsBd2Z9xg2UujuiLJvxiG2LEpTQ5MUcAH9OgJLE5xNs2DAdQkoo4PTLx7G
         Wtcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=LavyhDa6pVrp+MgBLmujgBE6jpGFqdmsu1QLRVHZ24w=;
        b=jSmFUvLPhMBEaRmyNrWeewlSCpIterfkvdLJcnIZe11EhRP+4dK6prAsTd8H3X+lex
         WZrz0Zh/Fqn/p6PYovZ3TGxALRK/a4jllvjV61rd9/HnftZMvcn+nWLQhooLjdT/p0v+
         93DGyOWkOYcQQFKicWvs4sIxtvs/FHJnjTGLb4Chc5ngdh1pNnzO7rGYYvtgIIjNemtU
         YgROWKS2aNQeyHp63+j5lQCV9tK+XelJlqtQTs+QO3pnkCCp1Uz6ZwfwmcuuucYw+EEO
         eX4GHDBE1Z4a3A9GJTK7xo2RtgsT8T1W72YAaGoSsm883s6GPrwkCfwq9HPQlT1jazRY
         IMMw==
X-Gm-Message-State: ALoCoQk6ub3UL7l7RwI0liQIOnIEdYfh9dz/JrGg7MO5jYI1AQZjojuxjIzOQ/Ze7lJjgXN//Xb0
X-Received: by 10.55.33.94 with SMTP id h91mr56586571qkh.69.1429136094512;
 Wed, 15 Apr 2015 15:14:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>
References: <263211786.321777.1429090662008.JavaMail.zimbra@redhat.com>
 <1996357174.366899.1429091144055.JavaMail.zimbra@redhat.com> <CAJ_zFk+JM3PVN=WkyFokdHP2=s87NFaYn89Fy=WSxEgYC3CE6g@mail.gmail.com>
Message-ID: <CAJ_zFkLGThO_XTxEDJynNwmYjP7iK8YAJwH=PBfyE_ehZAiUiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2015 15:14:33 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Wed, Apr 15, 2015 at 1:44 PM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Apr 15, 2015 at 2:45 AM, Jakub Filak <jfilak@redhat.com> wrote:
>> Hello,
>>
>> I have a question regarding the ABRT vulnerabilities. I don't particular=
ly understand how an attacker can use /proc/pid/exe symlink to force ABRT t=
o read an arbitrary file if the symlink cannot be changed and kernel refuse=
s to create the process if the symlink's target is not executable.
>>
>>> This code trusts the /proc/pid/exe symlink, even though it is possible
>>> to link it anywhere you want.
>>>
>>> https://github.com/abrt/abrt/blob/master/src/hooks/abrt-hook-ccpp.c#L368
>>>
>>>        sprintf(buf, "/proc/%lu/exe", (long)pid);
>>>        int src_fd_binary =3D open(buf, O_RDONLY); /* might fail and
>>>                                                    return -1, it's ok */
>>
>> Thank you for clarifying this for me.
>>
>
> My description was incorrect, It can't be an arbitrary file, just a
> file you have execute but not read permission.
>
> Tavis.

Apparently I'm wrong again, spender points out it may still be possible.

https://twitter.com/grsecurity/status/588459661805817858

Tavis.
