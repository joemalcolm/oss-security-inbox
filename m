X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1427" "Thursday" "22" "April" "2021" "08:59:59" "+0200" "Peter Bex" "peter@more-magic.net" nil "40" "[oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       peter@more-m Apr 22   40/1427  " thread-indent "\"[oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23958 invoked by uid 550); 22 Apr 2021 07:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23920 invoked from network); 22 Apr 2021 07:00:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pu+LPy6MSM66XaySOffUGSoPKuFCfF5e7YdbvGl68ds=; b=dM27XoBH6hKVWyr740Y6IttxqC
	CEWVo/aPYO2D/MEICZR877pWiWNu/J7hOnbuy4y1+APuIJYrcRfvoGhjNmrSirgcM6Wwd7OkiQ+AU
	RPVsWVNbYzAfxr4/yyGVgT1XS2YnA/SeEYg3IiOpjDjaIg3OeXM2OVctB3+FyjWcQlAc=;
Date: Thu, 22 Apr 2021 08:59:59 +0200
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20210422065959.GI13079@scully.more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYaYz6F2svGt3wno"
Content-Disposition: inline
X-PGP-Key: https://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Malicious commits to Linux kernel as part of university study

--zYaYz6F2svGt3wno
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Probably a lot of you know this already but I consider it serious enough
to point out to the OSS security community at large.

The university of Minnesota has been banned from making any commits to
the Linux kernel after it was found out they'd been submitting bogus
patches to the LKML to knowingly introduce security issues:
https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/

They also published a paper:
https://raw.githubusercontent.com/QiushiWu/qiushiwu.github.io/main/papers/OpenSourceInsecurity.pdf

I don't know the scope of this research, but it could involve other OSS
projects, now or in the future, as well.  Hence this e-mail.  If you feel
it's spam or needless drama, feel free to ignore.

Cheers,
Peter

--zYaYz6F2svGt3wno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAmCBHusACgkQER25+ctF
ibD/5Af/dxwqxwwFVjF75eIDmkP53Cd8Bs7eibH0+iqmYc9tbFRdPQbVqNn33yur
DyZ7q7pmLBSnOoqoeOhk62t15mmh+AvQLq1bt2m1FS8fSeAmqejAj//JgqI1fZUq
pM2376GmXVxGhErnYYFUSGe6Hp0I7i58wybYAWtw6t2+xoF8asjBcGMTYOHyaHIJ
blcfvQenaQGbqcoPqZvdWOcQNC8GJq1kdEaBLlrwPMzltLNDmkqhWMPBwA2HsBbJ
xhOqDi3zLyGxadwAhJwhOCAM6edO1O6euDbLrIIMh5cbIjYMakgNcHIAdutCETEQ
T8G47TkVUGW+VN+C0NBlhSCtqJt3nQ==
=2ZAQ
-----END PGP SIGNATURE-----

--zYaYz6F2svGt3wno--
