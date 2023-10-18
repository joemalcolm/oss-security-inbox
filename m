Received: (qmail 28088 invoked by uid 550); 18 Oct 2023 23:48:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28064 invoked from network); 18 Oct 2023 23:48:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1697672896; bh=c+apO9VdnDmiVHdjmIii4dMiDiZ7RBGcAFsNCVoQNHM=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=yEw0QcqT7zpgNW2hiaMXvpPKgCxi3c6A3diQ+ss80yxb/mRUWm0fsXS3FI6ZclQ+N
	 KKAqmTrM+Q8uClt1pX43LElME5TlDrUUuNtwmiVJSh0dieLRefJeCniDkifdKfBLQE
	 Aq4/0BiTjEzdUOGOlZnb2oroyBZfVpbVUxm3qXZs=
Message-ID: <a2402c1e2398b8f0818955dc1ced6be6d790b69f.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Wed, 18 Oct 2023 19:48:15 -0400
In-Reply-To: <02db51d7-974a-53cf-d018-8982bed87da3@tnetconsulting.net>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
	 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
	 <693e917eaca0983293396d084c7cf2f44525a7a5.camel@orlitzky.com>
	 <02db51d7-974a-53cf-d018-8982bed87da3@tnetconsulting.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Wed, 2023-10-18 at 17:31 -0500, Grant Taylor wrote:
> On 10/18/23 2:30=E2=80=AFPM, Michael Orlitzky wrote:
> > That's the crux of it but I don't think it frees Firefox from=20
> > responsibility.
>=20
> Please elaborate on what Firefox's responsibility is here?

Among other things, it should not let random webpages delete my data.
The data in the selection buffer do not belong to Firefox, and REALLY
do not belong to the webpages I visit. They belong to me; I put them
there. I should be the only one who can modify them. Same as when you
create a file on UNIX.

Javascript has been able to do all kinds of insane things in the past,
so there's some room for disagreement here. But the fact that they
disallow this with the usual Ctrl-C clipboard suggests that, at some
point, someone was smart enough to recognize this as a problem.


> > Despite the premise being contrary to common sense and fifty years=20
> > of evidence, Firefox promises to sandbox all of the bad things that=20
> > untrusted third-party code might do to you.
>=20
> So perhaps Firefox needs to change their statement / stance.=20

It _would_ save a lot of trouble if we all just admitted that the
modern web is stupid and will never work properly.

