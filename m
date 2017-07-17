X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1289" "Monday" "17" "July" "2017" "08:51:29" "+0200" "Peter Bex" "peter@more-magic.net" "<20170717065129.snmhfal5wdsny4yy@scully.more-magic.net>" "39" "[oss-security] CVE-2017-11343 CHICKEN Scheme: algorithmic complexity attack in hash tables" nil nil nil "7" "2017071706:51:29" "[oss-security] CVE-2017-11343 CHICKEN Scheme: algorithmic complexity attack in hash tables" (number mark "U       peter@more-m Jul 17   39/1289  " thread-indent "\"[oss-security] CVE-2017-11343 CHICKEN Scheme: algorithmic complexity attack in hash tables\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3709 invoked by uid 550); 17 Jul 2017 06:51:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3688 invoked from network); 17 Jul 2017 06:51:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MKphciZFSLW8gHYsZau7R2phO/tfYyJZwqgWOHnoHCo=; b=mbWWum/04AHzhCWJNCRN/F9JRX
	wY8MWxDzCpxqymHEI5Y3of7/EnqfgKcLskBtmPebjBUS01UJcPBfgNmFrfA1bJvKHyTiL+2TDd+R6
	ObQS43XrC7s0Ac6JaHqqebGSfebMHO4tbDrNuraUD8HWMXpEGY9oNBqK1LYz+/lWbXfI=;
Date: Mon, 17 Jul 2017 08:51:29 +0200
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20170717065129.snmhfal5wdsny4yy@scully.more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xlx72bzafx5zltym"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2017-11343 CHICKEN Scheme: algorithmic complexity attack in hash
 tables

--xlx72bzafx5zltym
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I just received the CVE-2017-11343 assignment for an issue in
CHICKEN Scheme.  An attacker is able to cause O(n) lookup for
hash tables by predicting the buckets in which interned symbols
will end up, due to a partially incorrect fix for CVE-2012-6125
where the randomization factor was determined before initializing
the PRNG with a seed state.

This issue affects only the Scheme symbol table, not user-created
hash tables.  All CHICKEN releases up to and including 4.12.0 are
affected.

More info:
http://lists.nongnu.org/archive/html/chicken-announce/2017-07/msg00000.html

Cheers,
Peter Bex

--xlx72bzafx5zltym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAllsXnEACgkQER25+ctF
ibBBLQf+OFEbFsrcI8FNKNNDunqAW1OfnIhXR1xzfooZs2mpadobQ0ij0Pom/CQ+
qnBP70Vr06yssRXUFB7O8tGDAD0vRDKzxOG38RsYz1AzlZhgfG65LRV9gTt8FFWQ
cQ2EE0cf4KH7PbEgdh2cS62Gy9wB+bHkstHuKjmxD/o8FfWfR7scZU7/iA0wv5Bm
paxZvlxaFMHYByAyGNdAJ6Xi4nKk0MQix33EP+nGCyx4f12fMOpfZ+rdbTa6V5ju
NPx4grQ8beH4I7BuLySk+OTpIj54I9F9RJ/w3BYXBM5hUmboaXzUAeebYMK6qSbF
39Db0NusstDOe2BU6U9cX2vfvMigbQ==
=wGwU
-----END PGP SIGNATURE-----

--xlx72bzafx5zltym--
