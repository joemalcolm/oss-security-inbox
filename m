Received: (qmail 5704 invoked by uid 550); 17 May 2023 14:47:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3661 invoked from network); 17 May 2023 14:44:13 -0000
X-Auth-ID: bgreene@senki.org
Content-Type: multipart/alternative; boundary=Apple-Mail-0972B85E-B217-4649-BEE2-97EE54AB9557
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
From: Barry Greene <bgreene@senki.org>
In-Reply-To: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
Date: Wed, 17 May 2023 10:43:50 -0400
Message-Id: <D2D5A1F8-9C54-46F3-AA9B-95913B446645@senki.org>
References: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mailer: iPhone Mail (20E252)
X-Classification-ID: a382ee2d-c6da-4846-a633-9bae67b5301a-1-1
Subject: Re: [oss-security] IPv6 and Route of Death

--Apple-Mail-0972B85E-B217-4649-BEE2-97EE54AB9557
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable


My recommendation - check your =E2=80=9CExploitable Port Filter=E2=80=9D ru=
les and include IPv6. Test your gear to insure it =E2=80=98can=E2=80=99 fil=
ter exertion headers.

Read through RFC 9098.

This is an doc on how major ISPs deploy port filtering in their networks. S=
ome are applying RFC 9098.

https://www.senki.org/operators-security-toolkit/filtering-exploitable-port=
s-and-minimizing-risk-to-and-from-your-customers/


Sent from my iPhone

> On May 17, 2023, at 10:23 AM, Jeffrey Walton <noloader@gmail.com> wrote:
> =EF=BB=BFHi Everyone,
>=20
> This seems to have been dropped as a 0-day. I have not seen a CVE
> assigned to it.
>=20
> IPv6 and Route of Death:
>=20
>  * https://www.reddit.com/r/linux/comments/13jfehf/linux_ipv6_route_of_de=
ath_0day_no_patch/
>  * https://news.ycombinator.com/item?id=3D35950379
>=20
> I _think_ this is the original writeup:
>=20
>  * https://www.interruptlabs.co.uk//articles/linux-ipv6-route-of-death
>=20
> Jeff

--Apple-Mail-0972B85E-B217-4649-BEE2-97EE54AB9557--
