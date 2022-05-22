Received: (qmail 20458 invoked by uid 550); 22 May 2022 19:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11776 invoked from network); 22 May 2022 19:56:06 -0000
Content-Type: multipart/signed;
	boundary="Apple-Mail=_30205634-A3DF-4C92-8994-10899C4B24EF";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Sam James <sam@gentoo.org>
In-Reply-To: <20220522191951.GA21330@openwall.com>
Date: Sun, 22 May 2022 20:55:50 +0100
Cc: seth.arnold@canonical.com,
 greg@kroah.com
Message-Id: <1667A786-CDE3-4DB2-B6E8-5EA6B39F1AA4@gentoo.org>
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
 <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
 <20220522191951.GA21330@openwall.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3696.100.31)
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--Apple-Mail=_30205634-A3DF-4C92-8994-10899C4B24EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 22 May 2022, at 20:19, Solar Designer <solar@openwall.com> wrote:
>=20
> Hi,
>=20
> Thank you all for the helpful replies in this thread.  Here's my summary
> of what was said so far:
>=20
> As seen from replies by Jason and Greg, I didn't make the distinction
> between my suggested options 0 and 2 clear enough.  They were:
>=20
>> 0. Do nothing specific - let things work or fail on their own.
>=20
>> 2. Strictly enforce the policy as it is - and be in conflict with Linux
>> kernel security team, and handle fewer issues via linux-distros.
>=20
> Let me clarify.  As I wrote, after the disagreement in February, "the
> handling was hectic - indeed, people felt discouraged from enforcing the
> policy."  So by option 0 I referred to the loose (non-)enforcement we've
> had since February until now, and by option 2 to enforcement at least as
> strict as we had before February.
>=20
> Although I wouldn't necessarily have the list's future decided by a
> majority vote, I counted something like 4.5 votes for relaxing the list
> policy to accommodate (at least) Linux kernel community's workflow:

I've been watching as I was hesitant to muddy the waters as we've
had this discussion many times before and didn't want to be noisy, but
my support is for Greg's suggestion.

We're trying to get the best possible outcome within practical means
and I think it'll serve that aim.

>=20
> Igor Seletskiy
>> My vote would be for #1
>=20
> Anthony Liguori
>> make this policy specific to changes under security@vger.kernel.org emba=
rgo
>=20
> Greg KH
>> So if you all could just modify the rules to be something like,
>> "embargos are not broken when changes are posted in public, or accepted
>> into public trees, unless the changes or discussions around them turn
>> out to disclose the security related issue."

What I ask is that the kernel folks are proactive in reaching out to us if =
they
think people start to suspect, too.

I'd also like to ask that the final commit messages please reference any
relevant CVEs or at least the security impact. There've been a fair number
of incidents where such information is stripped and it makes tracking
issues *really* hard.

This would make a big difference to us in distributions. I hope this can
be considered.

> [snip]

best,
sam


--Apple-Mail=_30205634-A3DF-4C92-8994-10899C4B24EF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmKKlUZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDvTigf/e3qoT1LUazpNozXyktOmt0HG1Cig+O6zi24nTi6bxt15uHLQWGiXFJQ4
wZL6sxOEw1326xmA/TZu6farWnw/xJ6o5al6fBxQaFTiE0JALSsKYxjVS+FcyYSF
r0Ra+UAhRySoHGoCQXt4p03FnFYHUMouwXgFxeAvzpJAHZhedWvBH6l2tfYBgFFN
/yF5Rvxt0+sTcAK4XELzzVBWgryKBn3ADJ5ZskURRhj+eSDGWrE3jzNOY4vyczm6
aJ/63TFRDB3PJ4G0/v6jTg1JykahuOtcvdrLN3RJ2tFKZBPfFFmqVqAuAOfsqHQC
DuE8dTneCJewaVInaG6J+e4OisYO+A==
=jmNk
-----END PGP SIGNATURE-----

--Apple-Mail=_30205634-A3DF-4C92-8994-10899C4B24EF--
