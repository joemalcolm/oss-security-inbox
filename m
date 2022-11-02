Received: (qmail 13544 invoked by uid 550); 2 Nov 2022 10:18:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30153 invoked from network); 2 Nov 2022 03:33:31 -0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ayaya.dev; s=key1;
	t=1667360000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r3WY1DWmHX5ShRWww57CcmMBjHp67VhmWy1B7ZKt174=;
	b=fkbLxFBKq8vEt4z9z24De9DYsn3tkGnergsUb8SrbcUMV04l0AGd7ersPDbtzWKR9rA2/v
	fykXcTOuQgYlahPnuM+p1lFUOPrE59m/sc5TZ2sB9tOGE+7qbe5jGGIjI1d2r4zvmqHSko
	+kkyfqLtKP3MHArZ0zXOv08iX7u7Ltw=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 02 Nov 2022 04:33:19 +0100
Message-Id: <CO1HSHA08E4Q.HY2J0SF11I0@sumire>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "alice" <alice@ayaya.dev>
To: <oss-security@lists.openwall.com>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <Y2F6C/dZo5njPUfd@itl-email>
 <1e5efc36-0cd4-45e2-b838-1493f9db6518@app.fastmail.com>
 <Y2HbGYMVSAm7/sUn@itl-email>
 <CAFRnB2U7V8PA997x+d_si+SN-_WOnaoC9M6impMENR5jfHiGwA@mail.gmail.com>
In-Reply-To: <CAFRnB2U7V8PA997x+d_si+SN-_WOnaoC9M6impMENR5jfHiGwA@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Wed Nov 2, 2022 at 3:53 AM CET, Alex Gaynor wrote:
> Alpine Linux switched to LibreSSL for a while, but then switched back
> to OpenSSL. (LibreSSL is still packaged separately)
(and nothing is meant to use libressl- things wanting the libtls
interface from libressl link to libretls[0] instead, in general. (just
for context, in alpine))

[0]: https://git.causal.agency/libretls/about/

>
> Alex
>
> On Tue, Nov 1, 2022 at 10:53 PM Demi Marie Obenour
> <demi@invisiblethingslab.com> wrote:
> >
> > On Tue, Nov 01, 2022 at 09:52:59PM +0100, Erin Shepherd wrote:
> > > LibreTLS does not track the OpenSSL API, so increasingly software doe=
s not build with it (it's not possible to support both LibreSSL and a suppo=
rted version of OpenSSL without #ifdef hell)
> >
> > Has software not from OpenBSD considered switching to LibreSSL outright?
> > --
> > Sincerely,
> > Demi Marie Obenour (she/her/hers)
> > Invisible Things Lab
>
>
>
> --=20
> All that is necessary for evil to succeed is for good people to do nothin=
g.

