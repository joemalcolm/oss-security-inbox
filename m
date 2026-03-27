Received: (qmail 28340 invoked by uid 550); 27 Mar 2026 14:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32735 invoked from network); 27 Mar 2026 08:08:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dovecot.fi; h=cc
	:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=Vmmk8U
	glnohupkyla+2FX+A9B7+a2khxQ9BAz+yvzT0=; b=JhT8sLtq0fB4H5yL4sS5lF
	dcxoEjXK/jGK4whBcXJw/I+dZ5p9WMdyT50S1RQhyns/YW1pNS5RYm5nNgwQZ4A2
	datg1xHC+zdy04n5u6b9YSBaVOlnaM1ziWc4X+p0kijl+z0Z41paYrgKUcP2ZDEo
	Qm7I0/eFAWOtK/fiobbvWGbx/6inKgxZDwAxeU1KJ6cYw6I8s/r767ehYtRU7nFc
	yIEC2JbMBUukzWWtzaCVcQimv3e0nRiyj6lYGZjzg66UpMfBUnf8UEdhbPmSgtMJ
	dBp9LBFULTLTm62AjsLwfw+s+FsP4oV4vL7OXn54C/58eSF8rccFxQpPkeBzOYTQ
	==
Date: Fri, 27 Mar 2026 10:08:18 +0200 (EET)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <240025120.2975.1774598898412@appsuite-pro-sync-core-mw-groupware-0.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite-dev.svc.cluster.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_2974_1708079260.1774598898410"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.49.9
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
Subject: [oss-security] Dovecot Security Advisory OXDC-2026-0001

------=_Part_2974_1708079260.1774598898410
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear subscribers,

we're sharing our latest advisory with you and like to thank everyone who contributed in finding and solving those vulnerabilities. This advisory is also published at https://documentation.open-xchange.com/dovecot/security/advisories/html/2026/oxdc-adv-2026-0001.html


---


Internal reference: DOV-7830
Type: CWE-1250 (Improper Preservation of Consistency Between Independent Representations of Shared State)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.1
Discovery date: 2025-07-24
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: Erik  <erik@broadlux.com>
CVE: CVE-2025-30189
CVSS: 7.4 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
v2.4 regression: auth cache broken with several passdb / userdb. When cache is enabled, some passdb/userdb drivers incorrectly cache all users with same cache key, causing wrong cached information to be used for these users.

Risk:
After cached login, all subsequent logins are for same user. No publicly available exploits are known.

Solution:
Install fixed version or disable caching either globally or for the impacted passdb/userdb drivers.


---


Internal reference: DOV-8349
Type: CWE-20 (Improper Input Validation)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2025-11-04
Solution date: 2026-03-27
Disclosure date: 2026-03-27
CVE: CVE-2025-59028
CVSS: 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L)

Details:
Invalid base64 authentication can cause DoS for other logins. When sending invalid base64 SASL data, login process is disconnected from the auth server, causing all active authentication sessions to fail.

Risk:
Invalid BASE64 data can be used to DoS a vulnerable server to break concurrent logins. No publicly available exploits are known.

Solution:
Install fixed version or disable concurrency in login processes (heavy perfomance penalty on large deployments).


---


Internal reference: DOV-8508
Type: CWE-20 (Improper Input Validation)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2025-11-29
Solution date: 2026-03-27
Disclosure date: 2026-03-27
CVE: CVE-2025-59032
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
v2.4/v3.1 regression: Pigeonhole: ManageSieve panic occurs with sieve-connect as a client. ManageSieve AUTHENTICATE command crashes when using literal as SASL initial response.

Risk:
This can be used to crash ManageSieve service repeatedly, making it unavailable for other users. No publicly available exploits are known.

Solution:
Control access to ManageSieve port, or disable the service if it's not needed. Alternatively upgrade to a fixed version.


---


Internal reference: DOV-8584
Type: CWE-200 (Exposure of Sensitive Information to an Unauthorized Actor)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2025-12-29
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: cavid@yeswehack
CVE: CVE-2025-59031
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N)

Details:
decode2text.sh OOXML extraction may follow symlinks and read unintended files during indexing. Dovecot has provided a script to use for attachment to text conversion. This script unsafely handles zip-style attachments.

Risk:
Attacker can use specially crafted OOXML documents to cause unintended files on the system to be indexed and subsequently ending up in FTS indexes. No publicly available exploits are known.

Solution:
Do not use the provided script, instead, use something else like FTS tika.


---


Internal reference: DOV-8591
Type: CWE-22 (Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot CE core 2.4.0
Discovery date: 2026-01-07
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: strokep@yeswehack
CVE: CVE-2026-0394
CVSS: 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N)

Details:
auth: Path traversal in passwd-file passdb using `%d` (domain) escapes base directory and opens `/etc/passwd`Pre-auth path traversal in passwd-file passdb using `%d` (domain) escapes base directory and opens `/etc/passwd`. When dovecot has been configured to use per-domain passwd files, and they are placed one path component above /etc, or slash has been added to allowed characters, path traversal can happen if the domain component is directory partial.

Risk:
This allows inadvertently reading /etc/passwd (or some other path which ends with passwd). If this file contains passwords, it can be used to authenticate wrongly, or if this is userdb, it can unexpectly make system users appear valid users.  No publicly available exploits are known.

