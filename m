X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1654" "Thursday" "23" "February" "2017" "11:51:39" "-0500" "Leo Famulari" "leo@famulari.name" "<20170223165139.GA11848@jasmine>" "41" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022316:51:39" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       leo@famulari Feb 23   41/1654  " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223170848.17d43fb3@pc1>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" "<20170223170848.17d43fb3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28469 invoked by uid 550); 23 Feb 2017 17:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7241 invoked from network); 23 Feb 2017 16:51:53 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=unJO5nfqFO6iqII4C4uZsUzCYNg=; b=wH649U
	wjBmc7jlK6C3pqKFWwr/y1GAQ40eQn05dO0g94mekiENifgITqpaGYmdCXF/9AMI
	x818u2nJbwKQMzhApwl8A3DffmWnztDsliAz4ZDHhEQU1ZruryRZPIewdmktON6z
	LGqHaoy7bFhLUlc6kPv630umDzRb2v9c//cAw=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=unJO5nfqFO6iqI
	I4C4uZsUzCYNg=; b=tD9k91qYKGns4+t6pplZyA/f8uIsJ5xwWTUYo2/gNF1Qe+
	p2Ap2jLZkXbxVWkUAvF+S7205fuAMj2c8/N2YE2ESJ3mMQ1v6SKSmoeZhMOxVO4J
	TdwDqp9YQeDum8KiVeRgzgSK/rPBaaphT5PQz6sRvHn8N94Jamq5/8xqLsvac=
X-ME-Sender: <xms:HROvWFxD24AnmhUzRzb2vDqVTMk6z91VeWf4FEtUFfSKe-9MfUKYGw>
X-Sasl-enc: xRuY5LDsuX/UK8UQYbLc93lS4oWDkMbSl6dG5rPhRycK 1487868701
Date: Thu, 23 Feb 2017 11:51:39 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20170223165139.GA11848@jasmine>
References: <20170223074630.GB26098@suse.de>
 <20170223104054.42060545@pc1>
 <20170223100148.GA23394@suse.de>
 <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
 <20170223170848.17d43fb3@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline
In-Reply-To: <20170223170848.17d43fb3@pc1>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 23, 2017 at 05:08:48PM +0100, Hanno B=F6ck wrote:
> Anyone have a good idea who is using shadow vs. util-linux su? Do they
> have specific advantages/disadvantages, would it be reasonable to try
> to get all distros to use them same one?

Debian uses shadow, but is discussing a switch to util-linux:
https://packages.debian.org/sid/login
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D833256

GuixSD is using shadow:
https://git.savannah.gnu.org/cgit/guix.git/tree/gnu/system.scm#n579

I'm also interested to learn the pros and cons of the two
implementations.

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlivExgACgkQJkb6MLrK
fwidNg/+PbdtVzcQgcYAIw3LLE6La+HPmIfWcRMja0QCEb47ruScq2AwKn2HNQQw
YTesr4NWzNhUs5esctwjXqlo5V9C5OtKJUN9So/S12qCjc7DN0g7e8fkSgTrqbU0
v1zT72/XVl1gIlS62ro0z9MNgsC9cy8zJUp/KVcllIE69u0Zk4ZuprJjbnZfhFG6
OYedkmUgnxZ8PfaUuxCGnwewI3WMpd19NcMWrfmXlcGkiAkPTB6d9t0GyHMBdjjM
QGoDj+lfzFdKmSpbGDdyMIpu/VHsdlVs18KAO9JzXMWe5YNJjv47ex3uAytB5VQ0
VScw957+/ptn6Qeru67JpuZLTZTh5/6Q2YToJSGyzbXqAWxzlz7OvYZhpgW14fON
EqDc06iGlogFwKBeR8UFEtPLWWNYF+JThMATbVrmJ5rq35rmaTZc4AVQ2PAyYaOh
e+SUMtvG7Mn1lkTntQrRenZ1oaQ/UTYvnveF5JkEWFg2duGapvp6pwu7dXgHE729
vk1qRN2lLjcnJe2kWghk/X0/IUpb0xMVm1C13OjCQipbIZeJjS5Nz/xcX5gDiErN
yp0AdmImHwkDTnqzk+2VIyafPgs8iPK9EOCE2GW8yqwJbprB3Xs1lsUIBvRgjkOF
9uWR94RvIJGXYJhwSPdhOfOFfoQqT3nkmesuXdKXdxMR5a5/NPA=
=ahFy
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--
