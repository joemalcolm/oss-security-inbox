X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2863" "Monday" "14" "November" "2016" "06:53:24" "+0100" "=?UTF-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@sury.org" "<1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>" "89" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" nil nil nil "11" "2016111405:53:24" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" (number mark "U       ondrej@sury. Nov 14   89/2863  " thread-indent "\"[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master\"\n") "<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>" ("<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16156 invoked by uid 550); 14 Nov 2016 12:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15931 invoked from network); 14 Nov 2016 05:53:37 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=sury.org; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=mesmtp; bh=cfk/mcXlAeyY4QHrC2c2+d+kRP
	c=; b=fjBoNygZMUGmdc0FmrmrcfBbDmrf64d50vxwNVxL8R9Ph8ocIe+MbfGPEn
	IkH2r1eXo0q4Vx4eSIf4v5nxwP6ybTBKcM1R3uPUHAiTnQN5POa/gEt7h35+dLxK
	5J58ixt25C0ou/5R8CytxEcADmoRUrJtlP1Hi8281duj0v74U=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=smtpout; bh=cf
	k/mcXlAeyY4QHrC2c2+d+kRPc=; b=MkPqAUQaf7GWwtl57A8QMafVw0ce5kr4KH
	i6How972/FH6Q/8gTe3p6hc0vv6b8lSAb1ASuqzdFlcX8W5PB7tjYi+a72kVN7Fq
	gbEjWxp9uzDfWTWZBI/szPPAlehQuFWAwt7lUF3hvXZ8X8gQKschydOllQpk0uPA
	fsknFBnMQ=
X-ME-Sender: <xms:VFEpWOZnhZZU-S24SCCDlko8L8DlkLAPnYqn8bEo0lsdQlByAyqKHg>
Message-Id: <1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>
From: =?UTF-8?Q?Ond=C5=99ej=20Sur=C3=BD?= <ondrej@sury.org>
To: oss-security@lists.openwall.com,
 Sam Trenholme <sam-k6mymjcnjpz3fmkieotlt7rbgvqt98qy@samiam.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-95dfd397
Date: Mon, 14 Nov 2016 06:53:24 +0100
References: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
In-Reply-To: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
Subject: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master

Hi all,

AFL found another 5 crashes totaling to 6 unique crashes. Looking at the
backtraces it
looks like, it's just 3 unique crashes:

- js_readuint16
- js_substr

- process_query -> this in fact looks like stack smashing, since it
crashes on htons in an unrelated place

id:000000
id:000002
Program received signal SIGSEGV, Segmentation fault.
js_readuint16 (js=3Djs@entry=3D0x6de290, offset=3Doffset@entry=3D4) at
JsStr.c:1064
1064               (*(js->string + offset + 1) & 0xff);


id:000001
id:000005
Program received signal SIGSEGV, Segmentation fault.
js_substr (source=3Dsource@entry=3D0x6de290, dest=3Ddest@entry=3D0x6e37f0,
start=3Dstart@entry=3D99, count=3Dcount@entry=3D63743) at JsStr.c:731
731               *(source->string + counter + start *
source->unit_size);

NOTE: id000001 cannot be reproduced on git master, but id000005 still
crashes it, so they probably are separate issues after all.

id:000003
id:000004
Program received signal SIGSEGV, Segmentation fault.
proc_query (raw=3D0x6de5d0, ect=3D0x7fffffffd940, sock=3D0) at MaraDNS.c:26=
15
2615        ip =3D htonl((z->sin_addr).s_addr);

This is after 58 AFL cycles.

It will be worth retesting with ASAN enabled.

Cheers,
--=20
Ond=C5=99ej Sur=C3=BD <ondrej@sury.org>
Knot DNS (https://www.knot-dns.cz/) =E2=80=93 a high-performance DNS server
Knot Resolver (https://www.knot-resolver.cz/) =E2=80=93 secure, privacy-awa=
re,
fast DNS(SEC) resolver
V=C5=A1e pro chleba (https://vseprochleba.cz) =E2=80=93 Mouky ze ml=C3=BDna=
 a pot=C5=99eby pro
pe=C4=8Den=C3=AD chleba v=C5=A1eho druhu

On Sat, Nov 12, 2016, at 09:39, Ond=C5=99ej Sur=C3=BD wrote:
> Hi,
>=20
> while playing with fuzzing the DNS servers with AFL (2.35b) I found a
> remote crash bug in MaraDNS 2.0.13 js_readuint16. It can be also
> reproduced using https://github.com/samboy/MaraDNS/ master branch.
>=20
> Attached is patch to allow the fuzzing (it overrides getudp() with
> read(0, ..)), the input data that crashes MaraDNS, and the bt full
> output.
>=20
> Please assign CVE, I would provide a patch, but MaraDNS code is
> extremely hard to navigate for me, so I'll leave the fix for the code
> author.
>=20
> AFL has finished only 1 cycle (and found the 1 unique crash), so I'll
> keep it running for a while.
>=20
> Cheers,
> --=20
> Ond=C5=99ej Sur=C3=BD <ondrej@sury.org>
> Knot DNS (https://www.knot-dns.cz/) =E2=80=93 a high-performance DNS serv=
er
> Knot Resolver (https://www.knot-resolver.cz/) =E2=80=93 secure, privacy-a=
ware,
> fast DNS(SEC) resolver
> V=C5=A1e pro chleba (https://vseprochleba.cz) =E2=80=93 Mouky ze ml=C3=BD=
na a pot=C5=99eby pro
> pe=C4=8Den=C3=AD chleba v=C5=A1eho druhu
> Email had 3 attachments:
> + maradns.btfull
>   5k (application/octet-stream)
> + allow-fuzzing.patch
>   2k (text/x-patch)
> + id:000000,sig:11,src:007564,op:havoc,rep:32
>   1k (application/octet-stream)