Solution:
Upgrade to fixed version, or use different authentication scheme that does not rely on paths. Alternatively you can also ensure that the per-domain passwd files are in some other location, such as /etc/dovecot/auth/%d.


---


Internal reference: DOV-8775
Type: CWE-90 (Improper Neutralization of Special Elements used in an LDAP Query ('LDAP Injection'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-02-20
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: cookiejack15@yeswehack
CVE: CVE-2026-27860
CVSS: 3.7 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)

Details:
v2.4/v3.1 regression: auth-ldap is not escaping usernames. If auth_username_chars is empty, it is possible to inject arbitrary LDAP filter to Dovecot's LDAP authentication.

Risk:
This leads to potentially bypassing restrictions and allows probing of LDAP structure. No publicly available exploits are known.

Solution:
Do not clear out auth_username_chars, or install fixed version.


---


Internal reference: DOV-8781
Type: CWE-89 (Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-02-23
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: whisperer@yeswehack
CVE: CVE-2026-24031
CVSS: 7.7 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:L)

Details:
v2.4/v3.1 regression: SQL injection allows bypassing authentication. Dovecot SQL based authentication can be bypassed when auth_username_chars is cleared by admin.

Risk:
This vulnerability allows bypassing authentication for any user and user enumeration. No publicly available exploits are known.

Solution:
Do not clear auth_username_chars. If this is not possible, install latest fixed version.


---


Internal reference: DOV-8787
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-02-24
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: djvirus@yeswehack
CVE: CVE-2026-27859
CVSS: 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L)

Details:
v3.0.2+ regression: Message headers MIME parameter parsing can cause excessive CPU usage. A mail message containing excessive amount of RFC 2231 MIME parameters causes LMTP to use too much CPU.

Risk:
A suitably formatted mail message causes mail delivery process to consume large amounts of CPU time. No publicly available exploits are known.

Solution:
Use MTA capabilities to limit RFC 2231 MIME parameters in mail messages, or upgrade to fixed version where the processing is limited.


---


Internal reference: DOV-8816
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-02-27
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: whisperer@yeswehack
CVE: CVE-2026-27857
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
imap-login: Excessive memory usage DoS. Sending "NOOP (((...)))" command with 4000 parenthesis open+close results in ~1MB extra memory usage. Longer commands will result in client disconnection. This 1 MB can be left allocated for longer time periods by not sending the command ending LF. So attacker could connect possibly from even a single IP and create 1000 connections to allocate 1 GB of memory, which would likely result in reaching VSZ limit and killing the process and its other proxied connections.

Risk:
Attacker could connect possibly from even a single IP and create 1000 connections to allocate 1 GB of memory, which would likely result in reaching VSZ limit and killing the process and its other proxied connections. No publicly available exploits are known.

Solution:
Install fixed version, there is no other remediation.


---


Internal reference: DOV-8818
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0, OX Dovecot CE core 2.4.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-02-28
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: ilyar@yeswehack
CVE: CVE-2026-27858
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
managesieve-login out-of-memory DoS. Attacker can send a specifically crafted message before authentication that causes managesieve to allocate large amount of memory.


Risk:
Attacker can force managesieve-login to be unavailable by repeatedly crashing the process. No publicly available exploits are known.

Solution:
Protect access to managesieve protocol, or install fixed version.


---


Internal reference: DOV-8830
Type: CWE-287 (Improper Authentication)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-03-04
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: bksparajuli@yeswehack
CVE: CVE-2026-27856
CVSS: 7.4 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
doveadm: Credentials verified without timing safety. Doveadm credentials are verified using direct comparison which is susceptible to timing oracle attack. An attacker can use this to determine the configured credentials.

Risk:
Figuring out the credential will lead into full access to the affected component. No publicly available exploits are known.

Solution:
Limit access to the doveadm http service port, install fixed version.


---


Internal reference: DOV-8859
Type: CWE-294 (Authentication Bypass by Capture-replay)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Last affected revision: OX Dovecot Pro core 2.3.0
First fixed revision: OX Dovecot CE core 2.4.3
Discovery date: 2026-03-09
Solution date: 2026-03-27
Disclosure date: 2026-03-27
Researcher credits: hamizanazman@yeswehack
CVE: CVE-2026-27855
CVSS: 6.8 (CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:N)

Details:
auth: OTP driver vulnerable to replay attack. Dovecot OTP authentication is vulnerable to replay attack under specific conditions. If auth cache is enabled, and username is altered in passdb, then OTP credentials can be cached so that same OTP reply is valid.

Risk:
An attacker able to observe an OTP exchange is able to log in as the user. No publicly available exploits are known.

Solution:
If authentication happens over unsecure connection, switch to SCRAM protocol. Alternatively ensure the communcations are secured, and if possible switch to OAUTH2 or SCRAM.

------=_Part_2974_1708079260.1774598898410
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.79

iF4EABYKAAYFgmnGOvIACgkQREbj5uyNhYnVZgEA2BNqOK1wVM58zeg+WXWvA5UP
FQbyca6YvlzAQlEiA7EBAPGkPVPqm8ox7hdX5DHZhTm/MAe8AXfQET0x7ZCrLqQN
=DDUV
-----END PGP SIGNATURE-----

------=_Part_2974_1708079260.1774598898410--

