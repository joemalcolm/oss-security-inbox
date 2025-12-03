Received: (qmail 26432 invoked by uid 550); 3 Dec 2025 21:35:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11288 invoked from network); 3 Dec 2025 21:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764797620; x=1765402420; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NQuLOjzu7QdqF8GCVSurtoj9moS5KLtSRPujtJWkRlI=;
        b=nU0xEciyg6lVSxKgcpWx1S2aIHcDejaRNaEMOaA/Pbhjx6k4nISVyTluBPrA0udf9j
         lqNXfCR6tyG61v9RtM9OXuqUNd/xiWQUIitH0P9e4pUBUeUU2anv1EsXd0E36aVgrgYL
         jnHo3PSP2J3fmlfgaUybM2w849Cqskjg9nnBDPB9cVwJGasWF4/KNFZV4sGn5mpMsd8t
         7nS6RYyxsoJmNDfVuVbTrRRNE65IOfM4/GRbkNOIgFXf76Q8hwO95N0cNc76XlncV4Ad
         Rr4k9h7HNIXdMLlmBEdiy88MEf/0/JgfyWwAi1WnaWctOfhe7Brt7GTeLClkl6NUllRC
         CvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764797620; x=1765402420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQuLOjzu7QdqF8GCVSurtoj9moS5KLtSRPujtJWkRlI=;
        b=bOGw74CuppA5UKQVde0QO08I3w2KxUn1CilmUPzql0cYkPNmjr7iNqS+yN4/fnQRmZ
         B0lgLT4CSnH6Gh1NNGC/yIdDvUwUN2Xs2aYmCJvelSfY5dUkYKPSy2ENptx2cIUUiZGM
         xtTFzyZxbqx+gSo43FdoPCcekS+tFGYo/CkhSUQguuMg2FuSDqb1zEO2ZPe7vPzrAqGL
         MNab4xsB9iQKA9kktumdUTKmbgR64KP5pxbslop0WA1HyewCQHRCnnk9sf02Bwq9u1lQ
         /lc3WYcim7xpnbIJAbD/lzyj69ngIpw64AgWJ3B94xdMAlpyYYs2zPXDQvqUG6pQeYC2
         TzvQ==
X-Gm-Message-State: AOJu0YyDBuDDFTK2v/Y9XwmK1CezdLVAoqEXfMOeRMVIX4dZVTcR/lzQ
	55v/zUqTJtRFyNtW6vy0ZVGb4EXKXQJ2Pb6AEAq+BoxOwv9ODd4eUCrKS+3rJt0D3U4rAJPGLbV
	WOavGsEwVcUBlBxgljiteXrd4RZZSD44=
X-Gm-Gg: ASbGncu+ozwmL/jOv/kevKPkOzJP1eodrZTSo8SHlgfPanjHCw7FZb3MBef2BDEaOHJ
	Qb3NL9cbR8u7VqVglzh836VOdanQlgUK4FQcI9ZE+skzfTHOFUW+p81GZiuxglsNCYQzcXdbR0Q
	5yLUFo+9wacu3eptoEaU3pfGtkJmePcxHTHkg1YQTjcaMzLpAcrPJ3qPK3q2Y9tO972nqjzm7lL
	lM+ZxaVUlzmuD30hXEPl/nLak8GucJ31SRzUBQAP9O0ENplzvcMjHcbpuvFHVxtdQmhr4YW84iZ
	zHmMVr1afIzAJBvTCFowbwyuDv8NPGTRai4XgUYgPYQYMEyjLvt4Wwg=
X-Google-Smtp-Source: AGHT+IHNzFXKr7j1o5mvxvrBO9n9p6aORKlulbu775hKtk1IrgjSinKpECtVQYNgtA6BqcEeLC4Hj+TqFFaeDnH7+Ds=
X-Received: by 2002:a05:6808:1703:b0:450:4a1a:f2fe with SMTP id
 5614622812f47-4536e171afemr2138337b6e.0.1764797620095; Wed, 03 Dec 2025
 13:33:40 -0800 (PST)
MIME-Version: 1.0
References: <CAAoVtZwksfG-MFfhdamHt2SazD-n-_1HuZwXcRpRAJe_g3NDKg@mail.gmail.com>
 <7e93b4f6-2ccd-4859-97b4-d51d61b95694@oracle.com>
In-Reply-To: <7e93b4f6-2ccd-4859-97b4-d51d61b95694@oracle.com>
From: Cosmin Truta <ctruta@gmail.com>
Date: Wed, 3 Dec 2025 23:33:28 +0200
X-Gm-Features: AWmQ_blZnqkTV-ENmjgSl6xtEJSlT64T2za3kNA5hRF876SjQ_npNeAlJNPylXY
Message-ID: <CAAoVtZwm9yLRV_DgvVTmir8-eEfLxksUshTQ-EBpPf1Cz_Vf=A@mail.gmail.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>
Cc: oss-security@lists.openwall.com, Greg Roelofs <newt@pobox.com>
Content-Type: multipart/alternative; boundary="0000000000003f0e18064512f7e8"
Subject: Re: [oss-security] libpng 1.6.52: Out-of-bounds vulnerability fixed: CVE-2025-66293

--0000000000003f0e18064512f7e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[Cc-ing Greg Roelofs, who owns and maintains libpng.org]

On Wed, Dec 3, 2025 at 11:09=E2=80=AFPM Alan Coopersmith <
alan.coopersmith@oracle.com> wrote:

> Does this bug (and the recent bugs fixed in 1.6.51) not affect the older
> branches of libpng, or is the statement that "libpng 1.2.x continues to
get
> security fixes, as has 1.0.x for well over a decade" on
> https://libpng.org/pub/png/libpng.html no longer correct?

The good news is this: neither this bug nor the ones in the previous
v1.6.51 release affect those ancient libpng releases. What these bugs DO
affect is a thing called "the simplified libpng API", which was added in
libpng-1.6.0.

The bad news is this:

> https://libpng.org/pub/png/libpng.html

I have seen that page a thousand times, and... yet... OOPSIE!!

> Is the statement on https://libpng.sourceforge.io/index.html that the
older
> branches "ARE NO LONGER UPDATED" and were frozen in 2017 the correct one
now?

Yes, that is correct.

Sincerely,
Cosmin

--0000000000003f0e18064512f7e8--
