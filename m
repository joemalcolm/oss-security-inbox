X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Tuesday" "19" "June" "2018" "20:06:04" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20180619180604.e7pwkjjgemwdpwm7@pali>" "51" "[oss-security] CVE-2018-12558: DOS in perl module Email::Address" "^Date:" nil nil "6" "2018061918:06:04" "[oss-security] CVE-2018-12558: DOS in perl module Email::Address" (number mark "        pali.rohar@g Jun 19   51/1694  " thread-indent "\"[oss-security] CVE-2018-12558: DOS in perl module Email::Address\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8004 invoked by uid 550); 19 Jun 2018 18:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7986 invoked from network); 19 Jun 2018 18:06:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Obq0+K/VJKRoAfpfLmtbKRW/AGaiKQ4t1vVr6CQC+EY=;
        b=dLOT+PEhzb+xXH0Z4cQ4CwkFYJjaM/QcvNqwluJ0QhYetWAdgw31PfUruBtpdt8ad2
         zB/aGKkX6eYeB0XwYk8YymIpsIviX+NLGebUmxkVUWpTnJaJ5v2uapUszL+L2QSR9byj
         mT7wmu34muTpRARpqgDee8kLTWF3FrtAhTVeGqG3WDTBhPOpU6K063hOAoHO50Fe6u2k
         yUv+DYi+ixBFX2xEJFogut3ItKC9N6XxQN7ob4KBCyg0aKG6v++wmoVIMPr3MMoJM6lr
         TPwkvyL52LfQawob0ssTSX8MbUrtYuYTMxRHI1pOIXkRPXlDomTkqpDP97Fg8lxzgOSg
         TqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Obq0+K/VJKRoAfpfLmtbKRW/AGaiKQ4t1vVr6CQC+EY=;
        b=aVo+nMDlAGbF7Ii+upjCqwMRSrCBcMiT8Go4GbqUSN09YCXjsV6+e9nQmMizjs/Tp6
         qL9aeDsLdie5UZZG3X56xjWK3V25z7N5n2p/RrU9uk0ktt30d0qgeTVNIfSerwzAGLNy
         CCAJp6w8UoVZvjpZqB+BNmesFKWnxO0CP5iBTx6W6tK+JKrz3hMwvs67ZgL4gZrWKCyP
         JVjfszg7eVCFPD+p8e84vIkZ0pBu2h4K5i2uesdVwA1Ut2HmxvlzYPONyHKCr2eLUTwW
         15c4CG5oaRBPk1cGF+aWWQw5K7AzZnzBsAgKTimSbzORnNVy8ay5wOsaKKXu/n1kMyFr
         krZg==
X-Gm-Message-State: APt69E3L963n9b4hxXfALo/p6TbNebij7egeB5s0GKFCl/En0g9gpDsk
	ygUmYd5SPRJZ3crfnGZR3YRDqg==
X-Google-Smtp-Source: ADUXVKK2IKKpJ226+1PbYKZJabHO2AGjG0V25Wlq3qDz/TRcqnk7OnsymUO0IdYMldzUS6uBeiUhrA==
X-Received: by 2002:a1c:928c:: with SMTP id u134-v6mr12293561wmd.106.1529431566267;
        Tue, 19 Jun 2018 11:06:06 -0700 (PDT)
Message-ID: <20180619180604.e7pwkjjgemwdpwm7@pali>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h4dsucwqmliy6al5"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Tue, 19 Jun 2018 20:06:04 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-12558: DOS in perl module Email::Address
To: oss-security@lists.openwall.com

--h4dsucwqmliy6al5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello!

Perl module Email::Address, also in the last version 1.909 is vulnerable
to Algorithm Complexity problem and can cause Denial of Service when
attacker prepares specially crafted input. Root of this problem is that
parsing of email addresses in Email::Address module is done by regular
expressions, which in perl can be exponential.

The trivial input is 30 form-fields characters. You can test it with
following oneliner:

$ perl -MEmail::Address -E 'Email::Address->parse("\f" x 30)'

Vulnerable are all applications which receive (untrusted) emails and
parse address headers (From/To/Cc/...) by Email::Address module. Such
application can be DOSed by sending email with 30 form-fields characters
in From or To header.

Note that this is not the only one problematic input, due to way how is
Email::Address implemented it should be possible to prepare more
non-trivial inputs.

This problem was already reported to Debian Security Team and they
suggested to ask MITRE for assigning CVE identifier. MITRE now assigned
CVE-2018-12558.

References:
https://metacpan.org/pod/Email::Address
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D901873
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-12558

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--h4dsucwqmliy6al5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCWylGCgAKCRCL8Mk9A+RD
Ul2TAKCnPQnzLtbhKInD17okR824G5jFhwCeKKzGoV2nplg3FVdTh3QmigJxzmc=
=x9T8
-----END PGP SIGNATURE-----

--h4dsucwqmliy6al5--
