X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1401" "Sunday" "24" "January" "2016" "13:00:14" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160124180014.671AC6C07B6@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: Host based account hijack attack on php-openid" nil nil nil "1" "2016012418:00:14" "[oss-security] Re: CVE Request: Host based account hijack attack on php-openid" (number mark "U       cve-assign@m Jan 24   35/1401  " thread-indent "\"[oss-security] Re: CVE Request: Host based account hijack attack on php-openid\"\n") "<CAJCHTFX--F249k4kdfrWv5iHDu33SwBwZqWkhL+_v=2knRQgew@mail.gmail.com>" ("<CAJCHTFX--F249k4kdfrWv5iHDu33SwBwZqWkhL+_v=2knRQgew@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18373 invoked by uid 550); 24 Jan 2016 18:00:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18355 invoked from network); 24 Jan 2016 18:00:26 -0000
From: cve-assign@mitre.org
To: zemnmez@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAJCHTFX--F249k4kdfrWv5iHDu33SwBwZqWkhL+_v=2knRQgew@mail.gmail.com>
Message-Id: <20160124180014.671AC6C07B6@smtpvmsrv1.mitre.org>
Date: Sun, 24 Jan 2016 13:00:14 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Host based account hijack attack on php-openid

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Apache after 1.3 and many other webservers derive SERVER_NAME from the HOST
> header.

> By changing the Host header and making the request
> to the vulnerable website S, S thinks the openid.realm through SERVER_NAME
> should be evil.com, and accepts the OpenID login, allowing the attacker
> access to the victim's account on S.

Use CVE-2016-2049.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWpQ5sAAoJEL54rhJi8gl5uIcP/1Vmxty5Royhdw4dUJDbemku
tDRyr1dcRwzxpVeJuV7VhJSI8xoe2Px/z/Hv3XiwOBAAPaH+RxXQsxUvf9wlq/8j
3i7Z4TxYTgktxM+535G29VpcSpgHqf/kJnMv+l3HjIBpqQL9Hatu4bJwIEhB5QMv
DJ9vAAN5IPJKA9CRErmGdQfBKpK3M98wn7r3A/iziLJV2Fju2Mp0fxzmGmmXh/Ym
FMK48RlUXzjBw5Xjmyq6pembNKpnzk83R8HTs4Ed+sJOKDEK5Z0AjMniEwHI//Lp
GKmvQNZZOi4W4Eva4ejIKD74KNlreFnBoTOf+ed3ExwfE6sOI8sAOo8VigYmo/3d
S6JTFzCA8kemEPCePwXmQXl6Rm2VK75gVb0oTWg7OHOXSdGX16kcdqYSnYpx8lJn
+uGPa+5/VfOApvL8EM+CHGaIMFpu+5RYPrO83Q2ghcweFXfoAzrwWdy8ensU25mv
vAYyomlOe1DmzcFYvuV9KnPyIYmvN9XO2spGFQQv6eK+rp1rNDtVkSUzinT6LUKY
OZWCBr7kIebq95bHf3ni3UW1h1rLCdmlIjQusEL7ylnx+UU2vX2e3FCxl73dyq8S
0Is1gMM+4TNckEwAa3Ugq6H9THkk7eTbas7biyfRHIp6gFZBmKAZffYarck6D7rZ
4APPDEJNYvCuhlOXBYY4
=JhGH
-----END PGP SIGNATURE-----
