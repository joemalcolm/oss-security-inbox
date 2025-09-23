Received: (qmail 20233 invoked by uid 550); 23 Sep 2025 02:21:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7394 invoked from network); 23 Sep 2025 02:18:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758593903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QgzFZJg6StVvig1JOWNtOUqGWd4o2FRBTtLmQYr7xKM=;
	b=NvVgbmxH9uwmqGcGK/Pz1EUZAG/qlafYmJ+oe7cgx3Tecs9LEuJR79e15liSXLpAG6oZ3l
	QzFrMGIPd9bnULYQ7Ro0v/RJV+AeRSM99hjypKpSV+Kd9oyAfNQh2/FsAoeGrIAp45W+9M
	fqbTG2vnlzX+DyKQZXoJpAaUFQdypTM=
X-MC-Unique: ztd-lgrTP2CKcEVavmo18g-1
X-Mimecast-MFC-AGG-ID: ztd-lgrTP2CKcEVavmo18g_1758593898
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758593898; x=1759198698;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QgzFZJg6StVvig1JOWNtOUqGWd4o2FRBTtLmQYr7xKM=;
        b=nX6omL+YbfLTERJMzfxyQmuLwpODpkdQ2Ijwrv6PyVrYfxFlx5xAWPY/6Y7yko/grB
         VwCZ/oHjKflEflok2qK+rdy3hSn9t3pXn4PcHs4LJxQ0oA8CTd3n2RNxVoS7lNNO74PM
         ATpQ3/8edNxlFe8AixtFHwLshjN4gPNVZPn/NmxMBrzp/77+/3CSoKj9BagK66ahm3vD
         p2vnsiUKtzRpIom7IiERZHvgaHtkL/iC4iloxcdLOrwnR65iDQpFMl+nBx+/+tm+H1OF
         3F/SJ68fXqzkVg08m2sVVNji3Kn20Q64vEfJZE0ziKryoRx4UsnQtSw7fcjN20xe+ieR
         E9+A==
X-Gm-Message-State: AOJu0YwBKuQfktJ2/jkByZ0mE/d9Lo2TA9+wRU8gh6oRDdHrrFmGoSUA
	fwxmd+5iKeF9yGZDiaiWURKU+zzUVeppm42JZmzgk5U6ByoNECYIpXoC2D+LSOTcZpPyyhouHEj
	JmpOeoUlkROd8MvQ+4ljIOu/dD1WD8G+tpNNawago6BW6d8QmVPkKkPni6XjqoQhHXg6DA6Vc2R
	aAh2r/FZahTpTOjMAvHXWsuXw2JU2N6WyzBdXH/48XOEsl4LHaKRFP
X-Gm-Gg: ASbGncuFTw9rT+TLsDqKJISzzzRNtwjLNqqDyI8CGKlcYf4nyU/gZXWbYu1aJwUMSA5
	YEFQr9LuEgn1/KBcA0xO65i8BI6qbQ9JY4xTBdb9sOZqM64q9dHt+3PKr/sJL4H7DmD/srHdOTd
	nUaIzR+IfHj6kOOFTzIduRPljCBhhZgBD7eVwZV9/bIwgeJ4Ga5mBbTQ==
X-Received: by 2002:a05:6122:1daa:b0:544:9f73:9b46 with SMTP id 71dfb90a1353d-54bcb1c1485mr345216e0c.16.1758593898311;
        Mon, 22 Sep 2025 19:18:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSPzfRmW/3rc+T7yDj4TiAnD8L//qIhty5xZ2DXnQ/lNA7eW2/O2ps2Fwj7ugmbFCrmY05Hrfy7Bi+p1ViDFM=
X-Received: by 2002:a05:6122:1daa:b0:544:9f73:9b46 with SMTP id
 71dfb90a1353d-54bcb1c1485mr345214e0c.16.1758593897970; Mon, 22 Sep 2025
 19:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <ff3b453-2b4-b451-70a7-a6bc68887437@gathman.org>
In-Reply-To: <ff3b453-2b4-b451-70a7-a6bc68887437@gathman.org>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Mon, 22 Sep 2025 23:18:02 -0300
X-Gm-Features: AS18NWDj5rTv6avOpkwsOPJYVH1-RgZeIZZ5YTfTxpFhqc_KhdCGxKA6IxfVnO4
Message-ID: <CAEFhzs8i-qrO2pmXDA_+JG4T=3j1dPVU7k-H1VO1r82+Mw9r5Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: openssh@openssh.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WegeS5SVwUVHRkLYqq8JR_IsLgiRZdrfqIXTQGQsApc_1758593898
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000097d167063f6e8ce4"
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

