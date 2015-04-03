X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2143" "Friday" "3" "April" "2015" "13:57:02" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwRaCkVWVeDtX-hy22Gm8xB=SMbz=fxWkwz4QqgvLU8ayw@mail.gmail.com>" "73" "Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040309:57:02" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        loganaden@gm Apr  3   73/2143  " thread-indent "\"Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" "<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>" "<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>" "<CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30128 invoked by uid 550); 3 Apr 2015 09:57:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30087 invoked from network); 3 Apr 2015 09:57:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=Mm0593gYOMoF6mhevP+2akcfvk/u93/DEKaVqtzSbUg=;
        b=mUKXzsSMWgnCtaKfZYasR0itWw10MzLfT5O+XwU9kOnFAZ796AtkN1ytvBKUAp24TA
         zoIPBQJ8a2yQc8YQrUeMQkP9vjkNlGpEyG7RSACl8I7uomk8+BW2G7sAPYvbu3o6UAwJ
         emlZqDJUqPkFUaxceFBMWaC2kMtXrvQL7mMFS/3mZUejz0Nbuu/Pj/lza35pnoAwUFas
         Ud8QJdNs28bYxEOAQL9k7/jt8cM/RF3UEFPZg9lwPaqBstdpvs+wanhqajMP2yISeLTG
         Uta3A+Q+0DQrPOZAB8zVXPDiT1Wm9H2vNLfU78l2Vrq8NbZ1TSwQna7KN5bp1/l42+6r
         VHGw==
MIME-Version: 1.0
X-Received: by 10.43.14.199 with SMTP id pr7mr2839801icb.3.1428055023008; Fri,
 03 Apr 2015 02:57:03 -0700 (PDT)
In-Reply-To: <CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
	<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>
	<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>
	<CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>
Message-ID: <CAOp4FwRaCkVWVeDtX-hy22Gm8xB=SMbz=fxWkwz4QqgvLU8ayw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Jim Thompson <jim@netgate.com>, Eitan Adler <lists@eitanadler.com>, 
	FreeBSD Security Team <secteam@freebsd.org>, "freebsd-net@freebsd.org" <net@freebsd.org>
Date: Fri, 3 Apr 2015 13:57:02 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: oss-security@lists.openwall.com

On Fri, Apr 3, 2015 at 1:54 PM, D.S. Ljungmark <ljungmark@modio.se> wrote:
> On Fri, Apr 3, 2015 at 6:06 AM, Jim Thompson <jim@netgate.com> wrote:
>> have you considered that there might not be a relevant patch because Fre=
eBSD=E2=80=99s implementation isn=E2=80=99t affected?
>
> sys/netinet6/nd6_rtr.c
>
>     300         if (nd_ra->nd_ra_curhoplimit)
>     301                 ndi->chlim =3D nd_ra->nd_ra_curhoplimit;
>
> The only "OUT" in that function I see are tests for:
>   Not accepting RA
>   hoplimit on current packet !=3D 255
>   not link-local
>   No extended ipv6 header

It is vulnerable. Harrison Grundy and I worked on a patch, and sent it
to secteam@.


>
>
> Based on previous testing ( early March 2015), and reading of the
> source, I say that FreeBSD is vulnerable.
>
>
> Regards,
>   D.S. Ljungmark
>
>
>>
>> Jim
>>
>>> On Apr 2, 2015, at 9:15 PM, Eitan Adler <lists@eitanadler.com> wrote:
>>>
>>> + FreeBSD lists since I haven't seen any relevant patches (although I
>>> might have missed them).
>>>
>>> ---------- Forwarded message ----------
>>> From: D.S. Ljungmark <ljungmark@modio.se>
>>> Date: 2 April 2015 at 10:19
>>> Subject: [oss-security] CVE Request : IPv6 Hop limit lowering via RA me=
ssages
>>> To: oss-security@lists.openwall.com
>>>
>>>
>>> An unprivileged user on a local network can use IPv6 Neighbour
>>> Discovery ICMP to broadcast a non-route with a low hop limit, this
>>> causing machines to lower the hop limit on existing IPv6 routes.
>>>
>>> Linux Patch: http://www.spinics.net/lists/netdev/msg322361.html
>>> Redhat bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=3D1203712
>>>
>>> Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel
>>>
>>>
>>> Regards,
>>>  D.S. Ljungmark
>>>
>>>
>>> --
>>> Eitan Adler
>>> _______________________________________________
>>> freebsd-net@freebsd.org mailing list
>>> http://lists.freebsd.org/mailman/listinfo/freebsd-net
>>> To unsubscribe, send any mail to "freebsd-net-unsubscribe@freebsd.org"
>>



--=20
This message is strictly personal and the opinions expressed do not
represent those of my employers, either past or present.
