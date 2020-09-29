X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4217" "Tuesday" "29" "September" "2020" "18:48:30" "-0400" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20200929224830.GA560751@fullerene.field.pennock-tech.net>" "118" "[oss-security] [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws, nats.deno)" nil nil nil "9" "2020092922:48:30" "[oss-security] [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws, nats.deno)" (number mark "U       oss-security Sep 29  118/4217  " thread-indent "\"[oss-security] [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws, nats.deno)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws, nats.deno)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5635 invoked by uid 550); 30 Sep 2020 07:13:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2007 invoked from network); 29 Sep 2020 22:48:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202008; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=OnXsoL/JafosJWpVivIaowu3oTn18KzxPRq3qwoIAVM=; t=1601419726; x=1602629326;
	 b=TLNCAPiMSTGG6aVmjeHhz65XruU7q9U5NoAy5nmB8poyjWuNN32eTU3rfgKgR3xbaZbR4SGnx7
	gGk9fels6V7PKYs8z771sU43A4oWwPldyGf170BE1yqK26G9xWfvpHwRA2n5NMJXIN/7GVjh/Q0Ve
	4Zj0JLsC/tMbiwgG3jJVq/DHKDuEQY3O2GKlQndoxpTW9WMETQ/X/p42G5+8YMkaFLDqJo5EECt1D
	bI/KPorfxHCwWwk4aIfgoosKSOmi5hzdXK7+9W/My363puARxi9tsg4YUeL74a7QQ8sNmc46RcTj3
	VvtDqNUk4BctkY7NhseXx/31SHxRd563gQEGA==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202008e2; h=OpenPGP:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=OnXsoL/JafosJWpVivIaowu3oTn18KzxPRq3qwoIAVM=; t=1601419726; x=1602629326;
	 b=NO+ljKZBFenYrS5s/fAsAnRKSEwg0cnopV2XsNLJ43KGj03PZ9OhFOuBdBgrx5I3WnwbiEtdEA
	8rsdjjoIgiCA==;
Date: Tue, 29 Sep 2020 18:48:30 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <20200929224830.GA560751@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
OpenPGP: url=https://nats.io/.well-known/openpgpkey/hu/96bqcjktdxra6hd6mor16dn1huc49irf
Subject: [oss-security] [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws,
 nats.deno)

--DocE+STaALJfprDB
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [CVE-2020-26149] NATS project vulnerabilities: nats.js, (nats.ws,
 nats.deno)

CVE: CVE-2020-26149

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.
The server is written in Go and there are client libraries in many languages
and frameworks.

Problem Description:

Preview versions of two NPM packages and one Deno package from the NATS
project contain an information disclosure flaw, leaking options to the
NATS server; for one package, this includes TLS private credentials.

The _connection_ configuration options in these JavaScript-based
implementations were fully serialized and sent to the server in the
client's CONNECT message, immediately after TLS establishment.

The nats.js client supports Mutual TLS and the credentials for the TLS
client key are included in the connection configuration options;
disclosure of the client's TLS private key to the server has been
observed.

Most authentication mechanisms are handled after connection, instead of
as part of connection, so other authentication mechanisms are
unaffected.
For clarity: NATS account NKey authentication is NOT affected.

Neither the nats.ws nor the nats.deno clients support Mutual TLS: the
affected versions listed below are those where the logic flaw is
present.  We are including the nats.ws and nats.deno versions out of an
abundance of caution, as library maintainers, but rate as minimal the
likelihood of applications leaking sensitive data.


Affected versions:

Security impact:

* NPM package nats.js:
  + mainline is unaffected
  + beta branch is vulnerable from 2.0.0-201, fixed in 2.0.0-209

Logic flaw:

* NPM package nats.ws:
  + status: preview
  + flawed from 1.0.0-85, fixed in 1.0.0-111
* Deno repository https://github.com/nats-io/nats.deno
  + status: preview
  + flawed in all git tags prior to fix
  + fixed with git tag v1.0.0-9


Impact:

For deployments using TLS client certificates (for mutual TLS), private
key material for TLS is leaked from the client application to the
server.  If the server is untrusted (run by a third party), or if the
client application also disables TLS verification (and so the true
identity of the server is unverifiable) then authentication credentials
are leaked.

Workaround:

None

Solution:

Upgrade your package dependencies to fixed versions, and then reissue
any TLS client credentials (with new keys, not just new certificates)
and revoke the old ones.

---

Personal addenda:

If anyone has any more questions which aren't for oss-security, then our
Slack tends to be pretty helpful, https://slack.nats.io will arrange an
invite link for you if needed, or connect you through.  If you want to
stick to email, I can be reached at <pdp@nats.io>, and there's a PGP key
for that address in WKD if it really needs to be private.

Really, no official releases included this mistake, but we know some
developers have done `npm install nats@beta` and that's why we're
issuing an advisory.  We've marked the bad NPM versions as deprecated
and have a ticket in with NPMJS to get them marked vulnerable too.

-Phil

--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEVxDd4DGA5NfSuf2jZNNikmKH3kMFAl9zubMACgkQZNNikmKH
3kNtnQ//Tp+0WO6AN4USMVt5sOFtE0fCmWef2JIj+9VOghXvi6dKVHDZgpGi1iXR
RC7FrXiIQqp32VMWJ17Wu/bjpsAFFnoG9i78cedt7IUfymAngouNrYTo+i/KU9X6
xlCKXJvzZUgc9GXxzIrVA7bVe2enN0YIfe1GB2uV4BlMXmXxVUYQeO15vbu7M+LN
Z4O62nnzGufZewcjlvxuZTT2yVjadzB1X5H9XHqWssBBM8Aztin2lclvJJIWDwre
MWIsM1MIc5cgFoSu6xYci/wbrfnadDUPDefYYk5Y43Mbuad5RPB1JXKJ0YIde8DY
wnCnP+wwecHw2qHzi9Sm3BRoWsufaeV3toktFfgXOm9J29mvL9zlGdIPr1X8vM7b
Bu4vasEGpifSjTP95TMtLN0lDRlT61QniFR2ahDlXTM2gpdOfGp0Cd+JfKB1EApt
s/+VX400ym5F+xjEKXFucKDENbA9StsrG8GB2VmDfvcjjACl/ez0CuCiLqApCTXP
G5JbFGyAAzfYAHhsAv7qaUcOZB/udzJ3BCD01nbjZie+wxrtdAQ9i+5tF89j2p/V
StJy+0aFAhuwcHWi8ztGzcw3HMItE1+OFtvijCz1NjM/jaTrNJcUnJD5BMFn1Lrr
VIu36ZXXOzT9IOU9OMZrNfYieq51GClR+R2UfwC/y/lgx7trqNI=
=Y/xl
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--
