Received: (qmail 3234 invoked by uid 550); 5 Nov 2025 17:59:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31959 invoked from network); 5 Nov 2025 17:37:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762364225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CF1RfjgvhLwvknSNbWZpnFx1UgLrMZs68nTEL+pDFKE=;
	b=iIfGPNIGcC97ZhuGL+5awk5VQxrg2ZYwFGzpwxYuzLyCKt9sJOquDaOUmvAxw4QqMZ/TVz
	G0Kwg7ZAYpfDulNYubCI+XjaqceuDU9Je8w9KrW644inMJQ7WTqkEajBKZ0+au52lf8kUG
	GA4gXS3K/StHtoimy2+WABbtoSHQRL4=
X-MC-Unique: L6Inm31bPYqCDgz-gDcOrA-1
X-Mimecast-MFC-AGG-ID: L6Inm31bPYqCDgz-gDcOrA_1762364221
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762364221; x=1762969021;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CF1RfjgvhLwvknSNbWZpnFx1UgLrMZs68nTEL+pDFKE=;
        b=FlB8wFNxNHVAhnxxygTC57M5kXJfVTyjl7KM2OvrdEe3oyXNf2sePc/+4mfzKd5AzY
         oQk2xhIyGKPlcKbChJFA6RUEBu7UKduLBuPeDx2euQ3XlcV+YzwbP2QIaYReFHEh2qS4
         VZzB5Aj9m+YZzr+EQkWXAUQewLZv9mfk9XK0ynA7hwVGduCedNoic9nje+exHu/NIjjs
         iasGXlQc1et8eZxIUs8DTGZPXDwT8fGUdu8p2ZXvZzGwI9Hn51e3NCCVJh/oBSGIwdX2
         FP+KhraRMXikzomm7CNumaGcCjEdBqBRJG+wEtxDAR+9GzFn9bCc3DG8bwyqRa+50URW
         OX/A==
X-Gm-Message-State: AOJu0YzQfVAisCljTFBDCtwYVWJBsyG0k05AtArd6ZS6B/va2q4BtePi
	RCswPkuV9bAtMLmhxiim/dHAaxqBq9e/mjFGIxEJiLT3/oPPSpkmhoXhbu2mWiRCeiv+fxPx5WK
	BKDqE2gVQBryMrPKnfgKcmwKLM8LSYv+R2ctED3qmGJop4iPbXLBrv5eVlYa5vl060yITwKLJY+
	L+LAW4FjyZX/WvuvfrgvaGrXhocfXjBZ7GcfVxFQ4Y+rKRPkbIotbZbX8=
X-Gm-Gg: ASbGnctqSg2NIhLnTYBl3m7jPCMOzWjWRyWKXElheeDlJwwu7wxQrbxgtJBclBesmJZ
	EZkhk4E2pLkT/jblcBrkeqtn0RjbNDcPBJN5JnDzsY+xT5aj2OwKWoRebEcfwtZGAh7ytqzZfGO
	rQJMPw97dLn0FUUfKhNG3yTH/+qzxPX0/UgNhjPzQ81izwPQTYVyyI/s0=
X-Received: by 2002:a05:690e:2406:b0:63c:f5a7:402 with SMTP id 956f58d0204a3-63fd35a0528mr2837202d50.54.1762364221402;
        Wed, 05 Nov 2025 09:37:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3iir/TaqKZGsin0Ne+Gy+lo59GYrua6Sl72noKH2/m0bfF68gL6D+3esyFBPO9ARBPZiwn2hg5o5x/jgnyqg=
X-Received: by 2002:a05:690e:2406:b0:63c:f5a7:402 with SMTP id
 956f58d0204a3-63fd35a0528mr2837179d50.54.1762364220833; Wed, 05 Nov 2025
 09:37:00 -0800 (PST)
MIME-Version: 1.0
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh> <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <8175f2ed-5bec-4770-bc23-e626bf35c04b@protonmail.com>
In-Reply-To: <8175f2ed-5bec-4770-bc23-e626bf35c04b@protonmail.com>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Wed, 5 Nov 2025 14:36:44 -0300
X-Gm-Features: AWmQ_bl5BVDeCf36_fXutZ0Tra8OTBjunVY2F4CwDKhFmty6lAgPd_d8pIo5SYI
Message-ID: <CAEFhzs_txKtdVMAiNbpsWYM3jOYeGMeT=EiP9xhRJJ4FE2pr0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: x3e1YSv5fvHaEm0eB9dODLDHWoz5MduBl-8zMC8Cd6I_1762364221
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000591a6b0642dc6538"
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

