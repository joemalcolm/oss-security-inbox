Received: (qmail 23859 invoked by uid 550); 8 Nov 2023 20:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23838 invoked from network); 8 Nov 2023 20:34:08 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Wed, 8 Nov 2023 15:33:35 -0500
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
 <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
To: oss-security@lists.openwall.com,
 contact@notcve.org
In-Reply-To: <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
Message-Id: <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6)
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors


> On Nov 8, 2023, at 12:52 PM, Vegard Nossum <vegard.nossum@oracle.com> wro=
te:
>=20
> I am not a lawyer, but I'd assume you would run into some issues with
> the naming of all this -- wasn't that the exact issue that somebody else
> ran into when they tried to assign identifiers to bugs that MITRE
> wouldn't acknowledge? Here's what they said back then:
>=20
> <https://cve.mitre.org/news/archives/2021/news.html#April022021_Message_t=
o_DWF_from_the_CVE_Board>
>=20
> I somehow doubt the presence of the ! makes much of a difference.

The problem in that case wasn't that someone else used "XYZ-" format ID. Bu=
gtraq did that before,
and many others do it today. The problem was that the group labeled some no=
n-CVEs as "CVE-...", which
is confusing and probably violates trademarks.

The "!CVE" group isn't using "CVE", they're using "!CVE". The question is,
is that distinct enough, or will typical users be confused by it?
I don't know the answer to that. However, I do worry that perhaps
"!CVE" is not distinct enough.

I would *strongly* recommend that this group use "NotCVE" or "NCVE" instead=
 of "!CVE".
That would be more clearly distinct, and they already call themselves that.
I'll also note that searching for "!CVE" and storing that prefix will also =
cause some problems.

This gets into trademark law. I'm not a lawyer. However, I do talk to them =
:-). Trademark law doesn't
prevent you from *doing* an action, it just prevents certain kinds of confu=
sing *names* because
it's helpful when names mean things. As long as the name/image/whatever is =
clearly distinct
there's no problem. So where possible, please use clearly distinct names fo=
r distinct things.
I think that's a good practice even when it's *not* legally required.

--- David A. Wheeler

