Received: (qmail 16336 invoked by uid 550); 8 Apr 2025 20:29:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19546 invoked from network); 8 Apr 2025 20:13:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202408; h=OpenPGP:Content-Type:MIME-Version:Reply-To:
	Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=6hBODjIaL2eJC3aYi/xhrtoXa2RitQFQBJa++8oQfKY=; t=1744143184; x=1745352784; 
	b=QZLvZJBUrQHpS885aNlyb5VWc7M23aBTkunfRk22e+MTKsyXuMDk2DDmbH+r4fON3Gzbb4LxmfS
	iad9o4J8Vk9VXdJFb/ZXuwp2jiQDFPN7CRCwWyvZSh6qfDg+EOFroAugRb8DUro3X8Yv4m4lgYNJC
	v3XFsIfrFO9Uzc2IwVg5pD+wi/ShzZ1LoZGBzJ51BVKscsQ4yXKMsZ8kJUXhPDbngs1N0DXOT2uzp
	sSiKVseEzLdlqenVHJMBWZ4rXPNwI5c5PnK05tx3CvO56uJYsRJrsD3N9lWvBp5KMoxgeCIup/+ah
	H8hj449BVJndv2p73bYKtfZ78vNu5CyT37Xw==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202408e2; h=OpenPGP:Content-Type:MIME-Version:Reply-To:
	Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization:Auto-Submitted;
	bh=6hBODjIaL2eJC3aYi/xhrtoXa2RitQFQBJa++8oQfKY=; t=1744143184; x=1745352784; 
	b=wLiDGtaVWEvGrDtuu20PGOeN7dNUWG7H++hXjYpn8YmEOEBt9sIKobIj7vSkKd5ue5dmj+kl5Zl
	Q6lGC+HM/BA==;
Date: Tue, 8 Apr 2025 16:12:49 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <Z_WDQW-c48zcimAf@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/yBInQGRIXpwZTnJ"
Content-Disposition: inline
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/key2020-cv25519.asc
Subject: [oss-security] CVE-2025-30215: nats-server: Missing access controls for JS API

--/yBInQGRIXpwZTnJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Missing access controls for JS API in multi-tenancy

NATS-advisory-ID: 2025-01
Aliases: CVE-2025-30215, GHSA-fhg8-qxh5-7q3w
Date: 2025-04-08
Fixed-In: nats-server 2.11.1, 2.10.27

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.

The NATS account system provides for multi-tenancy and isolation.
JetStream provides for persistent storage of messages and at-least-once
guarantees.


Problem Description:

The management of JetStream assets happens with messages in the `$JS.`
subject namespace in the system account; this is partially exposed into
regular accounts to allow account holders to manage their assets.

Some of the JS API requests were missing access controls, allowing any
user with JS management permissions in any account to perform certain
administrative actions on any JS asset in any other account.
At least one of the unprotected APIs allows for data destruction.
None of the affected APIs allow disclosing stream contents.


Affected versions:

NATS Server:
 * Version 2 from v2.2.0 onwards, prior to v2.11.1 or v2.10.27


Workarounds:

None


Solution:

Upgrade the NATS server to a fixed version.


Credits:

This problem was reported by Thomas Morgan on 2025-03-05.


Timeline Note:

The GHSA is currently (2024-04-08) still draft, and we intend to publish
it one week from today, with the original reporter's full details on how
they verified the bug.


References:

 * This document is canonically:
   <https://advisories.nats.io/CVE/secnote-2025-01.txt>
 * GHSA advisory (pending):
   <https://github.com/nats-io/nats-server/security/advisories/GHSA-fhg8-qxh5-7q3w>
 * MITRE CVE entry:
   <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2025-30215>


--/yBInQGRIXpwZTnJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCZ/WDOAAKCRDhPiXtYNF+
a7DoAQCFTGp10m0oKo2gnXOZ9wyvl8PE4vh91hsGTQvp+616RgEA+afEcXgaIsTw
lPdBkm4nX7oD83hsZd8TowSQUOgHNAc=
=aDrL
-----END PGP SIGNATURE-----

--/yBInQGRIXpwZTnJ--