--000000000000591a6b0642dc6538
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 1:29=E2=80=AFPM Art Manion <zmanion@protonmail.com> =
wrote:

> On 2025-11-05 05:30, Peter Gutmann wrote:
> > The problem is that individuals can't be CNAs, which means you'd need to
> do
> > something like going through the cost and overhead of setting up a shell
> > corporation or similar to meet the checkbox requirement that an
> individual
> > can't be a CNA but the same individual fronted by a paper entity can.
> >
> > Does anyone know what the thinking behind this is?  It excludes any OSS
> > project that doesn't have some entity fronting it from being a CNA.  If
> by
> > "major" you mean "lots of people involved in the project" then there are
> > probably entities fronting them but if you mean "lots of users and
> critical to
> > Internet operation" then see the famous xkcd cartoon, and that person
> can't be
> > a CNA.
>
> I believe that there are no strict requirements to be a non-individual
> legal
> entity and that in practice, a somewhat informal "project" can be a CNA.
>
> Individuals as CNAs are rare, but here is one:
>
>   https://www.cve.org/partnerinformation/ListofPartners
>
>  - Art
>
>
>
Although there isn't a requirement for a legal entity, the operational side
of a CNA requires more than one person to manage.

One example is that different points of contact are required for
communication between us and the CNA so we always have a way to reach it.
Another one is that the CNA will be handling its organization's user base
in CVE Program's systems, and that requires redundancy so the CNA would not
be stuck in case a member leaves.

This and other good practices may be what prevents 'individuals' CNAs from
being accepted in favor of teams. It should not be a one person endeavor.

--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

--000000000000591a6b0642dc6538
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 5, 2025 at 1:29=E2=80=AFPM Art Ma=
nion &lt;<a href=3D"mailto:zmanion@protonmail.com">zmanion@protonmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 2025-11-05 05:30, Peter Gutmann wrote:<br>
&gt; The problem is that individuals can&#39;t be CNAs, which means you&#39=
;d need to do<br>
&gt; something like going through the cost and overhead of setting up a she=
ll<br>
&gt; corporation or similar to meet the checkbox requirement that an indivi=
dual<br>
&gt; can&#39;t be a CNA but the same individual fronted by a paper entity c=
an.<br>
&gt; <br>
&gt; Does anyone know what the thinking behind this is?=C2=A0 It excludes a=
ny OSS<br>
&gt; project that doesn&#39;t have some entity fronting it from being a CNA=
.=C2=A0 If by<br>
&gt; &quot;major&quot; you mean &quot;lots of people involved in the projec=
t&quot; then there are<br>
&gt; probably entities fronting them but if you mean &quot;lots of users an=
d critical to<br>
&gt; Internet operation&quot; then see the famous xkcd cartoon, and that pe=
rson can&#39;t be<br>
&gt; a CNA.<br>
<br>
I believe that there are no strict requirements to be a non-individual lega=
l<br>
entity and that in practice, a somewhat informal &quot;project&quot; can be=
 a CNA.<br>
<br>
Individuals as CNAs are rare, but here is one:<br>
<br>
=C2=A0 <a href=3D"https://www.cve.org/partnerinformation/ListofPartners" re=
l=3D"noreferrer" target=3D"_blank">https://www.cve.org/partnerinformation/L=
istofPartners</a><br>
<br>
=C2=A0- Art<br>
<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><div dir=3D"ltr"><div>=
Although there isn&#39;t a requirement for a legal entity, the operational=
=C2=A0side of a CNA requires more than one person to manage.</div><div><br>=
</div><div>One
 example is that different points of contact are required for=20
communication between us and the CNA so we always have a way to reach=20
it. Another one is that the CNA will be handling its organization&#39;s user
 base in CVE Program&#39;s systems, and that requires redundancy so the CNA=
=20
would not be stuck in case a member leaves.</div><div><br></div><div>This
 and other good practices may be what prevents &#39;individuals&#39; CNAs f=
rom=20
being accepted in favor of teams. It should not be a one person=20
endeavor.</div></div></div><div><br></div><span class=3D"gmail_signature_pr=
efix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"=
ltr"><div>Pedro Sampaio | Red Hat Product Security</div><div>851525C5A98E9D=
EB7E650ABDFAC8296FBC674B8F<br></div></div></div></div>

--000000000000591a6b0642dc6538--

