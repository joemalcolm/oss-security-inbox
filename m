X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1814" "Thursday" "6" "April" "2017" "14:22:55" "+0100" "Dominic Cleal" "dominic@cleal.org" "<09b0b280-113c-e309-f507-27cd7de850f8@cleal.org>" "62" "[oss-security] CVE-2017-2672: Foreman image password disclosure in audit log" nil nil nil "4" "2017040613:22:55" "[oss-security] CVE-2017-2672: Foreman image password disclosure in audit log" (number mark "U       dominic@clea Apr  6   62/1814  " thread-indent "\"[oss-security] CVE-2017-2672: Foreman image password disclosure in audit log\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14284 invoked by uid 550); 6 Apr 2017 13:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14261 invoked from network); 6 Apr 2017 13:23:08 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <09b0b280-113c-e309-f507-27cd7de850f8@cleal.org>
Date: Thu, 6 Apr 2017 14:22:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="ITQvLGaXbUGN5FB5s3FMefm9qnInKnexT"
Subject: [oss-security] CVE-2017-2672: Foreman image password disclosure in audit log

--ITQvLGaXbUGN5FB5s3FMefm9qnInKnexT
Content-Type: multipart/mixed; boundary="hfoiuEoNtrssDGdsckW4t0sq0VfaBGaDN";
 protected-headers="v1"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <09b0b280-113c-e309-f507-27cd7de850f8@cleal.org>
Subject: CVE-2017-2672: Foreman image password disclosure in audit log

--hfoiuEoNtrssDGdsckW4t0sq0VfaBGaDN
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2017-2672: Foreman compute resource image passwords disclosed via
audit log

When images for compute resources (e.g. an OpenStack image) are
added/registered in Foreman, the password used to log in is recorded in
plain text in the audit log. This may allow users with access to view
the audit log to access newly provisioned hosts using the stored
credentials.

Mitigation: remove view_audit_logs permission from users, change image
passwords.

This issue was reported by Daniel Kimsey.

Affects Foreman 1.4 and higher
Fix due to be released

Patch:
https://github.com/theforeman/foreman/commit/02489389f1a4443e1f437b86aa7ce2=
45f1437020

More information:
https://theforeman.org/security.html#2017-2672
http://projects.theforeman.org/issues/19169
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org




--hfoiuEoNtrssDGdsckW4t0sq0VfaBGaDN--

--ITQvLGaXbUGN5FB5s3FMefm9qnInKnexT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iFkEARECABkFAljmQTASHGRvbWluaWNAY2xlYWwub3JnAAoJEHx9Mm8sK3LMuOUA
oKieBmqfUMnsVrvgsJHUA0fc9j7vAKCMGUmrF+3Ah5dc0rC8N3bau7t7KA==
=8XTN
-----END PGP SIGNATURE-----

--ITQvLGaXbUGN5FB5s3FMefm9qnInKnexT--
