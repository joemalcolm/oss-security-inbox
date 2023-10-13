Received: (qmail 29958 invoked by uid 550); 13 Oct 2023 09:55:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3276 invoked from network); 13 Oct 2023 02:40:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=9dNH1rLRykmSt3rHvfE0pOkxkIdoQY+DNGVOQYIXYuQ=; t=1697164807; x=1698374407; 
	b=YpDjWflDnfP+XGTO/VVVYYofCNtECULnuRXOuQv4Vz1Xpn6c4LD4L9nZ7Snne3VeIaD1nTLD4y4
	8UmdgQZwPTGiIGZwhCmA4bYtqwB7eNwonyBamupaSm6RgY/wrQyhhF5l+Enbx0jp7p+Vi9S8eno4E
	LagyCAlrYCcq9RlVUszUri2qCWzVEFq+EeMKTGv6AE6kanFIUXuEzyIRzMr9vV38wQm5pS+6blwpq
	amN96ruLI5w0F70EhtyiuFOoTrbtrGhq1ZIbP7lEy7OB8Nuj96iKemG/d63RzOKp9sUV7+BR5CLTG
	iGOYIW3f+xzoFk4RM4SgDFg5F6Kax+YSw7rg==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305e2; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=9dNH1rLRykmSt3rHvfE0pOkxkIdoQY+DNGVOQYIXYuQ=; t=1697164807; x=1698374407; 
	b=xyspFW+FvxfeoCpIkD248dMb4HYwUSt+zGKyWXZ0Cvr+XiWucLDnLOU8lqfUWSzmD/yNvOXF0ff
	1IGPlP6XiBw==;
Date: Thu, 12 Oct 2023 22:39:53 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <ZSit-X8iB2gx54hq@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HGYRpQb1i7UB2DSe"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: [oss-security] NATS: 2023-01: Adding accounts for just the system account adds auth
 bypass

--HGYRpQb1i7UB2DSe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[ CVE has been requested, still waiting for assignment, so we're just
  inventing our own in-house numbering for advisories; we'll make sure
  this one continues to work after the CVE is issued ]

NATS-advisory-ID: 2023-01
CVE: pending
Date: 2023-10-12
Fixed in: 2.9.23, 2.10.2

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.

NATS users exist within accounts, and once using accounts, the old
authorization block is not applicable.


Problem Description:

Without any authorization rules in the nats-server, users can connect
without authentication.

Before nats-server 2.2.0, all authentication and authorization rules for
a nats-server lived in an "authorization" block, defining users.  With
nats-server 2.2.0 all users live inside accounts.  When using the
authorization block, whose syntax predates this, those users will be
placed into the implicit global account, "$G".  Users inside accounts go
into the newer "accounts" block.

If an "accounts" block is defined, in simple deployment scenarios this
is often used only to enable client access to the system account.  When
the only account added is the system account "$SYS", the nats-server
would create an implicit user in "$G" and set it as the `no_auth_user`
account, enabling the same "without authentication" logic as without
any rules.

This preserved the ability to connect simply, and then add one
authenticated login for system access.

But with an "authorization" block, this is wrong.  Users exist in the
global account, with login rules.  And in simple testing, they might
still connect fine without administrators seeing that authentication has
been disabled.

The blind-spot on our part came from encouraging and documenting a
switch to using only "accounts", instead of "authorization".

In the fixed versions, using an "authorization" block will inhibit the
implicit creation of a "$G" user and setting it as the `no_auth_user`
target.  In unfixed versions, just creating a second account, with no
users, will also inhibit this behavior.


Affected versions:

NATS Server:
 * 2.2.0 up to and including 2.9.22 and 2.10.1
 * Fixed with nats-io/nats-server: 2.10.2 and backported to 2.9.23


Workarounds:

In the "accounts" block, define a second non-system account, leave
it empty.

    accounts {
        SYS: {
            users: [
                { user: sysuser, password: makemeasandwich }
            ]
        }
        DUMMY: {}  # for security, before 2.10.2
    }
    system_account: SYS


Solution:

Any one of these:

 1. Upgrade the NATS server to at least 2.10.2 (or 2.9.23)
 2. Or define a dummy account
 3. Or complete the migration of authorization entries to be inside
    a named account in the "accounts" block


Credits:

Problem reported by Alex Herrington.
Addressed publicly in a GitHub Discussion prior to this advisory.


--HGYRpQb1i7UB2DSe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCZSit+AAKCRDhPiXtYNF+
a+d1AQDd4nefEeskNWJKpiUhFXfljZq7VCxq5nXm4zw0UXkpfQEA/jntyZfv1gtu
CMXMd0cr0k4jRW+gdgVo0/yXJziK0Qw=
=KG0O
-----END PGP SIGNATURE-----

--HGYRpQb1i7UB2DSe--
