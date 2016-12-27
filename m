X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1892" "Tuesday" "27" "December" "2016" "12:48:02" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d17159978c3d4d89b0d67b5770c6a63b@imshyb02.MITRE.ORG>" "54" "[oss-security] Re: Buffer overflow in pycrypto" nil nil nil "12" "2016122717:48:02" "[oss-security] Re: Buffer overflow in pycrypto" (number mark "U       cve-assign@m Dec 27   54/1892  " thread-indent "\"[oss-security] Re: Buffer overflow in pycrypto\"\n") "<20161227010925.GA13877@jasmine>" ("<20161227010925.GA13877@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15782 invoked by uid 550); 27 Dec 2016 17:48:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15757 invoked from network); 27 Dec 2016 17:48:15 -0000
From: <cve-assign@mitre.org>
To: <leo@famulari.name>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161227010925.GA13877@jasmine>
Message-ID: <d17159978c3d4d89b0d67b5770c6a63b@imshyb02.MITRE.ORG>
Date: Tue, 27 Dec 2016 12:48:02 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Buffer overflow in pycrypto

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> "AES.new with invalid parameter crashes python"
> https://github.com/dlitz/pycrypto/issues/176

> AES.new(b'\000' * 16, AES.MODE_ECB, b'\000' * 540)

> Apparently this issue is fixed on pycrypto's development branch with
> commit 8dbe0dc3eea5c689d4f76b37b93fe216cf1f00d4, but this change can't
> be applied directly to the latest pycrypto release tarball; too much has
> changed.
> 
> https://github.com/dlitz/pycrypto/commit/8dbe0dc3eea5c689d4f76b37b93fe216cf1f00d4

>> Throw exception when IV is used with ECB or CTR

> src/block_templace.c
> ALGnew

> someone has used the bug to get a remote shell

> there is a heap buffer overflow on IV

> The website allows us to encrypt and decrypt messages using AES. The
> encryption is performed by cryptmsg.py, using the python library
> pycrypto.

> cgi-bin/cryptmsg.py?%s

Use CVE-2013-7459.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYYqjUAAoJEHb/MwWLVhi2eZkQAI2VvbdXX96+KZkwOyfZ1hRi
Q8EgoeDQ7H1C0DQu/JXIk8WbSos+skE33JtKnuCIlh/rJumKSqydAbv6PJYFsME1
ENAvGxqMUMRKgsX2PywJ4NaI8JlfwE4ICMbjPV2DW9nma/4nlqEegq4vVqm+D5Nu
MeVKNcaNDiIgS0BVnWPsYO+dwGaBbvnlY+v/X+yY8GeRvm2iDJMwCp8N+YVN1mBk
+AS6LMdv6szelN2tTaUdjX8VvYe+GtRm7YNtob4DXT0F+MeH54s3wAahoaMIJ1e6
N9GtoETdiL5BVRmxBf1+XD/js2h/21TpMYL0sCXPutJnvbqgeVm3SjLqZ8hSeKUC
UwmhoO1iduP1y9ws+6HMi1cmzvfAfwxiMvoqms/MYzSx3hpjNkUVYMyfDwTzoJyn
7NhuLA5ktdBZQr3gClr1g1xjQcqXRDwblBCIVfi/vM16DH4YuPWfiOTJOzYUFo2c
svqYeKbDFPqqMsqvfZhqmOKDg9WEyzJn3tYUbOI1AEPL21GnaND599vtMKudgB26
FJlPy7UnZ9aVr41w7YyqPeoROqH11mP9nPuSvn7jWol6jLkEJ75SMKlm8a+GWTyV
tikobUOX6U6A8aVgIm+4rIxgs9vPC51FyYVAGbSxn/PrOWmF9TE3AyCbmQMRwiA5
Fxirt0rchsO0HqXZOmFA
=8hmu
-----END PGP SIGNATURE-----