--00000000000097d167063f6e8ce4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Damien,

Red Hat CNA can help you with that.

Please send us a message at rootcna-coordination@redhat.com.

We can guide you through the process and answer any questions you might
have. Feel free to copy anyone you'd like too.

Regards,

On Mon, Sep 22, 2025 at 7:53=E2=80=AFPM Stuart D Gathman <stuart@gathman.or=
g> wrote:

> On Mon, 22 Sep 2025, Damien Miller wrote:
>
> > It is based on this paper "Mayhem: Targeted Corruption of Register and
> > Stack Variables" by Adiletta, et al.
> > https://arxiv.org/pdf/2309.02545
> >
> > Firstly, we do not consider it to be the application's responsibility
> > to defend against platform achitectural weaknesses. We're happy
> > to adopt platform measures (e.g. toolchain defences) where it is
> > possible to do so, but fundamentally it is the platform's job to
>
> Amen.  Plus, some of us prefer slower and reliable to fast and fragile
>
> Question: is this attack mitigated by ECC ram?  (It seems to be a weak
> RAM issue.)  The paper say no: "Further, [8] showed that ECC, a
> hardware-enabled error checking built into many memory devices, can also
> be bypassed."
>
> Question: will this vulnerability be incorporated in MEMTEST86?
>
> > Unfortunately, at no stage of the CVE issuance process was OpenSSH
> > contacted about this advisory either. This seems pretty suboptimal as
> > a process.
> >
> > Posting this for the record and in the hope that someone will help
> > get the CVE disputed.
>
> I have no clue how to help.  But will do so if informed.
>
>

--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

--00000000000097d167063f6e8ce4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Damien,</div><div><br></div><div>Red Hat CNA ca=
n help you with that.</div><div><br></div><div>Please send us a message at =
<a href=3D"mailto:rootcna-coordination@redhat.com">rootcna-coordination@red=
hat.com</a>.</div><div><br></div><div>We can guide you through the process =
and answer any questions you=C2=A0might have. Feel free to copy anyone you&=
#39;d like too.</div><div><br></div><div>Regards,</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Sep 22, 2025 at 7:53=E2=80=AFPM Stuart D Gathman &lt;<a href=3D"m=
ailto:stuart@gathman.org">stuart@gathman.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Mon, 22 Sep 2025, Damien Mil=
ler wrote:<br>
<br>
&gt; It is based on this paper &quot;Mayhem: Targeted Corruption of Registe=
r and<br>
&gt; Stack Variables&quot; by Adiletta, et al.<br>
&gt; <a href=3D"https://arxiv.org/pdf/2309.02545" rel=3D"noreferrer" target=
=3D"_blank">https://arxiv.org/pdf/2309.02545</a><br>
&gt;<br>
&gt; Firstly, we do not consider it to be the application&#39;s responsibil=
ity<br>
&gt; to defend against platform achitectural weaknesses. We&#39;re happy<br>
&gt; to adopt platform measures (e.g. toolchain defences) where it is<br>
&gt; possible to do so, but fundamentally it is the platform&#39;s job to<b=
r>
<br>
Amen.=C2=A0 Plus, some of us prefer slower and reliable to fast and fragile=
<br>
<br>
Question: is this attack mitigated by ECC ram?=C2=A0 (It seems to be a weak=
 <br>
RAM issue.)=C2=A0 The paper say no: &quot;Further, [8] showed that ECC, a<b=
r>
hardware-enabled error checking built into many memory devices, can also<br>
be bypassed.&quot;<br>
<br>
Question: will this vulnerability be incorporated in MEMTEST86?<br>
<br>
&gt; Unfortunately, at no stage of the CVE issuance process was OpenSSH<br>
&gt; contacted about this advisory either. This seems pretty suboptimal as<=
br>
&gt; a process.<br>
&gt;<br>
&gt; Posting this for the record and in the hope that someone will help<br>
&gt; get the CVE disputed.<br>
<br>
I have no clue how to help.=C2=A0 But will do so if informed.<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div>Pedro Sampaio | Red Hat Product Security</div><div>8515=
25C5A98E9DEB7E650ABDFAC8296FBC674B8F<br></div></div></div>

--00000000000097d167063f6e8ce4--

