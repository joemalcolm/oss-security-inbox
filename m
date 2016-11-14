X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6045" "Monday" "14" "November" "2016" "07:03:04" "+0100" "=?UTF-8?B?T25kxZllaiBTdXLDvQ==?=" "ondrej@sury.org" "<1479103384.3374846.786740337.305C3E3C@webmail.messagingengine.com>" "165" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" nil nil nil "11" "2016111406:03:04" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" (number mark "U       ondrej@sury. Nov 14  165/6045  " thread-indent "\"[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master\"\n") "<1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>" ("<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>" "<1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17659 invoked by uid 550); 14 Nov 2016 12:53:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19762 invoked from network); 14 Nov 2016 06:03:16 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=sury.org; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=mesmtp; bh=wQGeAsjK09Tx/NsnOSb8Krn2FJ
	M=; b=UknkN0u6igMbtYXVFQVZY4xB/gbw1zmtyNz3msCnUyyeDgswRtfnt0OCfP
	qzxYo4jGVYoW05eW5i7l6rA6mwzNev4zaQVn6rnnnJ0lZGFX7wAzUUD1bg+xJkx7
	gu6OHzoxjtsoDwzsoqsTiuNC2U4y/FGoV3XHeilvd30Wt5soc=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=smtpout; bh=wQ
	GeAsjK09Tx/NsnOSb8Krn2FJM=; b=tPluHvF9SMws2Olbc06mIeQDa1yWolQauT
	r5ixJpaHaXGskpCV4+nz0Q9JQBEWKpz3Y3zTHJkbTUzuxnJrk2bRuzvnUJ267nGv
	SQRiybkJuFAdpqdIE4T6vFFDDZJGPKPNamrYU1lc4gyZCWRGJUz4VfYCVZfZG4FV
	qJ1CZUyyw=
X-ME-Sender: <xms:mVMpWLF0XBUrdnrwAevc1QBX0deHKNdih3PLEetpF7eM5t2EnuSP6g>
Message-Id: <1479103384.3374846.786740337.305C3E3C@webmail.messagingengine.com>
From: =?UTF-8?Q?Ond=C5=99ej=20Sur=C3=BD?= <ondrej@sury.org>
To: oss-security@lists.openwall.com,
 Sam Trenholme <sam-k6mymjcnjpz3fmkieotlt7rbgvqt98qy@samiam.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: multipart/mixed; boundary="_----------=_147910338433748460";
 charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-95dfd397
Date: Mon, 14 Nov 2016 07:03:04 +0100
In-Reply-To: <1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>
References: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
 <1479102804.3372667.786730489.054A352E@webmail.messagingengine.com>
Subject: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master

--_----------=_147910338433748460
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

And attachments.

O.
--=20
Ond=C5=99ej Sur=C3=BD <ondrej@sury.org>
Knot DNS (https://www.knot-dns.cz/) =E2=80=93 a high-performance DNS server
Knot Resolver (https://www.knot-resolver.cz/) =E2=80=93 secure, privacy-awa=
re,
fast DNS(SEC) resolver
V=C5=A1e pro chleba (https://vseprochleba.cz) =E2=80=93 Mouky ze ml=C3=BDna=
 a pot=C5=99eby pro
pe=C4=8Den=C3=AD chleba v=C5=A1eho druhu

On Mon, Nov 14, 2016, at 06:53, Ond=C5=99ej Sur=C3=BD wrote:
> Hi all,
>=20
> AFL found another 5 crashes totaling to 6 unique crashes. Looking at the
> backtraces it
> looks like, it's just 3 unique crashes:
>=20
> - js_readuint16
> - js_substr
>=20
> - process_query -> this in fact looks like stack smashing, since it
> crashes on htons in an unrelated place
>=20
> id:000000
> id:000002
> Program received signal SIGSEGV, Segmentation fault.
> js_readuint16 (js=3Djs@entry=3D0x6de290, offset=3Doffset@entry=3D4) at
> JsStr.c:1064
> 1064               (*(js->string + offset + 1) & 0xff);
>=20
>=20
> id:000001
> id:000005
> Program received signal SIGSEGV, Segmentation fault.
> js_substr (source=3Dsource@entry=3D0x6de290, dest=3Ddest@entry=3D0x6e37f0,
> start=3Dstart@entry=3D99, count=3Dcount@entry=3D63743) at JsStr.c:731
> 731               *(source->string + counter + start *
> source->unit_size);
>=20
> NOTE: id000001 cannot be reproduced on git master, but id000005 still
> crashes it, so they probably are separate issues after all.
>=20
> id:000003
> id:000004
> Program received signal SIGSEGV, Segmentation fault.
> proc_query (raw=3D0x6de5d0, ect=3D0x7fffffffd940, sock=3D0) at MaraDNS.c:=
2615
> 2615        ip =3D htonl((z->sin_addr).s_addr);
>=20
> This is after 58 AFL cycles.
>=20
> It will be worth retesting with ASAN enabled.
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
>=20
> On Sat, Nov 12, 2016, at 09:39, Ond=C5=99ej Sur=C3=BD wrote:
> > Hi,
> >=20
> > while playing with fuzzing the DNS servers with AFL (2.35b) I found a
> > remote crash bug in MaraDNS 2.0.13 js_readuint16. It can be also
> > reproduced using https://github.com/samboy/MaraDNS/ master branch.
> >=20
> > Attached is patch to allow the fuzzing (it overrides getudp() with
> > read(0, ..)), the input data that crashes MaraDNS, and the bt full
> > output.
> >=20
> > Please assign CVE, I would provide a patch, but MaraDNS code is
> > extremely hard to navigate for me, so I'll leave the fix for the code
> > author.
> >=20
> > AFL has finished only 1 cycle (and found the 1 unique crash), so I'll
> > keep it running for a while.
> >=20
> > Cheers,
> > --=20
> > Ond=C5=99ej Sur=C3=BD <ondrej@sury.org>
> > Knot DNS (https://www.knot-dns.cz/) =E2=80=93 a high-performance DNS se=
rver
> > Knot Resolver (https://www.knot-resolver.cz/) =E2=80=93 secure, privacy=
-aware,
> > fast DNS(SEC) resolver
> > V=C5=A1e pro chleba (https://vseprochleba.cz) =E2=80=93 Mouky ze ml=C3=
=BDna a pot=C5=99eby pro
> > pe=C4=8Den=C3=AD chleba v=C5=A1eho druhu
> > Email had 3 attachments:
> > + maradns.btfull
> >   5k (application/octet-stream)
> > + allow-fuzzing.patch
> >   2k (text/x-patch)
> > + id:000000,sig:11,src:007564,op:havoc,rep:32
> >   1k (application/octet-stream)

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000000,sig:11,src:007564,op:havoc,rep:32"
Content-Id: <1479103367.3374830.04f7cd982fbfba55634021afb51a0f0b73356214.2E35434D@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000000,sig:11,src:007564,op:havoc,rep:32"

MTIxHAEUKR4BAAAAASwAAED59f75EAA=

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000001,sig:11,src:009775,op:arith8,pos:2,val:+6"
Content-Id: <1479103368.3374819.b3da26827df5ebf8b7390a9b39c1d2ef61036e33.570E1201@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000001,sig:11,src:009775,op:arith8,pos:2,val:+6"

MTBNAAAAAAABAAAAAQAAASwAABs=

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000002,sig:11,src:009794+007532,op:splice,rep:2"
Content-Id: <1479103368.3374845.7b4b403552dda6724b68e105af6e47b8d94592ce.46D02701@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000002,sig:11,src:009794+007532,op:splice,rep:2"

MkpHAAgAAAABAAAADAAQAAQKNQAC

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000003,sig:11,src:009819,op:flip1,pos:0"
Content-Id: <1479103368.3374852.72ee98253e01697094542ae6827622eda703a2b3.24688866@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000003,sig:11,src:009819,op:flip1,pos:0"

owBAAAAAAAABAAAAAQAAASwAABs=

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000004,sig:11,src:009854,op:arith8,pos:0,val:-29"
Content-Id: <1479103368.3374819.e0d8236060ea2045cbeaa40022a50e7da37c5875.131E6E90@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000004,sig:11,src:009854,op:arith8,pos:0,val:-29"

owBAAAAAAAABAAAAIwABAAEAACkC

--_----------=_147910338433748460
Content-Disposition: attachment; filename="id:000005,sig:11,src:009792,op:flip2,pos:2"
Content-Id: <1479103368.3374843.ce30c12735018e944add05f2b48bde03b7c18e04.31229F49@content.messagingengine.com>
Content-Transfer-Encoding: base64
Content-Type: application/octet-stream;
 name="id:000005,sig:11,src:009792,op:flip2,pos:2"

Ml1NAAAAAAABAAAAAQAAASwAABs=

--_----------=_147910338433748460--

