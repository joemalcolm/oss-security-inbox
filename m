Received: (qmail 23837 invoked by uid 550); 4 Nov 2022 00:28:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23815 invoked from network); 4 Nov 2022 00:28:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667521697; x=
	1667608097; bh=5U2MDxQz7aCwOHjGieUTHEAgcM9qUOKHvx3oGry95DA=; b=j
	6plzKrv+dYOzUhRy450H7t2zMbOXq1Iqzd3Ya3mvwM//GiGgbkDq7ti15CG/VvWl
	4JpIU4AeGSAZSffnZqE2Fs0ZxpnQX2jhTlE/lduAqAtV6ZLDx8zqb7C18H2d6nt/
	zoTw2CLghtOKMr0firkzmC13IpBDxpP6jhyQpD1nL90pgQFGC6NerH6OqB0RqGWo
	Ym5QVA5bjocXQrz9lOo0YW9r3qBhMdHRSihTJ4ofZh4LUbeCp/Si9PoU4Fwi8j3u
	iJ9PlLswh1VobYNmUc+neCtJ3QRbUgIEUTlRpKIApd37ljXnXviBtG0MKU1wRnXB
	ouEcJ+XBfdV5VZnqQ1AoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667521697; x=1667608097; bh=5U2MDxQz7aCwOHjGieUTHEAgcM9q
	UOKHvx3oGry95DA=; b=Cwe8pIPwzYLVhsSbk2JGob6uAmDVjTiCUT40u6gm6k6P
	ANWKv+W1B7Jw8bbroBE+uO32LIX+vmBOevWmZxdBQB3Ugs24xvQtC3jSHJ03+Wk9
	u5G7LPL8iYLG5GGdQU8v7B8m30T8YGK6waZdly1mrk7AxIPcBkAAGMtUU9GELRar
	u1DPR+mWx5kFL0160ZnW1fFWFiaA2KxuIiZO3dQh6sq5WfXBxshWrwUgY+/49FlR
	r6tm80plAGD4wibV54R4oZW9yd/W5W0olX88Akpr/n/xwEXaJGNonjIHEuZ/o+S/
	SCU4KCDqZBZrvTV9f/BTJ6TSz9PXruqHHJYNlKiBtw==
X-ME-Sender: <xms:oVxkY4n4Bl1m_cZc5erflV6joY9jZEM_AtnTzTBLbIhfITlP8jYtLQ>
    <xme:oVxkY30EhRMSbVPw2GGmYABxDZb1U0LYFIR5cWvbpFqy-iJFG8ESRUPAP9YiUwUKh
    3dbgmDA0lahJ_E>
X-ME-Received: <xmr:oVxkY2qPR1K8Ta64xXZsQe0SZB_JMrhzHQDiH32pI_oJiZKMUOwi14f5ikEy>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddtgddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeduieelfeeutedvleehueetffejgeej
    geffkeelveeuleeukeejjeduffetjeekteenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:oVxkY0m47LlydJDtpnXtlI5_f1o76vwOSiiTg3DIDaM09-NovgUHXg>
    <xmx:oVxkY23R60QdCFsHjGd7FvwEagmdnrrYfVeYA5Uel8C8DSxDOBe6PQ>
    <xmx:oVxkY7u18k2vVqF6N4KGGr7HsVbYH2XJUtYK7XPurHoBM_inl6etaw>
    <xmx:oVxkY79v68VLeaS9fB3aAWP6yArJkP1DoL068lTyA01cqU0KY59FTw>
Feedback-ID: iac594737:Fastmail
Date: Thu, 3 Nov 2022 20:28:10 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: nic.tuv@gmail.com, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@gentoo.org>
Message-ID: <Y2RcnxVZFaql5VNo@itl-email>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer>
 <Y2K1yOB7748iGI2P@wopr>
 <tk0n6j$10pr$1@ciao.gmane.io>
 <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
 <FFA5687C-C618-4896-A2C0-5CE992FEF632@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eisd9cXkLY2xQqCx"
