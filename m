Received: (qmail 30683 invoked by uid 550); 15 Aug 2024 10:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12281 invoked from network); 15 Aug 2024 07:13:53 -0000
Date: Thu, 15 Aug 2024 10:13:44 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1371066295.286.1723706024128@asd-stable-core-mw-groupware-0.asd-stable-core-mw-hazelcast-headless.asd-stable.svc.cluster.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_285_1584433358.1723706024128"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.28.29
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] Dovecot CVE-2024-23184: Having a large number of address headers
 (From, To, Cc, Bcc, etc.) becomes excessively CPU intensive

------=_Part_285_1584433358.1723706024128
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Affected product: Dovecot IMAP Server
Internal reference: DOV-6464
Vulnerability type: CWE-770 (Allocation of Resources Without Limits or Throttling)
Vulnerable version: 2.2, 2.3
Vulnerable component: lib-mail
Report confidence: Confirmed
Solution status: Fixed in 2.3.21.1
Researcher credits: Vendor internal discovery
Vendor notification: 2024-01-30
CVE reference: CVE-2024-23184
CVSS: 5.0 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:N)

Vulnerability Details:
Having a large number of address headers (From, To, Cc, Bcc, etc.) becomes excessively CPU intensive. With 100k header lines CPU usage is already 12 seconds, and in a production environment we observed 500k header lines taking 18 minutes to parse. Since this can be triggered by external actors sending emails to a victim, this is a security issue.

The main problem is that each header line's address is added to the end of a linked list. This is done by walking the whole linked list, which becomes more inefficient the more addresses there are.

Workaround:
One can implement restrictions on address headers on MTA component preceding Dovecot.

Fix:
Install non-vulnerable version of Dovecot. Patch can be found at https://github.com/dovecot/core/compare/8e4c42d%5E...1481c04.patch

------=_Part_285_1584433358.1723706024128
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v@RELEASE_NAME@

iQEcBAABCgAGBQJmvaqoAAoJEBk7Y2OzREIG2t4IAI0RWwOmtD19Oizo0anwZF3T
gmC23SROz57a+Sn3so9b/dHmo53wegyZYAXnikVoKKveBXrjhFUTDP+RFOSa9llJ
Pir6fPeN9DbIFKboLxXgq4D8qZrqOwHSCrro0o1kYy6YfIL93hTchJEKc52lby5P
5VqQpaKnW8MhahT+Te23f2Kwa1ps40Hct2fBxd1hUbVcvvtn7VG+bgKmjfMMphUr
U1OafpzVu0zOTj1teAMkJHE3SEP15oRGxP8q6S61YwSToSpiOEeR+KbVzVmIP3S0
q+K2jJ0mAxt3n2/suN2WfSbroHulVxyk7ayQPTq/kYfBRBibLB2cq/SORuu6I0w=
=rKsX
-----END PGP SIGNATURE-----

------=_Part_285_1584433358.1723706024128--
