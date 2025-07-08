Received: (qmail 10065 invoked by uid 550); 8 Jul 2025 15:21:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16056 invoked from network); 8 Jul 2025 15:16:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1751987780; x=1752592580; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BRb/OqZ3q5HDaYPqJLfltLOXg53fE9YT3XhvPzh8PmI=;
        b=Z8TwLpE21KOwsTFK/VQrzaJTeNbzl8cNPZUVsimoHM9pZTCF4R8Q72xH7zxJJlETFg
         SLiU6oD8Cbjl78AoLzL1BVXVDn2fLuG11UCL30iuiC6qbMZxy5Pg8b0yg+7fWtaGSCMk
         mXBQEtiBhxc51rs5USol/3FHIvr4a9bFCPF/IjKpjPFrQkstvgAozmYIMba/k40xU8Cc
         5LvV7NQvDD1UR7wr/EzWf68iqU/QGzKZyrm0Qt+WQnPzmTm7vhgI8OYbbk7+g5xsNcpm
         mIPjsMcsb5ZpdE+Eywpkyo8SDhe/zuj2sKeSjil4EqSEBTDRRmros1L/QWiFrmxYmtk6
         i+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751987780; x=1752592580;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BRb/OqZ3q5HDaYPqJLfltLOXg53fE9YT3XhvPzh8PmI=;
        b=s6XGwv41I97y8+TXhjY8EK9nJe0T2Tk8vqjs4p1BqbUL1wDoKs0lrk/pqvsHfZ33AS
         5ouUFgiS2qHgdHJR6n05ZQnsWNEBzjhVVkrEy2ofE7mHF9ZCAU3oyvcyj1CTpWzwYhnH
         lzpFezUiFmnjSqLKD2FJ+QM1jA+wJYv+9u+cPiJgU6eLm7SDJ+NGDNVnvaRcD91DNd1r
         XWI2bDgjaQTHIcZUzmvuXsEddJC0pkLTyBkoglg88a7kttFEFKg1xfZ2jXxqa9W8JJy6
         A124Dm0MC1eNAJVGe5IfqjIofaC0TBullpj14RvkH9r8cKMp4xjuQiPqWtx9rKacWzao
         vuRg==
X-Gm-Message-State: AOJu0Yyo8IeOyws0h0IP6pslTHqHdo6nP8s2xgaGVZOJa3rozeYVyZJU
	h+lc+R8M7pUmdIfPJoUXyJpMYNRsgRCUZTmPg8ByXKmMSkoqrzutfp8guUUqPjz5zSZtetsERMA
	3yrX/Zt2pm0ouD7sWA4Sd6g==
X-Google-Smtp-Source: AGHT+IEn5VJcYaBP0h+66f42Qfet7Iu5pYvwyMzhHkwjkrn1K12hEn4w0T5TuSUR8l5o60hSmIq0XrvJ5A==
X-Received: by 2002:a05:6808:4f4e:b0:40b:2566:942c with SMTP id 5614622812f47-4125ec88bd9mr137977b6e.32.1751987779692;
        Tue, 08 Jul 2025 08:16:19 -0700 (PDT)
Date: Tue, 8 Jul 2025 08:16:19 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <ce22eb2a-b13c-4a58-9175-6900615b8187n@googlegroups.com>
In-Reply-To: <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
 <14ea0e60-36d4-4267-8614-3d6b455b7fabn@googlegroups.com>
 <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_478632_32333107.1751987779397"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, May
 2025

------=_Part_478632_32333107.1751987779397
Content-Type: multipart/alternative; 
	boundary="----=_Part_478633_1334486042.1751987779397"

------=_Part_478633_1334486042.1751987779397
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: quarta-feira, 14 de maio de 2025 =C3=A0s 18:47:12 UTC-3
Assunto: Re: Node.js security updates for all active release lines, May 2025
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The planned security releases are now available. You can read more about=20
the details at=20
https://nodejs.org/en/blog/vulnerability/may-2025-security-releases

Em quinta-feira, 8 de maio de 2025 =C3=A0s 15:43:48 UTC-3, Rafael Gonzaga=20
escreveu:

The Node.js security release will happen on or shortly after May 14th 2025*

Em quinta-feira, 8 de maio de 2025 =C3=A0s 15:42:50 UTC-3, Rafael Gonzaga=20
escreveu:

The Node.js project will release new versions of all supported release=20
lines on or shortly after May 14th, 2024

For more information, see:=20
https://nodejs.org/en/blog/vulnerability/may-2025-security-releases


------=_Part_478633_1334486042.1751987779397
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: quarta-feira, 14 de maio de 2025 =C3=A0s 18:47:12 UTC-3<br /=
>Assunto: Re: Node.js security updates for all active release lines, May 20=
25<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com=
&gt;</span><br /></div><br /><br />The planned security releases are now av=
ailable. You can read more about the details at <a href=3D"https://nodejs.o=
rg/en/blog/vulnerability/may-2025-security-releases" target=3D"_blank" rel=
=3D"nofollow">https://nodejs.org/en/blog/vulnerability/may-2025-security-re=
leases</a><br /><br /><div><div dir=3D"auto">Em quinta-feira, 8 de maio de =
2025 =C3=A0s 15:43:48 UTC-3, Rafael Gonzaga escreveu:<br /></div><blockquot=
e style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, =
204); padding-left: 1ex;"><div>The Node.js security release will happen on =
or shortly after May 14th 2025*</div><div><br /></div><div><div dir=3D"auto=
">Em quinta-feira, 8 de maio de 2025 =C3=A0s 15:42:50 UTC-3, Rafael Gonzaga=
 escreveu:<br /></div><blockquote style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">The Node.js proje=
ct will release new versions of all supported release lines on or shortly a=
fter May 14th, 2024<div><br />For more information, see:=C2=A0<a href=3D"ht=
tps://nodejs.org/en/blog/vulnerability/may-2025-security-releases" rel=3D"n=
ofollow" target=3D"_blank">https://nodejs.org/en/blog/vulnerability/may-202=
5-security-releases</a></div></blockquote></div></blockquote></div></div>=

------=_Part_478633_1334486042.1751987779397--

------=_Part_478632_32333107.1751987779397--
