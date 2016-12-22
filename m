X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Thursday" "22" "December" "2016" "06:06:41" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>" "22" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122211:06:41" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       noloader@gma Dec 22   22/804   " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161222104035.GE5082@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>" "<20161221232409.GN19629@jumper.schlittermann.de>" "<20161222005733.GB81339@wopr>" "<20161222104035.GE5082@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30022 invoked by uid 550); 22 Dec 2016 11:17:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24218 invoked from network); 22 Dec 2016 11:06:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=EQi1+rmJ4iosDmqkIif1B/w7ZBeWm8obTZN+3cycTW8=;
        b=uYkvbt2v4ppJS7OdF6VvbY2Y0IS9ql1gyiXa0HoblZSo6QKnXRxcSDsTD/PPF+m5Jv
         wLpCukflS3fX4xV1k/PJwlgArMqYhwDdIw8pKpHpLM7bpB2stDKMgt12nJ38dunCxSTo
         oV1AEXFKZOOKMI4HmoWzJzORvno57SkmuhDOPA7J5tA3MPbDodhspKn2dl0zmaPOjVUS
         kxmEkCuHi1pmaV9GX2OQNEDNLBmWFq8ozxQhIq8yy2L9uRQf8bRF+6foQkv+VLnvFANl
         bli26xkVUu1ZE4czCW6J4sdVoC617JhrshiiWE8H37bJmxU4LeKh9appfg13a6kUnpTM
         EPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=EQi1+rmJ4iosDmqkIif1B/w7ZBeWm8obTZN+3cycTW8=;
        b=sU2zT/NbXFVolor62x1Z3Epx1nXZXXGgZ/xCft7WH9ZFuifYdLZ8HDaJ6k7j7phO8/
         /W+APbfgROpgfyFL5eUPqhIk75gNfRsoxTcDRFA+g+JSYaGiCrUPfvEAxhxI+4PKTkWA
         OXOCDZk3K2kxj1Vc3Fb0ApxZ28XijCHVIAOUCmlwIaZTt1nCnVyaawi832+HPBJoiABw
         YRqRTgGruQ5xbvYqhJajQD8MfL5Sh5RQecPtA+Lag0lI3rV60GSh9WG7/O7J9/Lmua+d
         tJdiIFqyGSBC4s9dWC0Z5b854ORQOmkZxevtSmgCxWGFnWRcT8BmrjzE51bFrBfHUklN
         Thzg==
X-Gm-Message-State: AIkVDXKD+Kr5KWoo6F75ESMmTwF206kweDW/fYUR19f3qhrdN+dSnjlZhWN7+/IzDImDPq4/tF9zFERLTRGBgQ==
X-Received: by 10.107.181.213 with SMTP id e204mr176765iof.156.1482404802305;
 Thu, 22 Dec 2016 03:06:42 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161222104035.GE5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG> <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de> <20161221205952.GA81339@wopr>
 <20161221232409.GN19629@jumper.schlittermann.de> <20161222005733.GB81339@wopr>
 <20161222104035.GE5082@jumper.schlittermann.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 22 Dec 2016 06:06:41 -0500
Message-ID: <CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

On Thu, Dec 22, 2016 at 5:40 AM, Heiko Schlittermann
<hs@schlittermann.de> wrote:
> Kurt H Maier <khm@sciops.net> (Do 22 Dez 2016 01:57:33 CET):
>> On Thu, Dec 22, 2016 at 12:24:09AM +0100, Heiko Schlittermann wrote:
>> >
>> > In case the distros are ready already, we could release on 23rd, but I
>> > need feedbeck from the distros and ack from the other developers.
>> >
>> Please pursue this possibility.
>
> Ok, I asked the distro@vs=E2=80=A6 list to get clearance. If the major di=
stros
> supporting Exim give their ok, we're prepared to release sooner. Stay
> tuned.

Its probably worth mentioning the only people who are at a
disadvantage now are the good guys and decision makers.

The bad guys already knew about the problem, or the motivated ones
found it after the partial disclosure.

Jeff
