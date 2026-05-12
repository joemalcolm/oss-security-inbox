Received: (qmail 1666 invoked by uid 550); 12 May 2026 15:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9782 invoked from network); 12 May 2026 13:41:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dovecot.fi; h=cc
	:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=KOFwel
	3oK7pOOXkgI4qR9re28Ij12VwvCl+SY8kT3M8=; b=CQHEOHOJedtv9LZza2WSsG
	nSJ11662hCVQURMJzg7pLRVt+2z2CBKeYO+AxP0rirjQEOvaMr9OG8JOjuwPPlt/
	JQoe0hz2K2dDYm9eRuVIzzktlb1BJdD7JcaZyEo7zlAyZPWxxCqR+ck9TiERvVl3
	h4zl5lBLifkHKt63cn1JyarMEkhoBjeokjpEOH5Kozl4gUyQZKAHBJNTUs0KOh0h
	7x9g7iW/T+Yn3oNGDW8MLW/i37dH/L096AQ2pDH+VnvXBVAponW3ejfnngUV/6OJ
	dMAeikPrvMZa7GsnqzT+oAspq7YAfR1LKwkkFLcf9RRVkvld0yHwh3b3c6Dtojkw
	==
Date: Tue, 12 May 2026 16:41:29 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <835140174.3112.1778593289745@appsuite-pro-sync-core-mw-groupware-1.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite-dev.svc.cluster.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_3111_1155673163.1778593289745"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.50.38
X-Originating-Client: open-xchange-appsuite
Autocrypt: addr=aki.tuomi@open-xchange.com; prefer-encrypt=mutual; keydata=
 mDMEaXi1dhYJKwYBBAHaRw8BAQdAEJLvpgP+itb+MHN5qNwpxsEyWR2bv6IKdlQeqv/pbki0JkFraSB
 UdW9taSA8YWtpLnR1b21pQG9wZW4teGNoYW5nZS5jb20+iJkEExYKAEEWIQT34Vip1fobtOBS8RZERu
 Pm7I2FiQUCaXi1dgIbAwUJEswDAAULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgAAKCRBERuPm7I2Fi
 ZIbAP4opRSCiqfcSe0q5zuPvjYQDsvWsw5TYG+7aIxpCeFZJAD/Q8dzjlbEtX5TUD5GR0JQU+IICiWb
 KQMUE8wJ7x74hwa4OARpeLV2EgorBgEEAZdVAQUBAQdAooB16zM4KEY+auRTWotyH+S2cxc1NWEQi5k
 hshkscEUDAQgHiH4EGBYKACYWIQT34Vip1fobtOBS8RZERuPm7I2FiQUCaXi1dgIbDAUJEswDAAAKCR
 BERuPm7I2FiY4hAQD2ViPE5xDImMIj+f0xhguEchlGyOL9xcaTdEEq5Dge7QD/Va8DzBJYuRnEvOlU0
 VmL+JzzV4mMpQoviAlb/Abjfg8=
Subject: [oss-security] Dovecot Security Advisory OXDC-2026-0002

------=_Part_3111_1155673163.1778593289745
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

We're sharing our latest advisory with you and like to thank everyone who c=
ontributed in finding and solving those vulnerabilities. This advisory is a=
lso published at https://documentation.open-xchange.com/dovecot/security/ad=
visories/html/2026/oxdc-adv-2026-0002.html

---

Classification: TLP:GREEN

Internal reference: DOV-8967
Type: CWE-235 (Improper Handling of Extra Parameters)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 3.1.4, OX Dovecot CE core 2.4.3
First fixed revision: OX Dovecot Pro core 3.1.5, OX Dovecot CE core 2.4.4
Discovery date: 2026-03-29
Solution date: 2026-05-05
Disclosure date: 2026-05-05
Researcher credits: caprinuxx@yeswehack
CVE: CVE-2026-27851
CVSS: 7.4 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
lib-var-expand: Safe filter leaks to all following pipelines. When safe fil=
ter is used with variable expansion, all following pipelines on the same st=
ring are incorrectly interpreted as safe too, enabling unsafe data to be un=
escaped.

Risk:
This can enable SQL / LDAP injection attacks when used in authentication. N=
o publicly available exploits are known.