Content-Disposition: inline
In-Reply-To: <FFA5687C-C618-4896-A2C0-5CE992FEF632@gentoo.org>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--eisd9cXkLY2xQqCx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 3 Nov 2022 20:28:10 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: nic.tuv@gmail.com, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@gentoo.org>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Thu, Nov 03, 2022 at 08:23:32PM +0000, Sam James wrote:
>=20
>=20
> > On 3 Nov 2022, at 16:32, Nicola Tuveri <nic.tuv@gmail.com> wrote:
> >=20
> > I can also add that at least this member of the OpenSSL Technical
> > Committee is following the discussion, and I believe I am not the only
> > one.
> >=20
> > The feedback shared here on oss-security is read and carefully
> > considered, and I know it will be discussed within OTC to continue the
> > ongoing process of improving the OpenSSL project and its procedures.
>=20
> I'd like to thank the OpenSSL developers for being open to the
> CI improvements I've been making lately.
>=20
> >=20
> > I totally concur with Tavis Ormandy:
> >> this is active prolific opensource security researchers discussing the=
ir opensource security work on the opensource security mailing list :)
> >=20
> > Personally, I'd like to thank you all for the feedback so far, as it
> > is in itself a contribution to the project, even when it is harsh and
> > reminds us of our mistakes.
> > As long as it is kept polite and constructive, as it has been so far
> > here, all feedback is very welcome and valuable.
>=20
> Something I think that should be revisited is the priority
> of undefined behaviour in the codebase.
>=20
> Undefined behaviour can - and has [0][1] - led to misbehaviour
> at runtime.
>=20
> Part of living with "Modern C" is embracing the
> techniques we have available to enhance compiler diagnostics
> and detect problems. That includes LTO, as well, which
> generally leads to _far_ better compiler warnings.
>=20
> The OpenSSL codebase isn't strict aliasing clean, and in
> Gentoo, we've built with -fno-strict-aliasing since ~2005
> (note that -fstrict-aliasing is enabled by default with -O2
> in GCC since at least 10 years ago).
>=20
> If at all possible, I'd ask that the OpenSSL team revisit
> its assessment of the severity of strict aliasing bugs
> as well as the value of LTO in enhancing diagnostics
> and finding bugs.

-fno-strict-aliasing is definitely the right call.  I use it pretty much
everywhere, as complying with the strict aliasing rules is often just
not worth the effort.  I suspect that wl_container_of (used in every C
program using libwayland) may violate strict aliasing, and I am nearly
certain X11 clients do.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--eisd9cXkLY2xQqCx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNkXJ4ACgkQsoi1X/+c
IsGm0g//bVBy2d9TTI6ktzxThwKgqHVZp6p/ZqGV066PsccxdXk5qx7RJhwxggDH
5iwvomuuElrJ4k8G/JCONX+0yfmbgmB3YKqMqYiAthekBQcNmx+5JyOcwpFfZGJ4
Aq2uXI/1qsHapaLi5+WcsyaPIxwrpoUZPGb+Mir9RXPTNi0SjT76CPpoaL//P9E+
NdQ7f5vfTtl5j1sP+aIUtRJgosRxVNMy0TAz3U1etyHvncCY22nzdGqDuz6CfqK1
sr3ka0YhQf+icaNEG1Y5iJSg6ztukpe7oI8KTmwmExBomfk44799oXdEWlvbtLv+
V5xmWu2FvfSjn33+NbmbJqslw9GtzxjXI+4lN8nVoxduwSTaeoWCAkNArzvNNq9q
3Ih79Dtn9WAZtRCy8TW+oPPCcDFvwvUoO/bYHI8tBU+Y9p0d0NJjXCseLFdaqWDe
Axo28vH6AnQ4J2c59p9nNqP7FfQLC1Of+FVGMskvRdCZLqp7rMEnSPfQbRQOAlYl
QBGpXBl1QX2IPSa/UqcpxK2ZP2v2pTcl2GYTqwJTGe8AF1XjCIT3YMHrhJ2Xg3+1
OySqkvlJ27gLsn+G7vV8vNpLod2AhrRKluOt55ufaR6XE0A8jkYMTJ8kihWM9BOB
/poxEg6w82rwCEIhAV9FpSgQAOl+X2NCzOHRH4jBz3zifFnwedc=
=jzXL
-----END PGP SIGNATURE-----

--eisd9cXkLY2xQqCx--
