X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Sunday" "2" "December" "2018" "15:50:22" "+0800" "Wei Wu" "ww9210@gmail.com" "<CACmwppyNt6+YffPyGZer-4ztW9RxxYKZ-y8RRiZLfvP04PGaXQ@mail.gmail.com>" "51" "Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Cc:" nil nil "12" "2018120207:50:22" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        ww9210@gmail Dec  2   51/1164  " thread-indent "\"Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") "<CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>" ("<20181123172208.GA16585@scapa.corsac.net>" "<20181123180914.GA10084@kroah.com>" "<e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org>" "<a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>" "<CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18035 invoked by uid 550); 2 Dec 2018 11:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7475 invoked from network); 2 Dec 2018 07:50:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LT9Zy1TMKIOq9nhovrTMls1LjKXsrs3R1wkM9RIGi5Q=;
        b=gmF5aDZ4tDEXQNkCfj8CQ5RxS5roykXKv1J2FwxDBq6rU6r3IYOk0BOM4Vq7E2V0oB
         KoSECjPOGbljQXFxBZGfiZejqyVSaFJCVkWf1BDpiUNmpq/ckAPi/0rMJ6pqZZGVw6zC
         NQPGZkJNoAlgnPdZCZjWdo8izRi7rgbsMDRBR+N1BDSz2+UnXV0ZuW5+RIVYXRY6nalX
         EfBF8n122uxU4Ez3Mql77Geh7VIsx8mNUNjI6qfb69bg8eqbpu3//GSTslkFRX99NCj9
         krk+yVlhjnHsf758UyPgXuZn5+jq3eLz3fhzRTniBcOM/07CGpYM9AnCBOIV9OSOJ9kf
         sing==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LT9Zy1TMKIOq9nhovrTMls1LjKXsrs3R1wkM9RIGi5Q=;
        b=YO1nZKagpYwHTybFvNd20zc5eahgDoNJXylDH30p5aXR9+VyaPPEADgMkYfJhsOZLP
         28o+NUSb/l6irlxYn9J7qwlI+d2hk7DKXzR337brrS6/TZnc1x4szCouzYdeAbzPzRVl
         /xg2Y7Hn0jlJveCmM5l5j9S2IskREbTt5WZuvGhlk3hKVE5YHlNIBr0YL13LnPKkHAQc
         5IUOhtrGP0Oys62Qqef4yRo2Iyoc+uok7QFaGQ4IOdS3UyZPmopo1HqfLlScftzpquGC
         dXS8duu88nxM8T6+eopQPkSqCA8vXClSuErGvNPvkzNT5iqmM+MnuiD7ZeShR0CC6S0H
         Z48A==
X-Gm-Message-State: AA+aEWblFt+0Ot+D47bVTSPu3R4bDDTjyNUsfPA1ZSTJ1FWb6jOGtHwE
	7dmcyFburaWflWFXMl2FlAy4QSm1B53xxBTCbqc=
X-Google-Smtp-Source: AFSGD/VvttCCyoWoBfsPglUc4Q0OEeiRzbtNYYcq/epatufv8o1MF258SJ70DWFuFUEyrO6tSsvYncX/kBZHr+J6Hno=
X-Received: by 2002:a0c:9471:: with SMTP id i46mr11666044qvi.120.1543737032785;
 Sat, 01 Dec 2018 23:50:32 -0800 (PST)
MIME-Version: 1.0
References: <20181123172208.GA16585@scapa.corsac.net> <20181123180914.GA10084@kroah.com>
 <e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org>
 <a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org> <CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>
In-Reply-To: <CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>
Message-ID: <CACmwppyNt6+YffPyGZer-4ztW9RxxYKZ-y8RRiZLfvP04PGaXQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007744ab057c0549f7"
Cc: oss-security@lists.openwall.com
Date: Sun, 2 Dec 2018 15:50:22 +0800
From: Wei Wu <ww9210@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf
 leading to LPE (exploit provided)
To: Dhiraj Mishra <mishra.dhiraj95@gmail.com>

--0000000000007744ab057c0549f7
Content-Type: text/plain; charset="UTF-8"

hi,

there is none because it did not affect any release version.

wei

On Sun, Dec 2, 2018 at 15:01 Dhiraj Mishra <mishra.dhiraj95@gmail.com>
wrote:

> Hey,
>
> Just wanted to know is there any CVE assigned to this issue?
>
>
>
> Thanks
>
> On Sat, Nov 24, 2018 at 2:39 PM Yves-Alexis Perez <corsac@debian.org>
> wrote:
>
>> On Fri, 2018-11-23 at 21:45 +0100, Yves-Alexis Perez wrote:
>> > On Fri, 2018-11-23 at 19:09 +0100, Greg KH wrote:
>> > > As was discussed further on one of the threads on this topic, it looks
>> > > like this is a 4.20-rc issue only, and that 4.19 does not have this
>> > > issue.  So it might not be relevant to any distro at all, but I
>> suggest
>> > > that people test themselves to be sure.
>> >
>> > Hi Greg, thanks for the precision.
>>
>> And considering no released kernel is vulnerable, here is the proof of
>> concept
>> code provided initially.
>>
>> Regards,
>> --
>> Yves-Alexis
>>
>
>
> --
> Regards
>
> *Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA
> CF29 8C1C  ED65 3233 4D18 5172 0F56
>

--0000000000007744ab057c0549f7--
