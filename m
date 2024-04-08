Received: (qmail 3381 invoked by uid 550); 8 Apr 2024 12:33:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21828 invoked from network); 8 Apr 2024 00:31:48 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sec.16bits.net;
	s=ec2401; t=1712536299;
	bh=hjh3yFUu6fnu0d4T4pR8McFYjmwT1lbo6Rm3KhRn1wU=;
	h=Subject:From:To:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:MIME-Version;
	b=2a8igCurgvXx8AeO+sx1XFiL2UNmGC+O1W1wtyHvc9zRSqTwdBUtOVWTAU70Uala9
	 otxsFt+ZGjiK+aZWuS5Dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sec.16bits.net;
	s=rsa2401; t=1712536298;
	bh=hjh3yFUu6fnu0d4T4pR8McFYjmwT1lbo6Rm3KhRn1wU=;
	h=Subject:From:To:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:MIME-Version;
	b=Hc9XdX89eRr/sCbRLpm2IZxDFF0o5sMtqDbLdjXAnRODeJSErK2z5k+At+jcg/waj
	 7jbESyMMpfa/omkZIHinZqjO0rgwNp6p+wOMuevLtzMrVyeaNn7s++rFJgt5KxGVUi
	 hcQPWv3QTu1pUwyBlMO4C2PhmSoQjg4m+R0H6mpLSXPGCa3xoAUh4xo3p4FiNwpr60
	 r79YGrR67fIuJojbYZOzNrTZj3hDIxbFqMR6wJZw99ph62LL4+B0DgCHuPdHv0KG4l
	 FXDwbEU7F74GmsAXNKPHRBsgg4yicomcgDLgRoBd3cdXzki0utdvOV6EtByBjjHC3S
	 axOYumibS0spg==
Message-ID: <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net>
From: =?ISO-8859-1?Q?=C1ngel?= <oss-security@sec.16bits.net>
To: oss-security@lists.openwall.com
Date: Mon, 08 Apr 2024 02:31:38 +0200
In-Reply-To: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
References: 
	<loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

On 2024-04-03 at 03:31 +0000, Nick Sal wrote:
> Hi,
>=20
> Assume we filter SSH access only to a public domain subnet using the
> files hosts.{deny,allow} as seen below.
> Would this prevent an attack if a malicious payload was *not* sent
> from the allowed subnet?
> Trying to figure out if an attack like this was still possible, for
> the few days in March the backdoor was active and undetected in
> rolling distros (e..g. debian testing).
>=20
> /etc/hosts.deny:  sshd: ALL
> /etc/hosts.allow: sshd: "a_subnet"

If your sshd uses libwrap, blocking access except from that subnet
(I would check it is indeed doing what you expect, by trying from an
external ip) then yes, it would protect from that.
The libwrap filtering happens before the exchange identification.


>=20
> Moreover, allowing only public-key authentication for SSH does not
> help, isn't this right?

Right. It doesn't help in this case, since the backdoor happens at the
preauth phase, when it would be validating the provided public key
(certificate).

Regards


