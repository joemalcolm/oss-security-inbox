Received: (qmail 3956 invoked by uid 550); 14 May 2025 23:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17422 invoked from network); 14 May 2025 21:47:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1747259253; x=1747864053; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ENedePvmPX5piuOB2aD7Bf5sQ609EaAP9TblyVW4B1c=;
        b=juM3KEuOWpv0Hrlh9IOqhovt7ucSVUJwPIWHJf5pBoATJBJhyKZ3+wHjyVW8Arh2fY
         Yua+qCb4lQ5803FzXCT6jCNv7ukOfJRXoXb0V+Eyqc1HkZLCjHq5oINyiJKvPXgwYOit
         1xGFBdRmCGEjmKUF077Mlu8ovTEukMes/raihbyZChQLpEbPPYFSy58KNz2yxXifFPCj
         JxggqSoHU3/SyH7OKaERbBJCl/LhsTcf1acOAF9qTH3NDXQOTtEZfy5VJrTFDB+gQYqp
         fcAZ/5xmGliDFu164VyVNKP4GoGlRfj0kfN5fsgY/yGcEzGf2vRr1n+rgYbUnC0sJPyz
         r2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747259253; x=1747864053;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ENedePvmPX5piuOB2aD7Bf5sQ609EaAP9TblyVW4B1c=;
        b=lrC4t20eIG2OKfJMwMO/T9zzWHJkKAl4+CEzFRmJMVBX9SV6o4H55dmOvpZBOJ+bNC
         VWUcunGJ1uS30Cc2vFhiygAQg8mKghhLDse/wW5rEUgKIb6Wd6g+ykmPh+p4CpX0RM+b
         HCQELpQgQDSNiEdR3mx3KxY1OYyrcQUnMJipGFHw74lzJ4Q69BAhyRAojrxmnfRaqByJ
         QbY31ar0cNny5++PzW1Xp/VIyLkt0KBmq6Z0dFpvJRFSUGPaMQHiMmmvDPaSdE/y/qgq
         dpnMUfOszCae17zvmdH0Tg82sZeETniVH9U+qIukCfD3zZExHU8bm9wN8DIxyjVGnHeV
         iIBQ==
X-Gm-Message-State: AOJu0YxoFxGgrhEFUUur7ZzDgGJi0AzNvLVeYwcctiHhIdhs5B/wzniL
	tB9CdUx+afvDxCU+XX4oyeQeZ+A/DLoH35PGwc9X+d5N5PdFhBm5wW6Y+QXDZax5kLkOMI0Oosd
	7r6PQaqpf8XTqslD/LQ==
X-Google-Smtp-Source: AGHT+IGytXwaWe2gY6DyKFZ8YrapXs3q1InBLKw38iIpiibmTuWzK3MrioEagCef+9byL4Laqg3vaBNkhw==
X-Received: by 2002:a05:6808:80a9:b0:3fe:b0ad:f92a with SMTP id 5614622812f47-404c1fb1784mr2950104b6e.6.1747259253250;
        Wed, 14 May 2025 14:47:33 -0700 (PDT)
Date: Wed, 14 May 2025 14:47:32 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <ea9fe7af-8b48-429f-8256-c0e378cbcf6en@googlegroups.com>
In-Reply-To: <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
 <14ea0e60-36d4-4267-8614-3d6b455b7fabn@googlegroups.com>
 <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_376194_2011865860.1747259252860"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, May
 2025

------=_Part_376194_2011865860.1747259252860
Content-Type: multipart/alternative; 
	boundary="----=_Part_376195_624799855.1747259252860"

------=_Part_376195_624799855.1747259252860
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


------=_Part_376195_624799855.1747259252860
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

------=_Part_376195_624799855.1747259252860--

------=_Part_376194_2011865860.1747259252860--
