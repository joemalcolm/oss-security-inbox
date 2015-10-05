X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1719" "Monday" "5" "October" "2015" "18:20:39" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<5612BF77.9070403@redhat.com>" "50" "[oss-security] CVE request for vulnerability in OpenStack Nova" nil nil nil "10" "2015100518:20:39" "[oss-security] CVE request for vulnerability in OpenStack Nova" (number mark "        tdecacqu@red Oct  5   50/1719  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Nova\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27938 invoked by uid 550); 5 Oct 2015 18:20:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27920 invoked from network); 5 Oct 2015 18:20:29 -0000
Message-ID: <5612BF77.9070403@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="EE3Jx1Xh9OrQL0Xj9MGUICImVxETRMgsw"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: cve-assign@mitre.org
Date: Mon, 5 Oct 2015 18:20:39 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vulnerability in OpenStack Nova
To: oss-security@lists.openwall.com

--EE3Jx1Xh9OrQL0Xj9MGUICImVxETRMgsw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Nova network security group changes are not applied to running
       instances
Reporter: Sreekumar S and Suntao
Products: Nova
Affects: <=3D2014.2.3, >=3D2015.1.0, <=3D2015.1.1

Description:
Sreekumar S and Suntao independently reported a vulnerability in Nova
network. Security group changes silently fail to be applied to already
running instances, potentially resulting in instances not being
protected by the security group. All Nova network setups are affected.

References:
https://launchpad.net/bugs/1491307
https://launchpad.net/bugs/1484738

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--EE3Jx1Xh9OrQL0Xj9MGUICImVxETRMgsw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWEr97AAoJECK5oFySXMXYc/gH/25Gkg4072bFdb1nFgB+gMCl
I/8B5IFLv7vMT8ZcZacpfNEHkjC1fbob7nNYChl4Zv3u3oGpnrhMEPUUFuuEIJgq
pWjjglzyUM1kYkC0s6ka/lnyKZL6kNXniaD9lPFBuOJBM8nucqs6Wg891o7AHPwO
bfea7Nj38rEqzr1ju+AQuC7vItFDXEz7CnIGnDeDiIZxTkuSKBnh3ARMdQRO/zov
UzkPN0/BKsfUXnwnZ1HzqtAEaB267foO3GPyRtTSpm65WtoSxvOqF8TKT9jHa3sc
LaT3lKduXob+S7kVMzVwmJ07Ta9HLE4wIJ7JFtjtHeCXr3CKDxnX7D2hbqAonS4=
=YJU9
-----END PGP SIGNATURE-----

--EE3Jx1Xh9OrQL0Xj9MGUICImVxETRMgsw--
