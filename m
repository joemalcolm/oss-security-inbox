Received: (qmail 32703 invoked by uid 550); 16 Jul 2025 09:48:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28529 invoked from network); 15 Jul 2025 22:39:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1752619149; x=1753223949; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LegplgykZJRT0XpxAjxr8Kpe3zLo2A4VN21DY+Nduyw=;
        b=df6xzYs40ZL3E5X35ss3MnebEfCN9ir3WdiptOJHr2YT6fsa7NlAz6CSFM1yX0zFPf
         w49FZ9B2DSfCljP8NdiqefaDBrZ97nXCaYysefjy2CQYhE/CXM71M3i1IC7MlkZ6s9NF
         Y1l1OTw2iUa2E/Thbc9VVyuyvxImrKtH9rAOHRYUKS8mBXYQ9w04PZogcj4EfM4ByI5g
         CTHe2wCpw0Z7C9YfizlZdAsng3rGk4emu45LLRa4htWB+T0l0dXHtKBZK8bTPJ0HYMw+
         P0kT6Y33kAHcSqsDvHA81fUzFNgdZ1eB0OyFGWgBJB4t7QBaYNl934qUCgwC9Ub/hkrT
         9GiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752619149; x=1753223949;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LegplgykZJRT0XpxAjxr8Kpe3zLo2A4VN21DY+Nduyw=;
        b=ZAv50VVdRMrs5ozYI1GXoITXJUB/PC/RcFaRATJuXfoBfYGB/GCXefSvPNvEdIje8D
         9vyznHVRhya7ZEgL5DaJ984adqrgbNEDyOA0yg66sHd6pAKlCdoOQhzCY9d9IhJB4E2w
         zngbg8IJBglzwTJ+LJZV6P5wImpG1rF7283TyVHvQ2JuFtA4oOGOnQUHp+Nq6wSa72cc
         HbgdAHnmNH1dqqRu7mSRiM9aGIMrjW+dGazjc8LyRhkDzdq/chY61qHkabkw3bFrT4Tj
         NrBia8ZfDPErIkt9jr5Jl0FlVFmgq6AfWGmWIOBoo8Z4cctb7yAKFd3lOrrLM6SWHKL3
         DTjg==
X-Gm-Message-State: AOJu0YzegsTxm68GJzQwV3FQPa6Vz9fVhrywyBiiyZEVkO61ENV9fHCo
	oFgsJ6uu9rW1ZA4KNA9mDlRa6ds9ho/2od5Rk+9aJ3nL58qQ6glGVhXTkFepwbz0oT8ygFgv9Ve
	F2c+sQ+891Hx6DI7BkX7FaA==
X-Google-Smtp-Source: AGHT+IECGcTM/Kt4WTXUP6eNaKtzrfq7lDkrE8QREK6wE6bHvQwXCoBk1Zhq10T0q/TJ/lQADWB6yfK/2A==
X-Received: by 2002:a05:6808:2120:b0:41c:e002:9bee with SMTP id 5614622812f47-41d038d83a9mr357709b6e.15.1752619148708;
        Tue, 15 Jul 2025 15:39:08 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:39:08 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <cddfe5d3-7852-4dd7-b72a-a66eaad89ce3n@googlegroups.com>
In-Reply-To: <d3e03d37-ce0e-4aed-a060-c736fda4f073n@googlegroups.com>
References: <30ff7c11-717d-479a-9c49-356a796c20abn@googlegroups.com>
 <d3e03d37-ce0e-4aed-a060-c736fda4f073n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_36432_1961546164.1752619148492"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, July
 2025

------=_Part_36432_1961546164.1752619148492
Content-Type: multipart/alternative; 
	boundary="----=_Part_36433_11833453.1752619148492"

------=_Part_36433_11833453.1752619148492
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: ter=C3=A7a-feira, 15 de julho de 2025 =C3=A0s 19:38:50 UTC-3
Assunto: Re: Node.js security updates for all active release lines, July=20
2025
Para: nodejs-sec <nodejs-sec@googlegroups.com>



The planned security releases are now available. You can read more about=20
the details at=20
https://nodejs.org/en/blog/vulnerability/july-2025-security-releases

Em ter=C3=A7a-feira, 8 de julho de 2025 =C3=A0s 12:14:03 UTC-3, Rafael Gonz=
aga=20
escreveu:

The Node.js project will release new versions of all supported release=20
lines on or shortly after July 15th, 2025

For more information, see:=20
https://nodejs.org/en/blog/vulnerability/july-2025-security-releases/


------=_Part_36433_11833453.1752619148492
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: ter=C3=A7a-feira, 15 de julho de 2025 =C3=A0s 19:38:50 UTC-3=
<br />Assunto: Re: Node.js security updates for all active release lines, J=
uly 2025<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegrou=
ps.com&gt;</span><br /></div><br /><br /><br />The planned security release=
s are now available. You can read more about the details at <a href=3D"http=
s://nodejs.org/en/blog/vulnerability/july-2025-security-releases" target=3D=
"_blank" rel=3D"nofollow">https://nodejs.org/en/blog/vulnerability/july-202=
5-security-releases</a><div><div><br /></div></div><div><div dir=3D"auto">E=
m ter=C3=A7a-feira, 8 de julho de 2025 =C3=A0s 12:14:03 UTC-3, Rafael Gonza=
ga escreveu:<br /></div><blockquote style=3D"margin: 0px 0px 0px 0.8ex; bor=
der-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">The Node.js pro=
ject will release new versions of all supported release lines on or shortly=
 after July 15th, 2025<br /><br />For more information, see:=C2=A0<a href=
=3D"https://nodejs.org/en/blog/vulnerability/july-2025-security-releases/" =
rel=3D"nofollow" target=3D"_blank">https://nodejs.org/en/blog/vulnerability=
/july-2025-security-releases/</a></blockquote></div></div>=

------=_Part_36433_11833453.1752619148492--

------=_Part_36432_1961546164.1752619148492--
