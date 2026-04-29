Received: (qmail 10146 invoked by uid 550); 29 Apr 2026 19:36:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1055 invoked from network); 29 Apr 2026 18:52:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777488750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0d6LntrY8R22pPoENWfuNPQuJbacZ7O5THKtwjaNHlc=;
	b=HBz/jEkdM2F3+q+lh+LZLOmqFavmEizpqOx99utZxxtwevbmFHfsp7hbu0ULYFXis/1IHU
	pd69It4zJU+0efoWCjJoour/RjZt0ck/HWStwe5hXgqAV59n9VQ+g17d2sLdVTPJGf9BV7
	VBcqq+qDcPwa+sT5MZi6ZG8HTsqtUEo=
X-MC-Unique: Xt6ncaEHMmmeSK2YMlzHow-1
X-Mimecast-MFC-AGG-ID: Xt6ncaEHMmmeSK2YMlzHow_1777488747
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777488747; x=1778093547;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9g0NmcJKOyWvMM5EVQ1q8JAGSocUWQ1DnrgNrDA2LyU=;
        b=VxQ59BwNI3mV/GJabZf46D8v2kT1y3VmDsLBnVQMbFF4pGYQhi66gAcRqONy67xS6d
         i2HIWP6OINU/YMJ+GiJNjBLRsnOAGEMY389Z/zsEMQCd7H6Ang9eo94d5YYU67vI92m+
         dsoeryfH90t6SPi+L8nPgkKqU/GfGpiLtMbh8B/GCZwXTOJ/29Zrcg7MJKu897nYWkYI
         wxHtw4ppM30+PnVNWX4n7rIVPdxU2Q3V/OQtCgnCUmstLO0NqNz+qE1JJ/ib65HTP+6C
         805AmiQHGUVWVOOVtGNYXl/SKlg1ffn1ykZ9fZqRtkSBmDlP+WiR5XU9bHYt3tl8BEHq
         zqUQ==
X-Gm-Message-State: AOJu0YxiPPrxu5jlTp6mzy3sKZZZBPibbEPASpnb7tYp8Af3WxW64INO
	AdPxJTsXLc7CRvw/ZRITmLnRsCVTv6w8td1pYleSFT958BgzeKX5XrPT55PjR4Q8X/cYAweKIr+
	F1IBU+smAMlfqVXcRuj38EspvRPfbaZOI+xT2QyVJNTTExp338v6PdjyirQrEpYPEM+bLbJHEtB
	KtXQkyMT/J2d3CSfFCs+BIrKYINCujtdv5k0gYtvVjZb377WXkpf4=
X-Gm-Gg: AeBDieuztHA99eM/UpVa2vdccqIEfPKIM03/uro7DBJlwoJ4RpWf4bP4x2HSN2eeO4l
	0TdJ0JnPq/FTGPVa/zReLtp0TR4jAWJ5gaR1gFKO0uuJqOyfE09Rj9tgVj2sBjD9ZwUlsKoXNQX
	I8DGmAkdp9DPOpvZMCQzxVSi16OqIS5dfE6xl5cNWAkWhOIIuULz21WZCKuM27T+Vj4MFPg8tyi
	WrEyQqLMoo0e71YlyxiXH5M56ZiZ7ZEsoiIpF+gm9TTUqc5e1bfMbjkUQRW+yI7BEcgJsFExRc0
	Eg8/9kqTl9JSyUZ9jdWXkyrFAOuzX0ctnk4jk+wvtQlzynyIITOA8X7y6XlR1cfVRFOT+KJT65r
	DNhMOgP2UeSVAgynqWOZM0QvHOyptoRhZWVmEMikXJjeg6f3YnAN7nVAwHjn1V3BHBcxi4Gm5RP
	OY29dQgJ4+qouhQ/j4yLmmyfU3gGIn1QPEiT+K2M6WP+DEjw==
X-Received: by 2002:a05:600c:c091:b0:48a:58ae:9938 with SMTP id 5b1f17b1804b1-48a77b19957mr102097565e9.19.1777488747207;
        Wed, 29 Apr 2026 11:52:27 -0700 (PDT)
X-Received: by 2002:a05:600c:c091:b0:48a:58ae:9938 with SMTP id 5b1f17b1804b1-48a77b19957mr102097315e9.19.1777488746670;
        Wed, 29 Apr 2026 11:52:26 -0700 (PDT)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.500.181\))
Date: Wed, 29 Apr 2026 20:52:14 +0200
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
Message-Id: <3CD03E7B-92A9-4C32-AC58-E811FB8A43A6@redhat.com>
X-Mailer: Apple Mail (2.3864.500.181)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0LK8I3btZS0lwhFpRYpImCCpWLZyNZ7JQb9e5kl_rVg_1777488747
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

Hi,

> On 29. Apr 2026, at 05:18, Jacob Bachmeyer <jcb62281@gmail.com> wrote:
>=20
>> I'm sorely tempted, both due to the increased volume and the risk of pre=
mature disclosure, to just assume that any vulnerability reported as a resu=
lt of research using an LLM is trivially discoverable by others, and give u=
p trying to pretend there's any point to working it under embargo.
>=20
> You are correct here:  you should assume that any LLM will give a similar=
 result to another person who asks a similar question.  In other words, LLM=
-discovered vulnerabilities should be considered already publicly known.

As a further data point backing up this theory: We=E2=80=99re seeing duplic=
ate reports of the same issue found by multiple independent groups that use=
 LLMs, within the embargo period.

--=20
Clemens Lang
RHEL Crypto Team
Red Hat

