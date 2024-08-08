Received: (qmail 18335 invoked by uid 550); 8 Aug 2024 12:53:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32718 invoked from network); 8 Aug 2024 10:51:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1723114310;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lQX2gD5GwfJfDTx8hy75TObU5jSslZSg4iXNnxmmHsY=;
	b=QCTg8S2KJTqWnh20e3WI82Cy2EYsqLNZZ9fdV9GLFIKC0p1hCf0aAkMyvhDlpidT7RendA
	0YaXl0kQGnpuaU9+k+Sm9zoSucIgIzTibgcCmM6e3kppvR+TtJBRBYouLm8hKsJ6MC6Zop
	/KwPyNvmFCu017u5LGI3BvP+8qDE2nU=
X-MC-Unique: dyvVXowlOh2UKatWm4M6tw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723114308; x=1723719108;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/c/GqOmTjXFasQi3XdVX9KaCETMQRFVkriY3ZzQkPf4=;
        b=qz4ZlPhR4dOWPGBDTn4cmr0aZssktaXI3nU6jKnuf/Cg5Kl++/1dz5Hp/3Cc4E4q01
         Iyckq1JdNSYwPX1VebJiIK+LXVRwVhGeCstSCCi6fa4lcq0jda072t7slf1extOYwVtZ
         PbZYzPJv9pR+KPUqyOLouv5fPBBwB/t6USXk1BUYbV6VLysqVF3CYY7jeGw1MK78tusV
         9J6vtJpROHEQqco18Cp5hSYG35mGSP2jaxT2LKRoWlr9REwHm+AEzfUV7apptOGDS+/t
         MKVR+9vEltmXeiTR64bMGPhBNkFkZIn/DhhiONyS/G5ubhRBEh7ZjP4UIIDZrQZOy+Pe
         Iuvg==
X-Gm-Message-State: AOJu0YxShCUrg3Igt3xlVAJFLODZheuxfhBOyJAFbn+KNg8GTiEogfc3
	kcC44LCP6P+4wv0AFGo4laJua8sHaJJrXR/VIK3p1OqCI4d79f65Ycqme+u79lY7/utpfkyyd78
	Mvum57QXT5yPRq14m1Wh60jEvT6xVXzX9T70vduclDnL/tkPaVTyYIn/+6QBncVWaPYV/XtXSIw
	1QiTp1bW25KpWDtgRTM0niFrMFG5/vvNnmBoWBWaa497JmJwR2pg==
X-Received: by 2002:a5d:4f0a:0:b0:367:9904:e6b9 with SMTP id ffacd0b85a97d-36d2755fc57mr1039167f8f.44.1723114307775;
        Thu, 08 Aug 2024 03:51:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5oXSsHhn81+aPPRte3DIRSCVKyk1nCwsox20hJb1saAbD1udqiBgDPnege67WqsrNccZqTw==
X-Received: by 2002:a5d:4f0a:0:b0:367:9904:e6b9 with SMTP id ffacd0b85a97d-36d2755fc57mr1039147f8f.44.1723114307135;
        Thu, 08 Aug 2024 03:51:47 -0700 (PDT)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Date: Thu, 8 Aug 2024 12:51:35 +0200
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
 <20240807201640.1RD27ogN@steffen%sdaoden.eu>
To: oss-security@lists.openwall.com
In-Reply-To: <20240807201640.1RD27ogN@steffen%sdaoden.eu>
Message-Id: <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>
X-Mailer: Apple Mail (2.3776.700.51)
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hello Steffen,

> On 7. Aug 2024, at 22:16, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
>=20
> Isn't that terribly rhetorical, and can kill sheeps indeed.
> To reiterate that SSL/TLS are standards, they had version
> iterations, which possibly got around some real protocol problem.
> These offer standardized sets of ciphersuites, some of those, of
> the elder versions, are "no longer secure".  (I am no
> cryptographer to tell whether they ever were completely so, or
> whether there are "mathematical tricks" to get away without brute
> force for them.  That aside.)  That is basically it.  But, as far
> as i understand it, even TLSv1 supported forward-secrecy stuff, ie
>=20
>  # openssl ciphers -v EECDH+AESGCM:EECDH+AES256:CHACHA20:!DHE
>=20
> gives two members, and except for the SHA-1 MAC this looks pretty
> modern.  But again: i am far from being an expert.

TLS < 1.2 only supports a single signature algorithm, which uses SHA1-MD5 a=
s digest.
Only TLS >=3D 1.2 supports the signature_algorithms extension to negotiate =
modern digests.

MD-5 is fully broken. SHA-1 is questionable. Their combination may withstan=
d attacks a little bit longer, but probably not by much.

The MAC is actually fine, since it=E2=80=99s HMAC with SHA-1, which isn=E2=
=80=99t as affected by a SHA-1 collision attack [1].


  [1]: https://security.stackexchange.com/questions/187866/why-aren-t-colli=
sions-important-with-hmac


--=20
Clemens Lang
RHEL Crypto Team
Red Hat

