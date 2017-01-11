X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2294" "Tuesday" "10" "January" "2017" "22:38:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<13140680db674bd8a5edb9761ee23a6f@imshyb02.MITRE.ORG>" "65" "[oss-security] Re: CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8" nil nil nil "1" "2017011103:38:08" "[oss-security] Re: CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8" (number mark "U       cve-assign@m Jan 10   65/2294  " thread-indent "\"[oss-security] Re: CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8\"\n") "<8e3602af-836a-d812-91ed-d78d7ed2a150@suse.com>" ("<8e3602af-836a-d812-91ed-d78d7ed2a150@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1973 invoked by uid 550); 11 Jan 2017 03:38:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1953 invoked from network); 11 Jan 2017 03:38:19 -0000
From: <cve-assign@mitre.org>
To: <astieger@suse.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <8e3602af-836a-d812-91ed-d78d7ed2a150@suse.com>
Message-ID: <13140680db674bd8a5edb9761ee23a6f@imshyb02.MITRE.ORG>
Date: Tue, 10 Jan 2017 22:38:08 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: two advisories for GnuTLS GNUTLS-SA-2017-1, GNUTLS-SA-2017-2, fixed in 3.3.26, 3.5.8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://gnutls.org/security.html#GNUTLS-SA-2017-1
> 
> It was found using the OSS-FUZZ fuzzer infrastructure that decoding a
> specially crafted X.509 certificate with Proxy Certificate Information
> extension present could lead to a double free. This issue was fixed in
> GnuTLS 3.3.26 and 3.5.8.
> 
> https://gitlab.com/gnutls/gnutls/commit/c5aaa488a3d6df712dc8dff23a049133cab5ec1b

>> gnutls_x509_ext_import_proxy: fix issue reading the policy language
>> 
>> If the language was set but the policy wasn't, that could lead to
>> a double free

Use CVE-2017-5334.


> https://gnutls.org/security.html#GNUTLS-SA-2017-2
> 
> It was found using the OSS-FUZZ fuzzer infrastructure that decoding
>  a specially crafted OpenPGP certificate could lead to heap and stack
>  overflows.
> 
> The support of OpenPGP certificates in GnuTLS is considered obsolete. As
> such, it is not recommended to use OpenPGP certificates with GnuTLS.

> https://gitlab.com/gnutls/gnutls/commit/49be4f7b82eba2363bb8d4090950dad976a77a3a

Use CVE-2017-5335.


> https://gitlab.com/gnutls/gnutls/commit/5140422e0d7319a8e2fe07f02cbcafc4d6538732

Use CVE-2017-5336.


> https://gitlab.com/gnutls/gnutls/commit/94fcf1645ea17223237aaf8d19132e004afddc1a

Use CVE-2017-5337.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYdaciAAoJEHb/MwWLVhi2qzwP+wYLuGHW+TN2khSxseT9Y72w
qsnw9dgHq2dGZDjbmIDonOXPyH0+K26QurJQr9mrZGzlR4uaz3bqQsG+JMfSJAaQ
EfVpwpbDxqorSE5+NFy7KYZoY0teC1QZ2/9lBY0+zqtIWEEIZh0JplTqLssOm5PI
3p/bJp2oJd2qgSiIAg5fCWvzhshEy7v545+hV3hIZG8K1q2ikdxaC+UM3dcy8xU2
3ZT3eiJidqVHbf+skqcazgQ1/03XOo7HhybL83O3FK1T84ASnu3XpH5qQcX8Ojkz
ELky55ReLVKl31jJf4zyxhEadSSpEJ5yUqep/q4zGXZDtWEOM23DZ90GX9evCLKL
zSGKa1KSNEPUBTCQG1P8vbmnN+/61ZISF3Y6DUqCGGVftdXIkuCBl3DRmXQ+gxf0
qHMFqf435S5HtGVYBQmE3+AGeHpIq5EKshCRCAcz3oPj1NgO9CiEoJfozDiC1+ou
ldziOAe2YpZ6Ir32mRl2//ZobevSf/4YDhAbmfeysVE/6Mno5JN6zNersrmwi7Mm
3ba6Ii7rXRHKATFqi9siDMQPE2eiHl/UzVir+uvoPoNGzHf/dkCqn3/3FE/Ae5F+
shNAA43Rd8ynOV10pmtX6NGmsoaQKO5wudbgCP/25S1T9PR84WZnMJtZuE7wJtqF
uqputud32DdwKJfPhstT
=EtoE
-----END PGP SIGNATURE-----
