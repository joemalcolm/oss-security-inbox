X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2439" "Wednesday" "29" "March" "2017" "16:43:28" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>" "60" "[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" nil nil nil "3" "2017032921:43:28" "[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" (number mark "U       tyhicks@cano Mar 29   60/2439  " thread-indent "\"[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11540 invoked by uid 550); 29 Mar 2017 21:43:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11520 invoked from network); 29 Mar 2017 21:43:57 -0000
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: "security@ubuntu.com" <security@ubuntu.com>
Message-ID: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
Date: Wed, 29 Mar 2017 16:43:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="4WhIVLtmgimjMmisCkx2rosXqdErgLsMk"
Subject: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework

--4WhIVLtmgimjMmisCkx2rosXqdErgLsMk
Content-Type: multipart/mixed; boundary="alfu21VJcF0TAWJ3gPgvpMNe8w9MnFlRE";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: "security@ubuntu.com" <security@ubuntu.com>
Message-ID: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
Subject: CVE-2017-7184: kernel: Local privilege escalation in XFRM framework

--alfu21VJcF0TAWJ3gPgvpMNe8w9MnFlRE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A security issue was reported by ZDI, on behalf of Chaitin Security
Research Lab, against the Linux kernel in Ubuntu. It also affected the
upstream kernel.

Chaitin Security Research Lab discovered that xfrm_replay_verify_len(),
as called by xfrm_new_ae(), did not verify that the user-specified
replay_window was within the replay state buffer.

This allowed for out-of-bounds reads and writes of kernel memory.
Chaitin Security showed that this can lead to local privilege escalation
by using user namespaces in order to configure XFRM. XFRM configuration
requires CAP_NET_ADMIN so this issue is mitigated in kernels which do
not enable user namespaces by default.

Fixes:
- https://git.kernel.org/linus/677e806da4d916052585301785d847c3b3e6186a
- https://git.kernel.org/linus/f843ee6dd019bcece3e74e76ad9df0155655d0df

Tyler



--alfu21VJcF0TAWJ3gPgvpMNe8w9MnFlRE--

--4WhIVLtmgimjMmisCkx2rosXqdErgLsMk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJY3CqAAAoJENaSAD2qAscKnJEQAMD/cn+VKbK2zWXEohHE7Ewp
uVK9Uri29DJsDMBWuLvOjfhqiBfWCBg08UnQ53barFuFtZGP03PF8MYphp+PA7AN
7HLcReyGiU8CVwmMg8bViwLT3l/jiEl5ieqgObDTv01BqC7qBl4/DUg2oVdatkab
Ehbth8g9LwrGo0NmWjtgdjFM/tGye17JPnaxorZD7t0u3zg0fD1i4drZZIZiqEJ9
FlPxzGSpfOHaWUQ1amMVeChqpSYfyYX+wn0rObbfI6A+L9oX2/6TsX9xt+hMuLzf
P9yr3mFM91Lxa/HFNoZtghGVnEVFzEweUrVV0ktYFgjnCergzu7qK5wDL2b7lf/h
tVSNTqI8hSU6c6tBPvgUDyJZwnsV4r3gSAKPofjfsK6m7jbFSneGEM1h2cAhJb7g
hqJx+Cb9kima2ZUSRlAdj1+WhZqff6j697k9yEADBU7tsg00lJMZQaxzon+jubNl
hWFIb2IOSmnKzmMOW02HoFIDLLJ+LmrRYbgdmpohpz14MyGT7uk5CloGOtIYsDxV
RFGagqksKKReF4HO7YaxdZ/8RhvcthY4lphl7SoBhWr7NVQYpI9+6jwOZtTXzIkM
03Bo4DbDJ/S4Dt0f60VfvRuK6K/C5NoyYJiseM7ApOUYKZ9FysXeRraafRC1uIiw
7SDk+uzzQJ1C796UL+iL
=D8Ch
-----END PGP SIGNATURE-----

--4WhIVLtmgimjMmisCkx2rosXqdErgLsMk--
