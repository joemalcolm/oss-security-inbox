Received: (qmail 5398 invoked by uid 550); 8 Apr 2024 12:33:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19636 invoked from network); 8 Apr 2024 01:18:30 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sec.16bits.net;
	s=ec2401; t=1712539101;
	bh=RFq2Hvh+j0QUQidSMALIuDrOJqooV54luWabPNsRgiM=;
	h=Subject:From:To:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:MIME-Version;
	b=JEyk6MWqNTVW3XsEakCJ2wu3fmXhlDpgw3fG5mijphBb4egOaSKyX9sGUZ+/6vwAs
	 hGehjx6qLiw+oEIOTsFAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sec.16bits.net;
	s=rsa2401; t=1712539101;
	bh=RFq2Hvh+j0QUQidSMALIuDrOJqooV54luWabPNsRgiM=;
	h=Subject:From:To:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:MIME-Version;
	b=bB1WjWrcr3KqDrCC8f96+53nl4KoeFsBxi2cWQLa1dSYnTYHDx0H2v1fFsio6yHOn
	 4wMYlNSg12gfGv6dZDqrbn6vGM9QY+1z6In2fJ6PFRpWsPnN7EOcZd1IKTFxX1buAS
	 ok4oJOL8t/N7QOYl4UIUzokUrvXX/Qwrz+dtqOv4ZYmtr0M9KY348NeOoKNgFlENk7
	 BakRzD5acAXWh5Rw28RcF56W5hvFx+BFr9glIAZBA3mnTBc/SoTOgKon2pkS3pOfwp
	 efX1jPhcLulsrN/hJrwd/lSFdN4bS9GeQLlRI5ia6AQhsl/BN9a1tTuiyxJsZyMf50
	 I5lZ7D0e3MgdA==
Message-ID: <fba3f0859b33de054413dbf01be985716a4609f1.camel@sec.16bits.net>
From: =?ISO-8859-1?Q?=C1ngel?= <oss-security@sec.16bits.net>
To: oss-security@lists.openwall.com
Date: Mon, 08 Apr 2024 03:18:21 +0200
In-Reply-To: <uuhg0r$3dd$1@ciao.gmane.io>
References: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
	 <3561b05d-5ad0-41be-b50f-687e13d614e0@ipsumj.de>
	 <uufob6$13tl$1@ciao.gmane.io> <uuhg0r$3dd$1@ciao.gmane.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [oss-security] Re: finding similar compromises (was Re: From xz
 to ibus: more questionable tarballs)

On 2024-04-02 at 17:41 +0000, Tavis Ormandy wrote:
> FYI, of the 22,885,940 signature packets in my SKS dump, 1186 had the
> same options as Jia's (algo, keylen, expiry, prefs).
>=20
(...)
> There was a cluster from Warwick students, I'm thinking they use the
> same distribution as Jia? e.g, these all look similar:
>=20
(...)
> Anyway, I feel like my eyeballs did their part :)
>=20
> Tavis.

Hi Tavis

The Hash algorithm (SHA512), key flags, list of preferred symmetric
algorithms (AES256, AES192, AES128, 3DES), list of preferred hash
algorithms (SHA512, SHA384, SHA256, SHA224, SHA1) and list of preferred
compression (ZLIB, BZip2, ZIP) are all the default for gpg. It all
looks like gpg-created.
Only the 4096 bits of RSA and the 5y expiry are non-default.

If Jia wanted to create a 5y expiry key, he would have needed to use=20
--full-generate-key, which would then have requested the key size, and
4096 would have been a pretty normal answer.

Also relevant, the key seems to have been created with those options
(signature creation time matches the public key creation time), not
adjusted later.

The key creation time 2022-12-28 15:23:29 UTC, under Asia/Shanghai
timezone would be 2022-12-28 23:23:29 CST.

for... whatever the datetime may tell us
https://rheaeve.substack.com/p/xz-backdoor-times-damned-times-and


