X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2954" "Sunday" "17" "September" "2017" "12:27:41" "+0100" "Luke Hinds" "lhinds@redhat.com" "<6bc72013-a061-9025-7b50-7e35f63f45f3@redhat.com>" "77" "[oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" "^Date:" nil nil "9" "2017091711:27:41" "[oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing" (number mark "        lhinds@redha Sep 17   77/2954  " thread-indent "\"[oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21933 invoked by uid 550); 17 Sep 2017 11:33:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17803 invoked from network); 17 Sep 2017 11:27:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=OFva6IIq0c0CLJE4HvpKa3+jgRQDsEO5nhy4GVlh+CQ=;
        b=CSE+G4k1rcxj5SlGtItyEHZN+geAoqT1ibTcRza8+XF/L2u/5EBxiBSscEGeZFM88N
         xs311+MSaYyG7h5xMePf7fxu5yC53SaZRKvwnCRWV6G9BEXzm5vdNPZ7U0UG72AOngzP
         w2nVmP017sqRdLsNrqBB8fUoNSQrF07Hz1ZoTNLUXLiwBno/TWG2wfABzHRbcQ04EHu1
         Wt9nVW/H6dkFvkIHHymE0wPL/UJXg/u1xT7n7ye4LU6af3odI0luLYqcylt4IdQuTdPg
         WDiTAvBtwI8D5wkxCMRT2s4s2blzIg0uE/ODLfROtVtFLx34uh/Da13nps7YbMYk8ZG9
         mBdw==
X-Gm-Message-State: AHPjjUgIPwclqoqSou6lJNTpE2tGbW2JpT8eChpGtuY7BcqWCHx/RnCK
	x2oSdE8PiWyIWCZ3+goNQQ==
X-Google-Smtp-Source: AOwi7QBe/G1tI1IwQV3qSBKOnyhxuyJex7+TMXAqBIKIL042asThw0TGXt98NhJVXbUvg5vsH4RGow==
X-Received: by 10.28.228.213 with SMTP id b204mr6549475wmh.157.1505647662738;
        Sun, 17 Sep 2017 04:27:42 -0700 (PDT)
Message-ID: <6bc72013-a061-9025-7b50-7e35f63f45f3@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="AiCvJrXHgFipeoDHNOPMjWKpaPogpnh5Q"
Date: Sun, 17 Sep 2017 12:27:41 +0100
From: Luke Hinds <lhinds@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSN-0081] sha512_crypt is insufficient for password hashing
To: oss-security <oss-security@lists.openwall.com>

--AiCvJrXHgFipeoDHNOPMjWKpaPogpnh5Q
Content-Type: multipart/mixed; boundary="sFUp5kdVxPttMGJvLnTjJKG1wtoaajg4s";
 protected-headers="v1"
From: Luke Hinds <lhinds@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <6bc72013-a061-9025-7b50-7e35f63f45f3@redhat.com>
Subject: [OSSN-0081] sha512_crypt is insufficient for password hashing

--sFUp5kdVxPttMGJvLnTjJKG1wtoaajg4s
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB-large
Content-Transfer-Encoding: quoted-printable

sha512_crypt is insufficient for password hashing
-------------------------------------------------

### Summary ###

Use of sha512_crypt for password hashing in versions of Keystone prior
to Pike, is insufficient and provides limited protection against
brute-forcing of password hashes.

### Affected Services / Software ###
OpenStack Identity Service (Keystone). OpenStack Releases Ocata, Newton.

### Discussion ###

Keystone uses sha512_crypt for password hashing. This provides
insufficient and limited protection, since sha512_crypt algorithm has a
low computational cost factor, therefore making it easier to crack
passwords offline in a short period of time.

The correct mechanism is to use the more secure hashing algorithms with
a higher computational cost factor such as bcrypt, scrypt, or
pbkdf2_sha512 instead of sha512_crypt.

### Recommended Actions ###

It is recommended that operators upgrade to the Pike release where all
future passwords would be bcrypt hashed.

Operators should also force password changes on all users [1], which
will result in the users newly generated passwords being bcrypt hashed.

### Contacts / References ###
Author: Luke Hinds <lhinds@redhat.com>
[1]:
https://docs.openstack.org/keystone/latest/admin/identity-security-complian=
ce.html#force-users-to-change-password-upon-first-use
[2] http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-63b.pdf
This OSSN : https://wiki.openstack.org/wiki/OSSN/OSSN-0081
Original LaunchPad Bug : https://bugs.launchpad.net/ossn/+bug/1668503
Mailing List : [Security] tag on openstack-dev@lists.openstack.org
OpenStack Security Project : https://launchpad.net/~openstack-ossg



--sFUp5kdVxPttMGJvLnTjJKG1wtoaajg4s--

--AiCvJrXHgFipeoDHNOPMjWKpaPogpnh5Q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEElSwKI1Vlx+dE6h5a8WVWFzwgJhQFAlm+XC0ACgkQ8WVWFzwg
JhSITQgAsPMaKM+DydmJUt2irLFbnVtNEfoZ1ZZCBKQFXXIvESUtMCHrZgmIAoq9
Ar3EIG9q9lKOE2rQhM+tIt4eGrur8Wf8WyUELCBTcCbxG4qpKm+TDb5g+AOUQ00S
KcTULEU3j2Q04k03C4G3xDDEuVR6/xpHFMVDEDSvccEYZ/tzh9IMYijy1Cu3bRpG
BnKOBeN8WyRW3GwA9nc4YpiCPZn+rxVXddaQNlxKwdAsubkHkjY3QpW1dS78PJGv
zjSFzOsP/k2ka+YdMtSqzIFR3W1Yx9BMX8U7FNH5O432f+MXVnyu97KrLCW7j0U3
bccS34LlxQZgvgyeBLrBi3WIamHuag==
=KW33
-----END PGP SIGNATURE-----

--AiCvJrXHgFipeoDHNOPMjWKpaPogpnh5Q--
