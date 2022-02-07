X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3233" "Monday" "7" "February" "2022" "14:50:41" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" nil "99" "[oss-security] [CVE-2022-24450] nats-server unconstrained account assumption by authenticated clients" nil nil nil "2" nil nil (number mark "U       oss-security Feb  7   99/3233  " thread-indent "\"[oss-security] [CVE-2022-24450] nats-server unconstrained account assumption by authenticated clients\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2022-24450] nats-server unconstrained account assumption by authenticated clients" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1746 invoked by uid 550); 7 Feb 2022 21:18:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15640 invoked from network); 7 Feb 2022 19:50:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202202; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=vCDpgWGOiFz8txXqDeh97h0QUM8So7XRY8Ny+SlZV9o=; t=1644263457; x=1645473057; 
	b=eZviwIUPNJD2qO/jLidQrU1n+gB1OZapAKXdKUeQI04SMovdsqtXMFZbJtlTzEHe3wrEScJOodV
	qkMJofiyEw4vrWM6T2RclihGEQUviugHA7TyesqFHoiI6/ZYbfrEt4SkY7sMdxcMMUd5s1EcXr4C+
	zQaY2h9ZnS67FhjERwCgs2bYwB5FKoavn0cWurjykyrrY4XzJ//NMuhsrmKjY0OWYAnCoPoD31nTR
	T/YX1ppNWekAB/Q+TJNiVQtrbbT9rmvlTxTGlA57vl14TJr9XL5DFWmmK2/w0VOTV25svgAp3XR1q
	jAarYDGZdG64VIiX3AW64u/EX1GY7+EJGoRw==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202202e2; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=vCDpgWGOiFz8txXqDeh97h0QUM8So7XRY8Ny+SlZV9o=; t=1644263457; x=1645473057; 
	b=qnXTTwUk6kw1FyvA3Ww6PoR4VGs1bLpbpBU00cnYB7Xi5HivbkV22HodDygUjzFxASxAxm/MUNx
	ZAjm4vCyMDQ==;
Date: Mon, 7 Feb 2022 14:50:41 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <YgF4EUUAWvh0f9Yh@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fYeWu/QyMd/GTeWB"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: [oss-security] [CVE-2022-24450] nats-server unconstrained account assumption by
 authenticated clients

--fYeWu/QyMd/GTeWB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

CVE: CVE-2022-24450
Date: 2022-02-07

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.

The NATS server provides an optional account system for multi-tenancy,
such that Users live inside Accounts.  Users exist only at authentication
time; thereafter actions are all scoped to their account.  If Accounts
are not in use then normally all users are in the Global account, but
there is a System account most users should not have access to.

The NATS server can be embedded inside other software; any such software which
uses authentication managed by the nats-server is affected.


Problem Description:

NATS nats-server through 2022-02-04 has Incorrect Access Control, with
unchecked ability for clients to authorize into any account, because of a
coding error in a long-extant experimental feature.

A client crafting the initial protocol-level handshake could, with valid
credentials for any account, specify a target account and switch into it
immediately.  This includes any other tenant, and includes the System account
which controls nats-server core operations.

For deployments not using multi-tenancy through NATS Accounts, there is
still a vulnerability: normal users are able to choose to be in the System
account.

An experimental feature to provide dynamically provisioned sandbox accounts was
designed to allow a server administrator to turn on an option to allow clients
to dynamically request a brand new account inline at connection time.  This
feature went nowhere, but lived on in the code and was used by a number of
tests; support was never added to any client libraries or to the documentation.

A bug in handling the feature meant that if someone did in fact have valid
account credentials, then they could specify any other existing account and
they would be assigned into that account.

Release 2.7.2 of nats-server removes the feature.
Because of the lack of client support and absence from protocol documentation,
we feel this is safe operationally as well as the safest fix for the code.


Affected versions:

NATS Server:
 * All 2.x versions up to and including 2.7.1.
 * Fixed with nats-io/nats-server: 2.7.2
 * NATS Server 1.x did not have accounts.
 * Docker image:  nats <https://hub.docker.com/_/nats>

NATS Streaming Server:
 * All versions embedding affected NATS Server:
   + Affected: v0.15.0 up to and including v0.24.0
   + Fixed with nats-io/nats-streaming-server: 0.24.1
 * Docker image:  nats-streaming <https://hub.docker.com/_/nats-streaming>


Impact:

Existing users could act in any account, including the System account.


Workaround:

None.


Solution:

Upgrade the NATS server.


References:

 * <https://advisories.nats.io/CVE/CVE-2022-24450.txt>


--fYeWu/QyMd/GTeWB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCYgF4BgAKCRDhPiXtYNF+
a9FIAP9oi1BVTlRA4qcUJ6yfpEcKUT8SRST7NUtWm4ZcNcW3PgEAv9BFFrT0XkYo
s4aQ2Du7s07zazy4iLFc1iSyS1iwRQs=
=pGTR
-----END PGP SIGNATURE-----

--fYeWu/QyMd/GTeWB--
