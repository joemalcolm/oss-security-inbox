X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1796" "Thursday" "19" "May" "2016" "11:40:36" "+0100" "Dominic Cleal" "dominic@cleal.org" "<573D9824.9040607@cleal.org>" "58" "[oss-security] CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API" nil nil nil "5" "2016051910:40:36" "[oss-security] CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API" (number mark "U       dominic@clea May 19   58/1796  " thread-indent "\"[oss-security] CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7546 invoked by uid 550); 19 May 2016 10:40:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7524 invoked from network); 19 May 2016 10:40:52 -0000
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
From: Dominic Cleal <dominic@cleal.org>
Message-ID: <573D9824.9040607@cleal.org>
Date: Thu, 19 May 2016 11:40:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="km5WoOPEloNDw8i1bQBSRsPr81seJdONU"
Subject: [oss-security] CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API

--km5WoOPEloNDw8i1bQBSRsPr81seJdONU
Content-Type: multipart/mixed; boundary="vV4G0Qe2gj8eufvr4uclPAK2niGfBWuH6"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <573D9824.9040607@cleal.org>
Subject: CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API

--vV4G0Qe2gj8eufvr4uclPAK2niGfBWuH6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-3728: remote code execution in Foreman smart proxy TFTP API

The Foreman smart proxy TFTP API is vulnerable to arbitrary remote code
execution, as it passes untrusted user input (the PXE template type) to
the eval() function causing it to be executed.

Thanks to Lukas Zapletal for reporting the issue to foreman-security.

Mitigation: ensure trusted_hosts is set in
/etc/foreman-proxy/settings.yml, HTTPS is in use and
/etc/foreman-proxy/settings.d/tftp.yml is configured for https only (if
enabled).

Affects Foreman 0.2 and higher
Fix released in Foreman 1.11.2, and due for 1.10.4

Patch:
https://github.com/theforeman/smart-proxy/commit/eef532aa668d656b9d61d9c6ed=
f7c2505f3f43c7

More information:
http://theforeman.org/security.html#2016-3728
http://projects.theforeman.org/issues/14931
http://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org


--vV4G0Qe2gj8eufvr4uclPAK2niGfBWuH6--

--km5WoOPEloNDw8i1bQBSRsPr81seJdONU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlc9mCQACgkQfH0ybywrcszpoQCgywZjm7fNa66riTDLvdoG/9Zr
tYQAnRR321M8/IxJGJUDtGUL6qdLOEfy
=i8DM
-----END PGP SIGNATURE-----

--km5WoOPEloNDw8i1bQBSRsPr81seJdONU--
