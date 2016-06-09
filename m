X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Thursday" "9" "June" "2016" "23:19:38" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5ZMz=HYaBsFHf5kOkH99krDzFLqisDb2fztO40jNVG1Pw@mail.gmail.com>" "31" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Cc:" nil nil "6" "2016060920:19:38" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        bbrumley@gma Jun  9   31/1330  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "<20160608153856.GH3711@suse.de>" "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>" "<7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>" "<CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>" "<alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20287 invoked by uid 550); 9 Jun 2016 20:19:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20269 invoked from network); 9 Jun 2016 20:19:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=B+204FMiwMKstq9qHq9t5dZyE1yNXSBuYQ/4wrWIpPE=;
        b=nMXuU9tUuJsbKJzzTI1+NZ9NX0aLcZvOKMqOUqVY+bxMz/E4w/luBD2wh9r5pn0BCR
         510fZ5zpMiOSaooty1vSqLrV/P9nOLZ9YU2KK7fqk1GBNHKkBEIiUzie3pgkgRvTmO34
         UzX6QoJjezkdc7IN6WTAcAcX4AmAYijcUqIdSWF07z68/+d4X2TnKnyTnBZQMM6suPIH
         IMilrqiLvDTEsI4Ufsjlq+xtvSONoAYDyE3tdGYMiv1CRx3ID0ilyyZRq0No6Icm5Uro
         A8g3QiqMXx6ImmtmaT9f/eSH20Si/wT3V5pwHC4/8xXvq+ph4hcYtlvKgaEYRxV3a2D3
         Vmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=B+204FMiwMKstq9qHq9t5dZyE1yNXSBuYQ/4wrWIpPE=;
        b=myj+mcKD9NBp3JMPX4f+K/4BGmRtX9I87zj6WyboCseb5+b1W/hQ3PyG87wXYPkTuS
         Rerag2IJIb+VFYlsj3QyxMxtJLKR9TFmZ2w8kO1yQOM6kwVa25VwM1uTvVtZ+xLwK6Mp
         X1aswja2+TTuz4Yx4HjDGipGOSNr/ToTlk6HohyPcqRbikwfgjBVpk1hmZwKG61/lGNu
         MO3DO5gyGiAdWt+FiuV451cW7sv4fD5877x5Uwsi6A2ippDQrOsfmiqFAyL6WWfQWu0T
         HX6/XZGjAP2iQnVaTVcObaN6vSkRc2kT6sd4bhVpuRgjf1Jo7nLIYWenHtKOyxLZCWTS
         +B1g==
X-Gm-Message-State: ALyK8tJz9d/l6MDz4dJuqDl58ksvDj9uHr16JaolYpaSQC41Sj6eA6BWmne7L55bFF5hb8aADe/WS6uTztWOGw==
X-Received: by 10.141.42.1 with SMTP id t1mr12231228qhe.23.1465503578789; Thu,
 09 Jun 2016 13:19:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
 <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
 <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
 <20160608153856.GH3711@suse.de> <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
 <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de> <CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>
 <alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>
Message-ID: <CAFeDd5ZMz=HYaBsFHf5kOkH99krDzFLqisDb2fztO40jNVG1Pw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Thu, 9 Jun 2016 23:19:38 +0300
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: Roman Drahtmueller <draht@schaltsekun.de>

> The paper very resourceful, and thank you for sharing your thoughts
> even beyond it!

My pleasure :)

> Control over CPU utilization (and thereby cache eviction) can be achieved
> by a remote attacker: Web applications are influenced remotely by
> definition, and they are far from slim or localized these days.
> Keepalives allow to keep the system in a sling with predictable resource
> utilization including cache fills, as there is not only just data stuffed
> through some buffers.
>
> The question remains if the deterioration of the SNR (*) leaves enough
> resolution to be useful. This would no longer constitute a cache-based
> attack with the terrifyingly clear signal, but the sharp edges in the
> latency that you have demonstrated may contribute to filtering the effect
> from the noise.
> While the cause - non-constant-time implementation - remains.

What you are saying is all valid on paper. But when you move to the
uarch level, the techniques we are using are very specific --- rdtsc
and clflush instructions, paired with targeted malicious performance
degradation techniques. When you take away these tools, it really
complicates things for an attacker.

> Are the orders of magnitude in range?

This is more of an interesting research question that would take maybe
six months to definitively answer.

BBB
