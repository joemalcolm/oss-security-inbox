Received: (qmail 9845 invoked by uid 550); 7 Aug 2024 12:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16181 invoked from network); 7 Aug 2024 01:58:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1722995893; x=1723600693; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QQ7opqMTYP+F5opltU784OslJzkQANnyW9GTcpVHFtk=;
        b=P3WVX1rbNPdeeNoQsev/MLfxKIfgZolNhv35PJXnhrKmnB77B0yTtkR+SidTGDW+06
         bLf024/9DZfgk++wXS7UOh78+y73xg6PsBzuotT2JDKuCMpWA8QUtyO0EQEPcYU5PmAY
         /OEthztPOe10hRt6M+2fk2Kxq46gXvNZZrnQSVq8kbT5MuVvicxf3ZRPX+s29AYMu23J
         oD32qWHruncxFyt6QR57F8dRsRkBVKkunigXc+p/2GQbC7GtpDK/tMdI4s+rP/+LnUl7
         S+DxxRlRo2Z7OLVXpJiMiOJszYTPtdoKcWG5ZpSb89u88vqAOwzxtOoT7Ng9JHcMbXT3
         vhow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722995893; x=1723600693;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QQ7opqMTYP+F5opltU784OslJzkQANnyW9GTcpVHFtk=;
        b=vQD0NQUPeU7T/bD1i7IyOtdtOjuqa+/PQKYe2RdbGzsuJcrh+3aBsik4qmfE04rrLG
         Q0gMsLWDXCUJq629hJVVkftmCFBmse+PMd/G1OIAw6bvwg6CsZbt01i2MYJWn/XZX0p1
         9HEpJVJ/jIka+LR6PHEKTQl4MnD86k50mUJjzHuuFo3Qlig5yVlGVZ4GmPsVw/5skdjv
         2tqGLfUiLJO1FpFdwRoU/2r0dy+1XyN3miKIoAXzKFoJHd6J24f2SpxZTG8tfoAZDHKB
         GE2T2OzRurOJEmvqXuTpI63eD5UV9wCJkbaw3ni0YXdiWw2JpJCR4ixEfz64WpGaBOhq
         lekQ==
X-Gm-Message-State: AOJu0YyvMPkIy5d7FkwYNv0C4woA4hNHEZi7sMRevzIgqhGRg45gFsoc
	5SqVoZHuEdukkwqM8IgEhhEGVtZ2DS8hLfBGNK2pGGKZRuDnajZpnlEcqw5YWe2y4Cn0zwAYTT8
	fW7gVEv34i8w22zEArqAuO+v+kusJjVLiZoyX+XFvofCzXrYj
X-Google-Smtp-Source: AGHT+IFjxYfpvTLpnJgXnkHMMaQmJkykAourJeU9ksFsgTkpNOOT7jlrGMUWyFoR1cTBhaApYja3l+8fuNMDvgd7ghM=
X-Received: by 2002:a17:906:794d:b0:a7a:bc34:a4c8 with SMTP id
 a640c23a62f3a-a7dc519103cmr1095581266b.69.1722995892762; Tue, 06 Aug 2024
 18:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <CAFRnB2V=WV_vECtLQ1dgxATOd+raWGbqvGjcXyhEQnaCYfjiFA@mail.gmail.com>
In-Reply-To: <CAFRnB2V=WV_vECtLQ1dgxATOd+raWGbqvGjcXyhEQnaCYfjiFA@mail.gmail.com>
From: Neil Horman <nhorman@openssl.org>
Date: Tue, 6 Aug 2024 21:57:59 -0400
Message-ID: <CAJbOq17PDmKScLmoCFOMtZ9OEyYg+x4R9=+wRUA2fwStduermw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000234f62061f0e3e17"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--000000000000234f62061f0e3e17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ack, thank you for the candid feedback, it's helpful

On Tue, Aug 6, 2024, 6:10 PM Alex Gaynor <alex.gaynor@gmail.com> wrote:

> Hi Neil,
>
> Answering on behalf of the Python Cryptographic Authority, which
> develops pyca/cryptography, the most widely used Python cryptography
> library. We distribute binary builds that statically link a copy of
> OpenSSL.
>
> 1) Yes, we're fine with dropping TLS 1.0/1.1 on this time frame.
> Frankly, we'd be fine dropping it faster.
>
> 2) We would not re-enable TLS1.0/1.1 in our releases. Users wishing to
> use these protocols would be responsible for building and linking
> their own OpenSSL.
>
> 3) I don't have a good answer for you. I think systems programming is
> fairly impoverished in terms of ways to emit _runtime_ warnings. I'd
> suggest focusing on compile-time warnings.
>
> Alex
>
> On Tue, Aug 6, 2024 at 7:29=E2=80=AFAM Neil Horman <nhorman@openssl.org> =
wrote:
> >
> > Neil Horman <nhorman@openssl.org>
> > 4:19=E2=80=AFAM (42 minutes ago)
> > to openssl-security
> >
> > OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
> > protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
> > requires enablement by reducing the ssl security level value.
> >
> > The current proposal under consideration is to explicitly disable TLS
> > 1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to
> release
> > in the next 12-18 months), with an eye to completely remove the impacted
> > code in a future major release.  The default configuration could be
> > overridden to re-enable TLS 1.0/1.1 at build time.
> >
> > Questions to the community are:
> >
> > 1) Are distributions/users comfortable with this approach in the time
> frame
> > proposed?
> >
> > 2) Would builders of OpenSSL consider using the default configuration
> (with
> > TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
> > re-enabled in their builds?
> >
> > 3) If the deprecated protocols are re-enabled, what would constitute a
> > reasonable warning mechanism to inform users that these protocols are
> going
> > away at some point in the future to pressure users to update to a newer,
> > more secure protocol?
> >
> > Input on these questions is requested and appreciated
>
>
>
> --
> All that is necessary for evil to succeed is for good people to do nothin=
g.
>

--000000000000234f62061f0e3e17--
