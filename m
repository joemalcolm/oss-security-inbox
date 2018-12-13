X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["604" "Wednesday" "12" "December" "2018" "22:13:11" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+Dhd0buWMW7p4sRDZ_0KEDnOiKp4nV35XUgCUnFc5q-w@mail.gmail.com>" "14" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121306:13:11" "[oss-security] Multiple telnet.c overflows" (number mark "        taviso@googl Dec 12   14/604   " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>" "<CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>" "<CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5205 invoked by uid 550); 13 Dec 2018 06:20:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5182 invoked from network); 13 Dec 2018 06:20:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=FYFQR74l11pz1xX60poIf7U/9I/x0LEaUUsnHbJledM=;
        b=hXmOBWlNC4yCfRHScNmD5UwdeA11W83wlc0cZXdgyZIg3ZwBkQgFJeXvU8yyA6H1si
         f7Ozc1B8Pbqj1rBP5ZhQihpOZNekLZ/038dGq1fjkD5QD7sgcbRqf9VSyUBVrv3z/jp0
         nBeecYptlFygMvkKGK8k1wzlv4wJWB10lDIKuCn3tjz/xHBQ75YFF9h4Gb+oW0lgTwqI
         MLRkcOXaQSlAG1Yo9OfS6S3P93THn52hzE+MDcQvnJr5cEBGdl+LEqpxCiK1ke1X7vzS
         uA02XIUQP7pAKCAaABE2+uc81SPXePSt/1y7u+BPy+Ajk5CoFOyNuRrL6qWnl4+jxpeX
         D6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=FYFQR74l11pz1xX60poIf7U/9I/x0LEaUUsnHbJledM=;
        b=DDDxDM5Qa3qw1PNzdwtaB/j8e4U7Qr3KrA+ks/463H4KWMlyCf2rtOQx4qxBelEAVg
         0XaolGEdlkiHOY29gxKASnzHyt4V10OzM0t9KlGIvGkeiNFzCPvtGzaEkhPKCiGeBtph
         3MEhNDUVrZl+rzwOg6sUMvBWu4rky5byEK+eVol527wj14n9mjCCpCWl6s39VEK6V+1P
         sTyoNs/pJRTkC3vEzNfVeALeqai663SCyuKvOjRG/vHtUh8g57aY5Q0VHAIeyzcgqSzx
         IcOyTNIMm6VnqXfdZpNE3YHISwGDhNToz5qPuL2IcuxyT8vD29zD9bvdQCazZNG4TNGS
         1fhQ==
X-Gm-Message-State: AA+aEWYqCaJAoW/07jIFA+qnGJUq4CZEryoIhhVnVY1BpobFwy5W2piB
	amj9/KS4HDBffKMavqv68KfiBjw5BWhvQakJNwZV9g==
X-Google-Smtp-Source: AFSGD/WejZkFZcAqjKFh32RavbrR3T7jKfuwFdHBr3BIV3qYKcQmMg4cFwZqqcoYaS9eq/bdf35ekbEeBZRFZPk79Mc=
X-Received: by 2002:a0c:c404:: with SMTP id r4mr22164415qvi.131.1544681602250;
 Wed, 12 Dec 2018 22:13:22 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
 <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
 <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>
 <CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com> <CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>
In-Reply-To: <CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>
Message-ID: <CAJ_zFk+Dhd0buWMW7p4sRDZ_0KEDnOiKp4nV35XUgCUnFc5q-w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 22:13:11 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: hackerfantastic@googlemail.com

On Wed, Dec 12, 2018 at 5:21 PM Hacker Fantastic
<hackerfantastic@googlemail.com> wrote:
>
> Please see the below proof of concept in triggering the heap overflow usi=
ng the IAC SB TELQUAL_IS environment option variable assignment. As per my =
original advisory, which did not fully indicate the details but gave the ov=
erview of how to trigger the condition.

Cool, but I think this is a different bug (AFAICT, it's CVE-2005-0469,
it was fixed in netkit, but far fewer distros use inetutils). I agree
this was a real vulnerability, It's a pretty good sign inetutils
should be deprecated imho.

Tavis.
