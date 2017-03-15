X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Wednesday" "15" "March" "2017" "16:05:20" "-0400" "Leo Famulari" "leo@famulari.name" "<20170315200520.GA6090@jasmine>" "34" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" "^Date:" nil nil "3" "2017031520:05:20" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "        leo@famulari Mar 15   34/1437  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<20170315192747.GA4073@hunt>" ("<87wpbq5uqz.fsf@gnu.org>" "<20170315192747.GA4073@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28316 invoked by uid 550); 15 Mar 2017 20:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29907 invoked from network); 15 Mar 2017 20:05:41 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=+rNgHul1i2IhVU3IB3QPHteT1Yk=; b=H9xPsb
	j/l7+ZtkGmdHq46++Gav1lT4krInHZ8eLdkbCu+USSelP/XLT+6gyrUN5vHGrCpM
	N3lWQsP2PUa/oiVS5USGKXQaSxPLMDnyezP5F2TbGByiLEUWtN4ahkJChWCfU7lE
	/YhEeFKNRh9VYS1e9SiMn3oRU3SYMcNCJ2Df8=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=+rNgHul1i2IhVU
	3IB3QPHteT1Yk=; b=ISsyZwI3TKBtzpR48KntVeAH6u0KyFbwUO6mxuk+H7S/J4
	90dRzvNsW2Ke/qE8NGISMjwfuzDYFK2ue3Lt52eY9VrcxxTvPUBGeWhCpVLGSSPx
	sOpXNt4T+qC/OU68aY1Xieccx1SZ7WtWvjnrv6+VXpH0P9DTNDBQX3/446sHI=
X-ME-Sender: <xms:h57JWJKjj-5ltafPJSPQuF-jFD5Z5InLBx5lVk-LtwVMqGqTtZ8FMw>
X-Sasl-enc: ACbxR6/9DWSpeByYtLLzT19tznFhvDoBwQjKP4zSXRnZ 1489608326
Message-ID: <20170315200520.GA6090@jasmine>
References: <87wpbq5uqz.fsf@gnu.org>
 <20170315192747.GA4073@hunt>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
In-Reply-To: <20170315192747.GA4073@hunt>
User-Agent: Mutt/1.8.0 (2017-02-23)
Date: Wed, 15 Mar 2017 16:05:20 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified
 package versions
To: oss-security@lists.openwall.com

--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 15, 2017 at 12:27:47PM -0700, Seth Arnold wrote:
> I suspect the solution is for people who rely upon these scanning tools to
> do the leg work themselves on the packages they care about. (i.e., the
> packages that annoy them the most.)

I think those of us who find these tools useful should work to improve
the CVE database by adding the "fixed-in-version" information as it
becomes available.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAljJnoAACgkQJkb6MLrK
fwj0iQ/8DkYgmPCIwzj1D+qHqhpDUOQosuz2CpUm9xloWNff6ZAQr/hFfq8L99QD
lOseSaWn3cMdTYoFlUa7sHREgtZyvZ99srLuPBToBkeb9//sode5OizzGFzS3yWL
/9gbQMy2R2vV1j9fH3SlmR5/uOrMR782eOujVI0MCjhFaIVqkMBlzahUh/HzITyV
1FGCpwF1plBPjjDA3OF0Z/mptYU2eJJf0pxEwKA3XMG/r4oumWn1xMXYfYJP3A7o
vBbMH7UfsiqckYApvrJb0p8DpIpnhzIYbRZog9bAtppl9l3RQcsShw6xG6sefUr0
Qa6fC+bykYdWqAsIT8kh8blpunkc50v8Q0ESNqwmwVAL899umTGbpkIwnei6RmdC
hSmJcqpRMvV5Xhrt44F8gL+FBws3IW7cPTSTKaB/8ZyxdE+CN5Ss2QopSMkA92XL
kTAtymmO3y/FurK11siiPed27NnDHMapYZb+3GZrneLgSKbYKA31tajKUaGD8NUb
fRhOnBsCKwaSq4t558ThHvJ9PtSPzq9mDT7TFi9SAq6918VE51gDRO4TImDI4kUz
hYQkomR4NCDyuylRR2MTxXdvKaYpeFemSxbRFzJZm73CID29V8C2cjETjq9jYBj3
Je0jOmlVV2QVOlQTt0DIV8ycHcI7gXnaPpE4LIiwD/MLh+j2fRI=
=YfU3
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
