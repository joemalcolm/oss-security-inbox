X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1105" "Wednesday" "3" "May" "2017" "15:41:04" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjFHU2p2cYomcaMqjHBmq4t4_yOqmB_D9U9SWxr0UJagA@mail.gmail.com>" "28" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017050313:41:04" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May  3   28/1105  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8149 invoked by uid 550); 3 May 2017 13:41:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8122 invoked from network); 3 May 2017 13:41:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=q2nX9+JmTZtxLa1lraIgK27HbKNbgPGjUhrVPwMpRcA=;
        b=F/d3Mawe15BCMj+TTLKncS3Xf9VaqLomutsu6HSTp2ZXQKeBC6GgqD+9rEGhZnwAUh
         wUnfq4bpgYgs6tNXrYfLWQEJNl5aN0S30kj3NPp1kq9xBprUvI26uqFpd2eDmKxaICAj
         QtHvVdeQEKZ4KBb/n1nNtxed3DZdGZJjo6T4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=q2nX9+JmTZtxLa1lraIgK27HbKNbgPGjUhrVPwMpRcA=;
        b=BA+uk7NCe2mb6j3ggqPjVycraBN1XX9169aaCca0J1aQA6HG0mALfi6+sMlHN7B3MV
         UzJKadHEnpSqjfGqzCfpj4rjUOI/lLeGojMaW2iQPFfsx4r0/aZRVxtKNiBiQQvJkkTD
         9HLXO1VdDFaqT/B6agAUgxdVlatG5yYOx5D014Psm8uayRfdIwtcNlxdELqqpqJLMoK/
         vN2z1at2To9jyJkqMNRJ7WWxD3Xr3bitYxXA+TmG1g2+DUa40EanZM1clnZtz9m4MvKq
         xgfOnTfzZwbiTypI46Ib9Ez2KjaA3gV9IwuR08oVW3oTI1dmdrjJiG+DLUNPDFhM+Wa+
         dpMA==
X-Gm-Message-State: AN3rC/5KrLcS3juEr99jGrOzzgFzPjeQlwyY/bbRJUrCTenRMY8b2Qll
	ndDWbC9GQWzd//biz+PRWDmagBDyPBTwV2o=
X-Received: by 10.98.86.221 with SMTP id h90mr4963158pfj.205.1493818865097;
 Wed, 03 May 2017 06:41:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
Message-ID: <CAP145pjFHU2p2cYomcaMqjHBmq4t4_yOqmB_D9U9SWxr0UJagA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 May 2017 15:41:04 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

> On a slightly different note; memory corruption/abort() problems might
> end up as RCE with some effort, but what *is* RCE is ability to push
> back characters into terminal's input buffer. There are some
> well-known vectors, like setting title of the current terminal and
> printing it back with ESC codes, and hopefully it's something that is
> mitigated in all modern terminal emulator software packages for many
> years now.
>
> But, it's not something that can be discovered simply by waiting for
> SEGV and similar signals. Hence, I'd like to encourage everyone
> looking for bugs in terminal emulators to add some form of
> instrumentation to their fuzz setups aimed at finding such problems
> too.
>
> A harmless example from rxvt - pushing back the new-line character:
>
> $ echo -ne "\eGQ;"
> ;$ 0
> bash: 0: command not found

For those interested in high-speed terminal emulator fuzzing
(typically 300k-700k inputs/sec on a modern i7-6600K), I prepared a
short step-by-step guide:

https://github.com/google/honggfuzz/tree/master/examples/terminal-emulators

--=20
Robert =C5=9Awi=C4=99cki
