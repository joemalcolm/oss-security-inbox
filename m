X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Friday" "19" "November" "2021" "10:18:20" "-0500" "Vincent Batts" "vbatts@hashbangbash.com" nil "59" "[oss-security] CVE-2021-41190 OCI distribution and image spec: \"content-type\" confusion" nil nil nil "11" nil nil (number mark "U       vbatts@hashb Nov 19   59/2124  " thread-indent "\"[oss-security] CVE-2021-41190 OCI distribution and image spec: \"content-type\" confusion\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41190 OCI distribution and image spec: \"content-type\" confusion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15548 invoked by uid 550); 19 Nov 2021 15:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12161 invoked from network); 19 Nov 2021 15:18:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hashbangbash.com;
	s=mail; t=1637335104;
	bh=9nVpqXz2mcPIsDoZ1YVdummi/C3IKo7bZQSJTtWQRT0=;
	h=Date:From:To:Subject:From;
	b=mtnzoAa52jZoYBxQIn1sKDRrr2ee48dZre3YIYHQ685FDWgm5MXo0nGpdPj+pSU/r
	 s4yQMAaYmBkZyqKKbDGvJSSmVruFATWOUWFQrHGU8/9ZKva0AFfHwVi9ngsNDBmbp6
	 NKBw12XB8GkJkareN1MghOsg/YJ0Yz0gs5/LwJSbbEHEeYzndoAIXrlowE/MIUnPA/
	 9XBhkA3QZMk80cUwcW2u8/CNuWj/Jf8MiMCOZcL1MPIcY5DJKSyYmlhDo3o9nMoPDQ
	 +eZqZhY0o2XGX+4KjHNIFXIPBRCw8hr8/c9Ndinnf553OhIBuyNboJxvUbmxehgYFs
	 cCY9M6kpe/aeQ==
Date: Fri, 19 Nov 2021 10:18:20 -0500
From: Vincent Batts <vbatts@hashbangbash.com>
To: oss-security@lists.openwall.com
Message-ID: <20211119151820.cge3zrsfcsh4y4go@sshbastion>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="o2ekuehn664ykabb"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-41190 OCI distribution and image spec: "content-type"
 confusion

--o2ekuehn664ykabb
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Severity: MEDIUM (moderate in Github GHSA)

Description:

The specifications themselves needed additional clarification so that
implementations of container registries, and the clients that parse data
received from registries can have more securely defined behavior.

The undefined behavior this advisory addresses is a "type confusion"
where a JSON document for a container's manifest could masquerade as
both an image-index or a manifest without modification to the digest,
relying only on the HTTP `Content-type` header provided by the registry.

This behavior would have been mitigated by the presence of the
`mediaType` field in these JSON documents. As such a notable, but
non-breaking change introduced in these releases is un-reserving the
`mediaType` field for use, and actively encouraging it's use.

Advisory links:
- https://github.com/opencontainers/distribution-spec/security/advisories/G=
HSA-mc8v-mgrf-8f4m
- https://github.com/opencontainers/image-spec/security/advisories/GHSA-77v=
h-xpmg-72qh
- https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-41190
- https://groups.google.com/a/opencontainers.org/g/dev/c/ugWJ5ujnqV8/m/Yot9=
yHkGAAAJ

Release links:
- https://github.com/opencontainers/distribution-spec/releases/tag/v1.0.1
- https://github.com/opencontainers/image-spec/releases/tag/v1.0.2

Workarounds:

Software attempting to deserialize an ambiguous document may reject the
document if it contains both =E2=80=9Cmanifests=E2=80=9D and =E2=80=9Clayer=
s=E2=80=9D fields or
=E2=80=9Cmanifests=E2=80=9D and =E2=80=9Cconfig=E2=80=9D fields.

Expect releases of container clients that can fetch from registries, as
well as registries themselves.



--o2ekuehn664ykabb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRbFnXOFDoIi66S7f4Qk35Xcz8TYgUCYZfANwAKCRAQk35Xcz8T
YqJEAJ0aBOs5o2fcp3R7DqR1n5Ajege/1wCgrYSxHsaKnI/vds82ZrIDX/Jf55U=
=Xi7N
-----END PGP SIGNATURE-----

--o2ekuehn664ykabb--
