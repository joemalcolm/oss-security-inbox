Received: (qmail 11929 invoked by uid 550); 5 Nov 2025 16:28:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22190 invoked from network); 5 Nov 2025 16:13:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1762359219; x=1762618419;
	bh=4TI5WaSl5wXIg7g12qgCae780WKyFLhgOorvFuFmtys=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=P/2trcuHrjY4l1VFvhCcqcd0u5bFdQ8QW/HS8Chq7jK/Sesud4sf0VoMPz4qow7Iq
	 1YCVhshXO9MXyHGuED4/iPvxHU3VLVYV1DCQQBCFJxcJBhxUuFsTQbcfDiSqB+XBRg
	 JcQ8j5qmPwbt7FuoWF7tOfPKbumlJXL9XPrkEMXWZOVeh0VEf0qsZuwiEaP4YQ3nM7
	 vHqgyL8UtNw5T4WpCBhZtD4/1eLVOA6Mpa13ix5+AKGXA18eU/UUBnSy1uqT4N6mOm
	 AQd7LJf76qhmf17NG2cNw0c42A4YOyBkYYrEZts8H0IX3PZE21zoQ6NCy/lqMxR/VJ
	 UG9BDQbOhvBkw==
Date: Wed, 05 Nov 2025 16:13:32 +0000
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <8175f2ed-5bec-4770-bc23-e626bf35c04b@protonmail.com>
In-Reply-To: <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com> <2025110538-probation-thickness-0517@gregkh> <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Feedback-ID: 39015149:user:proton
X-Pm-Message-ID: c1bbd8e09ce3543dc280815911e07ab96ae8a8ef
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

On 2025-11-05 05:30, Peter Gutmann wrote:
> The problem is that individuals can't be CNAs, which means you'd need to =
do
> something like going through the cost and overhead of setting up a shell
> corporation or similar to meet the checkbox requirement that an individual
> can't be a CNA but the same individual fronted by a paper entity can.
>=20
> Does anyone know what the thinking behind this is?  It excludes any OSS
> project that doesn't have some entity fronting it from being a CNA.  If by
> "major" you mean "lots of people involved in the project" then there are
> probably entities fronting them but if you mean "lots of users and critic=
al to
> Internet operation" then see the famous xkcd cartoon, and that person can=
't be
> a CNA.

I believe that there are no strict requirements to be a non-individual legal
entity and that in practice, a somewhat informal "project" can be a CNA.

Individuals as CNAs are rare, but here is one:

  https://www.cve.org/partnerinformation/ListofPartners

 - Art


