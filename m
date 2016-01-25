X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Monday" "25" "January" "2016" "02:53:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160125075349.450551BE0EA@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: Linux kernel : Denial of service with specially crafted key file." nil nil nil "1" "2016012507:53:49" "[oss-security] Re: Linux kernel : Denial of service with specially crafted key file." (number mark "U       cve-assign@m Jan 25   47/1671  " thread-indent "\"[oss-security] Re: Linux kernel : Denial of service with specially crafted key file.\"\n") "<628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>" ("<628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14026 invoked by uid 550); 25 Jan 2016 07:54:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14004 invoked from network); 25 Jan 2016 07:54:00 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <628131663.11879492.1453704093304.JavaMail.zimbra@redhat.com>
Message-Id: <20160125075349.450551BE0EA@smtpvbsrv1.mitre.org>
Date: Mon, 25 Jan 2016 02:53:49 -0500 (EST)
Subject: [oss-security] Re: Linux kernel : Denial of service with specially crafted key file.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An issue with ASN1.1 DER decoder was reported that a specially created
> key can lead to a kernel panic via x509 certificate DER signature
> parsing.
> 
> Vulnerable code:

>> crypto/asymmetric_keys/public_key.c

> int public_key_verify_signature(const struct public_key *pk,
>                                 const struct public_key_signature *sig)
> {
>         const struct public_key_algorithm *algo;
> 
>         BUG_ON(!pk);
>         BUG_ON(!pk->mpi[0]);
> 
> An attacker could craft a BER file without a public key and panic the system.

> https://bugzilla.redhat.com/show_bug.cgi?id=1300237

Use CVE-2016-2053.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWpdMuAAoJEL54rhJi8gl5SRMP/3rjH4bN46xreT6aN9KS6CR6
PzOg7gaoVxRKQb6Ygc8NoxLCoSpnetUv14T3CSlN7J6RgVz6jy+CBOyIbkzMgm7S
Le8DttB6hiv0shB+LqZhVnajET7r6mGyrYYiJ0rgsNaupI1QZMnwHGv2yySvSkWY
SSp65kpmNqQ4J9SWxJ9EiMYjrhCEa9q9hsTmglosTwVVqR87wyIWFvmvyDCZlt+f
9or4hrfJjPCLK9q9iJU18SlczTK/VNsJJMHOI6ZQb0lZEjX9MvnwherHnVe5VE1y
a5ABDMFNgEiFeQWOm+pViwoGDG2EtDOHEqd2ZplPdW9MUwFKMeqAlZ+xy6M/r477
Wqw25I9iwAVnKJ2c9a/JLQr4vFWXoLGjYmaT3dp8F7NrQO2VB/W0vG2VWlYltrgp
drRvy0P10xFGsN/CxjgTw9v8CNkRUSRI4wgVNsm+SBS+PNnLwH+FgFOhS6XNFPRy
R4EvIOec0WHrkPQRfL0qIlqA6sUfNuwQfQO4CvksEtpOPeeDVUwDVXwkMULWWSzL
3yOE3eMGgP7ALJ88TS2uzMGH0U5AfaBAnDmepo3RI7a4kbqHJt68pKkf3uuF1HIw
dp35mQ7gGJHtWoPAVZ/F7DdJkgU2hEecTle4ZP3D2c5rTpYQCS0gDkMEqjDvZ+BF
jbbGSEREYy5xgjenLML7
=NE0Y
-----END PGP SIGNATURE-----