Solution:
Avoid using safe filter until on fixed version.



---



Internal reference: DOV-8948
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot Pro core 3.1.5, OX Dovecot CE core 2.4.4
Discovery date: 2026-03-24
Solution date: 2026-05-05
Disclosure date: 2026-05-05
Researcher credits: djvirus@yeswehack
CVE: CVE-2026-40016
CVSS: 5.3 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:N/A:H)

Details:
Sieve :contains/:matches O(N=C3=97M) Substring Match Bypasses sieve_max_cpu=
_time Limit (130=C3=97 Overrun). Attacker can upload a malicious Sieve scri=
pt over ManageSieve service (or locally) to bypass configured CPU time limi=
ts for Sieve up to 130 times of the configured limit.

Risk:
Attacker can use this to degrade server performance and bypass configured C=
PU time limits for Sieve scripts. No publicly available exploits are known.

Solution:
Install fixed version, or alternatively prevent direct access to Sieve scri=
pts via ManageSieve or local access.



---



Internal reference: DOV-9030
Type: CWE-99 (Improper Control of Resource Identifiers ('Resource Injection=
'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 3.1.0, OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot Pro core 3.1.5, OX Dovecot CE core 2.4.4
Discovery date: 2026-04-08
Solution date: 2026-05-05
Disclosure date: 2026-05-05
Researcher credits: ylwango613@yeswehack
CVE: CVE-2026-33603
CVSS: 6.8 (CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
login: Base64 input can contain tabs that bypass IPC protection. Attacker c=
an use a specially crafted base64 exchange between Dovecot and Client to fa=
ke SCRAM TLS channel binding. This requires that the attacker is able to po=
sition itself between Dovecot and the client connection.

Risk:
If successful, the attacker can eavesdrop communications between Dovecot an=
d client as MITM proxy. No publicly available exploits are known.

Solution:
Install fixed version.



---



Internal reference: DOV-9040
Type: CWE-284 (Improper Access Control)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot Pro core 3.1.5, OX Dovecot CE core 2.4.4
Discovery date: 2026-04-08
Solution date: 2026-05-05
Disclosure date: 2026-05-05
Researcher credits: ilhamaf@yeswehack
CVE: CVE-2026-40020
CVSS: 3.1 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
IMAP folders can be shared-spammed to everyone. Attacker can use the IMAP S=
ETACL command to inject the anyone permission to user's dovecot-acl file ev=
en if imap_acl_allow_anyone=3Dno. This causes folders to be spammed to all =
users.

Risk:
The impact is limited to being able to spam folders to other users, no unex=
pected access is gained. No publicly available exploits are known.

Solution:
Install to fixed version.



---



Internal reference: DOV-9138
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 3.0.5, OX Dovecot Pro core 3.1.=
4, OX Dovecot CE core 2.4.3
First fixed revision: OX Dovecot Pro core 3.1.5, OX Dovecot CE core 2.4.4
Discovery date: 2026-04-27
Solution date: 2026-05-05
Disclosure date: 2026-05-05
Researcher credits: D4RKCYPH3R@yeswehack
CVE: CVE-2026-42006
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
imap-login: Excessive memory usage DoS - Try 2. An attacker can cause uncon=
trolled memory usage with excessive bracing over IMAP. The fix in CVE-2026-=
27857 was incomplete, only blocking one way of doing this, so there was sti=
ll another way left open. In particular, the fix was for closing braces, bu=
t you could still use open braces to bypass the limit.

Risk:
Using excessive bracing, attacker can cause memory usage up to configured m=
emory limit. No publicly available exploits are known.

Solution:
Install fixed version, or configure vsz_limit for imap process to low value.

------=_Part_3111_1155673163.1778593289745
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.79

iF4EABYKAAYFgmoDLgkACgkQREbj5uyNhYkoEQD9EC2WWlmkSNBRnPvMUBeOpXjG
BK3EDHEXRSBOaPDaIlsBAMWRQNGki7EVKEnHm+qtc/jI1Wsk/jh2/BKkvkm4z1AB
=76Mh
-----END PGP SIGNATURE-----

------=_Part_3111_1155673163.1778593289745--

