X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4128" "Tuesday" "19" "May" "2020" "11:00:44" "+0200" "Otto Moerbeek" "otto.moerbeek@open-xchange.com" "<d1ab860e-7dda-f02e-483f-27444b31b9ba@open-xchange.com>" "109" "[oss-security] PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16 released fixing multiple vulnerabilities" nil nil nil "5" "2020051909:00:44" "[oss-security] PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16 released fixing multiple vulnerabilities" (number mark "U       otto.moerbee May 19  109/4128  " thread-indent "\"[oss-security] PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16 released fixing multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16 released fixing multiple vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1394 invoked by uid 550); 19 May 2020 10:49:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32254 invoked from network); 19 May 2020 09:00:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1589878846;
	bh=B/d8HyK5byii2T7XKeGgIeMN6tLAhACwpXzdOfgKasE=;
	h=From:Subject:To:Date:From;
	b=8/0pYHkTuoo47zPlQBzOIqnz2YdYrKIDyIox0tk0AyiVQS6qEv3Hdwv5oWSVM+Lkr
	 x0a17hvWHZrbdg+ePdcaXEQzYM411bcY6T1XsdOA90xA17MfC7ejdJxlBlSh/1Imri
	 nUOzOPVOIu/TsKTDLZfI13FBeP44Xn/oEWi3Ver5axR5SYkd8KrabSSDBEeEPwGaKE
	 ML4dbobIJRHjQHpH7nejsWMC0vTT51aLejgUGbF2YQ+Q7yhr6LYEbeseDLaXPYh/MV
	 /eTNbk5Dpk2Q/k/TpqzyJC3IgPBmTuk625oxQb3BTo7R+NWoNW+7C2BKF6VtBFgsUo
	 0TxAjrp4Z2QmQ==
From: Otto Moerbeek <otto.moerbeek@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <d1ab860e-7dda-f02e-483f-27444b31b9ba@open-xchange.com>
Date: Tue, 19 May 2020 11:00:44 +0200
User-Agent: Mozilla/5.0 (X11; OpenBSD amd64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mw8RY0q8JhVeG2WvBggyQo0BammYd58oS"
Subject: [oss-security] PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16 released fixing multiple
 vulnerabilities

--mw8RY0q8JhVeG2WvBggyQo0BammYd58oS
Content-Type: multipart/mixed; boundary="GBTVwepmulwhIkRXfAffJQRW7LXS9aEIp"

--GBTVwepmulwhIkRXfAffJQRW7LXS9aEIp
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello!,

Today we are releasing PowerDNS Recursor 4.3.1, 4.2.2. and 4.1.16,
containing security fixes for three CVEs:

- CVE-2020-10995[1]
- CVE-2020-12244[2]
- CVE-2020-10030[3]

The issues are:

CVE-2020-10995: An issue in the DNS protocol has been found that allows
malicious parties to use recursive DNS services to attack third party
authoritative name servers. Severity is medium. We would like to thank
Lior Shafir, Yehuda Afek and Anat Bremler-Barr for finding and
subsequently reporting this issue!

CVE-2020-12244: Records in the answer section of a NXDOMAIN response
lacking an SOA were not properly validated. Severity is medium. We would
like to thank Matt Nordhoff for finding and subsequently reporting this
issue!

CVE-2020-10030: An attacker with enough privileges to change the
hostname might be able to disclose uninitialized memory. This issue also
affects the Authoritative Server and dnsdist; since the attack requires
very high privileges and the issue does not affect Linux, we will not be
releasing new versions for those just for this issue. Severity is low.

As usual, there were also other smaller enhancements and bugfixes.
Please refer to the 4.3.1 changelog[4], 4.2.2 changelog[5] and 4.1.16
changelog[6] for details.

The 4.3.1 tarball[7] (signature[8]), 4.2.2 tarball[9] (signature[10])
and 4.1.16 tarball[11] (signature[12]) are available at our download
site[13] and packages for CentOS 6, 7 and 8, Debian Stretch and Buster,
Ubuntu Xenial and Bionic are available from our repository[14]

Note that the 4.1 packages will be published later today.

4.0 and older releases are EOL, refer to the documentation[15] for
details about our release cycles.

Please send us all feedback and issues you might have via the mailing
list[16], or in case of a bug, via GitHub[17].


[1]
https://docs.powerdns.com/recursor/security-advisories/powerdns-advisory-20=
20-01.html
[2]
https://docs.powerdns.com/recursor/security-advisories/powerdns-advisory-20=
20-02.html
[3]
https://docs.powerdns.com/recursor/security-advisories/powerdns-advisory-20=
20-03.html
[4] https://doc.powerdns.com/recursor/changelog/4.3.html#change-4.3.1
[5] https://doc.powerdns.com/recursor/changelog/4.2.html#change-4.2.2
[6] https://doc.powerdns.com/recursor/changelog/4.1.html#change-4.1.16
[7] https://downloads.powerdns.com/releases/pdns-recursor-4.3.1.tar.bz2
[8] https://downloads.powerdns.com/releases/pdns-recursor-4.3.1.tar.bz2.sig
[9] https://downloads.powerdns.com/releases/pdns-recursor-4.2.2.tar.bz2
[10] https://downloads.powerdns.com/releases/pdns-recursor-4.2.2.tar.bz2.sig
[11] https://downloads.powerdns.com/releases/pdns-recursor-4.1.16.tar.bz2
[12]
https://downloads.powerdns.com/releases/pdns-recursor-4.1.16.tar.bz2.sig
[13] https://downloads.powerdns.com/releases
[14] https://repo.powerdns.com/
[15] https://docs.powerdns.com/recursor/appendices/EOL.html
[16] https://mailman.powerdns.com/mailman/listinfo/pdns-users
[17] https://github.com/PowerDNS/pdns/issues/new/choose

--=20
kind regards,
Otto Moerbeek
Senior PowerDNS Developer

Email: otto.moerbeek@open-xchange.com




--GBTVwepmulwhIkRXfAffJQRW7LXS9aEIp--

--mw8RY0q8JhVeG2WvBggyQo0BammYd58oS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEmQw9Dqx8J13GsYQ26sq5Cxlj7CsFAl7DoDwACgkQ6sq5Cxlj
7CsfXQf/TZ9q279bYe/jzkAK7EtYbfVxVC1+rUldCwllmtA7X7RdI++Ygdq5D4w/
oqTlZwzZPQmYR9ssJgUL4TotJJNo6dJj6+yGOBTPRjm/xLXSYqAm9t6WQpnGUdGk
lLWiWxFlJ21R7pi/souw4hzqtPK7J7mGkXWTi5Po8XMvDyQcSG9eCu0sQzO3pz3O
6eSR2mm3LjOsXEWuyYd+cpKFjtcPfkvRvTjq73KBOdIDWgbsAcj3HE9T/tS6kDKX
Us0YR9PMVAcie9/NmIqB/x1wuN6JAxtbyL9duETjxDgnCwWx5OI4lJI4fJefhmhA
uMazNTw9ZLjLU8rY597FQ6ZvIktVSg==
=KFCR
-----END PGP SIGNATURE-----

--mw8RY0q8JhVeG2WvBggyQo0BammYd58oS--
