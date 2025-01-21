Received: (qmail 27751 invoked by uid 550); 21 Jan 2025 20:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11943 invoked from network); 21 Jan 2025 18:56:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1737485784; x=1738090584; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7d3s1c8OcRxQc0CKU2rF+YkicJmTqNxgUcKmBE7JKqQ=;
        b=ZN/LwdpRZAsuR0NHsOBL5+tcsSfVTSahnYdTtPK0FxiqifT0Kt1jJmgwdCPniX+vWB
         GxGVFJSRbheTdsybAuQyhno1Tgqz1CC54mRYsUYYFKICv8kDgzWR6ZBWgXPKNgkVz7a5
         pgqgjRqnYJHPGuPvi7HJOD8ySJP1t1/Az7Bp3grPpDm0zJpYIPbqCc1vpqHxbwbivaXr
         cX1F+GhDpFKl+fw1NWvJZY5a3Krxj0En+6JLg3UzPWmxOXaNTCOhiO6ziFwdhAriW6o4
         J42lyf1dQNQJeckZa58AN9hlg2fD4t9i1Nl7uey6mJEVc2029L4mDNHZit5pJWOI3dZU
         3CJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737485784; x=1738090584;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7d3s1c8OcRxQc0CKU2rF+YkicJmTqNxgUcKmBE7JKqQ=;
        b=KXyoX4AFqfgROu+f9ROpO8ccYwQLzLDsBlvhpNcr6IGq+p4PBCgTRYUuESH23b1Nsv
         28d8f7CEWnaj9ri25wWTWH9+s8xJ6NAwglBg49rUYgmFEIW/9k8Sg/CEeCeWETEoLTuM
         NhmpvFAuqC2ay7WtVGopLar7RSYjjsGtpqEmZGlDIRVBuODPjVDwrZvTrAC2sgkhGBh2
         reKkymy6+7ItHtmFAhUFGy/ksCf5y4f1vPY2lpF27Q9vW9q1ndS1jkgBObViY1DXL968
         SB7VhoOs/dfQaPCDl1cv9EBh/0iGddEA6A4EisMg5NgbQ/aYCGHNO6T8+jAYFP/Vo8rW
         QYNQ==
X-Gm-Message-State: AOJu0YyKTeXNAVCMVviJIBk0CgIVvt2wpNX8tr4znYoCbC6SlVfYWUJM
	7iqmu0mI5wclfdcwuMuJcw7yX0ODd+Ue5HVznlBoH7oR8n4e2mbgmnMtWR1uFPIZCkTM9josnIy
	iajO1cwzgNL8rtYkv9Q==
X-Google-Smtp-Source: AGHT+IGRGG4350A1oI3JReslhHy/HDrAz0mg2aGdnDCdnT3JGiE8V54l9VDNB8aIymBQECicGbYFpUWbzA==
X-Received: by 2002:a05:6808:2e89:b0:3eb:6bf8:800a with SMTP id 5614622812f47-3f19fc4dbebmr12267129b6e.3.1737485784094;
        Tue, 21 Jan 2025 10:56:24 -0800 (PST)
Date: Tue, 21 Jan 2025 10:56:23 -0800 (PST)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <759a3250-afa3-4bcd-81b8-dd3068242eddn@googlegroups.com>
In-Reply-To: <c39f09ab-8040-40a7-a97c-bf0bb8399599n@googlegroups.com>
References: <29f14bf0-e6fa-4579-9a1b-f9487fff45fan@googlegroups.com>
 <c39f09ab-8040-40a7-a97c-bf0bb8399599n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_397702_902387590.1737485783756"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, January
 2025

------=_Part_397702_902387590.1737485783756
Content-Type: multipart/alternative; 
	boundary="----=_Part_397703_236347485.1737485783756"

------=_Part_397703_236347485.1737485783756
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: ter=C3=A7a-feira, 21 de janeiro de 2025 =C3=A0s 15:56:11 UTC-3
Assunto: Re: Node.js security updates for all active release lines, January=
=20
2025
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The planned security releases are now available. You can read more about=20
the details at=20
https://nodejs.org/en/blog/vulnerability/january-2025-security-releases

Em ter=C3=A7a-feira, 14 de janeiro de 2025 =C3=A0s 16:27:10 UTC-3, Rafael G=
onzaga=20
escreveu:

The Node.js project will release new versions of all supported release=20
lines on or shortly after January 21, 2025
For more information see:=20
https://nodejs.org/en/blog/vulnerability/january-2025-security-releases


------=_Part_397703_236347485.1737485783756
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: ter=C3=A7a-feira, 21 de janeiro de 2025 =C3=A0s 15:56:11 UTC=
-3<br />Assunto: Re: Node.js security updates for all active release lines,=
 January 2025<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googl=
egroups.com&gt;</span><br /></div><br /><br />The planned security releases=
 are now available. You can read more about the details at=C2=A0<a href=3D"=
https://nodejs.org/en/blog/vulnerability/january-2025-security-releases" ta=
rget=3D"_blank" rel=3D"nofollow">https://nodejs.org/en/blog/vulnerability/j=
anuary-2025-security-releases</a><br /><br /><div><div dir=3D"auto">Em ter=
=C3=A7a-feira, 14 de janeiro de 2025 =C3=A0s 16:27:10 UTC-3, Rafael Gonzaga=
 escreveu:<br /></div><blockquote style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">The Node.js proje=
ct will release new versions of all supported release lines on or shortly a=
fter January 21, 2025<br />For more information see:=C2=A0<a href=3D"https:=
//nodejs.org/en/blog/vulnerability/january-2025-security-releases" rel=3D"n=
ofollow" target=3D"_blank">https://nodejs.org/en/blog/vulnerability/january=
-2025-security-releases</a><br /></blockquote></div></div>=

------=_Part_397703_236347485.1737485783756--

------=_Part_397702_902387590.1737485783756--
