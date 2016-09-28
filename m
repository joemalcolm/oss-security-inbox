X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2821" "Wednesday" "28" "September" "2016" "08:54:01" "-0700" "Alex Crawford" "alex.crawford@coreos.com" "<20160928155401.GA30528@68-f7-28-d0-dd-36.libcore.so>" "63" "Re: [oss-security] CVE Request: docker2aci: Path traversals present in image converting" "^Cc:" nil nil "9" "2016092815:54:01" "[oss-security] CVE Request: docker2aci: Path traversals present in image converting" (number mark "U       alex.crawfor Sep 28   63/2821  " thread-indent "\"Re: [oss-security] CVE Request: docker2aci: Path traversals present in image converting\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BFB7FF@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BFB7FF@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9719 invoked by uid 550); 28 Sep 2016 16:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30605 invoked from network); 28 Sep 2016 15:54:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=itVK490p3bDq0M35bp+XdvZbJzaVszE4Di3VgI/kAzM=;
        b=ATMZvlVVLOsfnGJ14G1dc/1Dj9+BDNF2IdYck4rJj6sWKIi2k+WDpFa7YXmvecIjFP
         0L1Rb/QOB3qMfZO0ogzCa/slt3YBMchIMkKHuCUZ64gVwjX06P6BReYkuZAFSsYonGVv
         H5ns/HnD2ujDqfqClh4PU9qE+xw133gAV+qdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=itVK490p3bDq0M35bp+XdvZbJzaVszE4Di3VgI/kAzM=;
        b=NWoDGrazgkYaOooV/cJThQZx8YIgCFFtt5neADws9sfxePZOzjeXpV90qfOfx2wY/b
         AkCv24vplhdKznhYydvupTDe0I9pIg128yNhfc+pwlY+k+TK2SgQZjV6k6u/bHRZsl5f
         FpM52T4HGPwYuONsxEJQsuWQCWEDq7pAgjL2yaQ8mGOmQuE4GDkWHmhaBuGlOxDoR7Wg
         YbfwNl3TRJtvVMb8qRYeRHp5S5gucv/TSJMZG5joQpY7scTWq9SpeW0G4yzeRMOlh1oG
         7mSlefUkmicdhUz6B1CSqBGJ9Li/7QyDdVHYF3gNYAVHuZcm+OkNVetVqAsrzJeZ9zmF
         o+Xw==
X-Gm-Message-State: AE9vXwMpbnAIztAhvYc74OXUpHhnW2N6/El6KTq4TaB2/YqRxJhFuF8+pfo7RWT2BarkiqlF
X-Received: by 10.98.158.218 with SMTP id f87mr57263441pfk.179.1475078044885;
        Wed, 28 Sep 2016 08:54:04 -0700 (PDT)
Message-ID: <20160928155401.GA30528@68-f7-28-d0-dd-36.libcore.so>
References: <5EDB84F4B23F5B4DB6500A89258280E0BFB7FF@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BFB7FF@EX02.corp.qihoo.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign <cve-assign@mitre.org>
Date: Wed, 28 Sep 2016 08:54:01 -0700
From: Alex Crawford <alex.crawford@coreos.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: docker2aci: Path traversals present
 in image converting
To: oss-security@lists.openwall.com

--gKMricLos+KVdGMg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 09/28, =E5=BC=A0=E5=BC=80=E7=BF=94 wrote:
> This is Kaixiang Zhang of the Cloud Security Team, Qihoo 360. I
> submitted an path traversal vulnerability to docker2aci
> <https://github.com/appc/docker2aci/issues/201> recently. The issue
> exists in image converting, there must be a possibility that it
> extracts embedded layer data to arbitrary directories or paths since
> no essential check for the output file path. Could you please assign a
> CVE number for it? Thanks.

Thanks for the report.

We are investigating your docker2aci report in order to evaluate the
total impact and provide a patch.

Our initial analysis confirms there is a path traversal bug in the
docker layer conversion library. However, due to the specific nature of
how a malicious image must be crafted to exploit this bug (ie. invalid
format), the attack vector is largely mitigated by how Docker registries
are implemented. Therefore, we believe the bug has limited impact and
will not affect typical usage of docker2aci.

The attacks vector requires crafting layer IDs which are not valid,
according to current Docker image specifications, and thus remote
exploitation relies on registries providing non-conformant Docker
images. Since common registry implementations like the Docker Registry
and quay.io validate layer IDs when an image is uploaded, this bug
should not affect the vast majority of usage of the library.

Just for reference, we typically investigate issues together with
reporters, evaluating the impact and requesting a CVE whenever needed.
In your case, this was not possible as we received your initial email at
02:38 UTC and you subsequently sent a PoC to oss-security at 08:27 UTC,
without any space for investigation on our side.

-Alex

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJX6+eWAAoJEKYk4DxZNSlCCUsP/iEWz8hA/IRsnKXYGyG4jt8j
KiiNlv66b/q3t36QezsVpQe8fPdRuyWOh6UUFt66l1DXLxEFHiuR/qKaaTVJEYlf
bPr0kN5cOJkW1ekwSpLHz4pkOA4ecVXGcoc04iXUYpJ7hXOE8OcmIM+XCZUbdGyf
JM0tRzJ2IL59UyXtTYCPj2BHQOs2gFnYhzVWEPzr74XLlu0xiIuXTa6A86IIlq7a
UyTsw9sNJV1E/TyZf5CYoeCFnK3AcqFImRGhgkPtcVbNPysO7goyfad++1SRxpHt
1FDqyOklIkI/LS4kwbEkwtH2C6dkTJ5cAtEndyT63sLJpL/6ltXIS4Qyo5yG3cHo
IqCqYeXUmnpFjz0X5mopgnFZEr39YsG8/bBaF+aGZVLFYOmISh9wyv9WyeAuxi1E
0obl0OmBpJeTeQ6pAQLmam7ydrXPRLLJLxrpzggyV4bn4g9bSkkUNVi3jx5eUc07
RWXPWuPhx6OAtmwkIzlf5G+Xgxm9rH3MdNEZOr4BUPyHlvRYe8IUlpXjVEpV1Ssh
+eZapw6Y4vf0Y9gur3u/8cQzQE0ZiVRiFuToVKr2kOfCOHrv4HyFb9hyCAbfFAfB
1XHsnkIxyo9+RIze8kFIFG9Q3cg1d5y/IiXSv7F9tQJ6QjpgEbOWtOFjAZPQK72L
PYqR0mkcJP2GPbyP96ux
=s9Mq
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--
