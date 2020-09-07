X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1823" "Monday" "7" "September" "2020" "17:34:00" "+0100" "Luca Boccassi" "bluca@debian.org" "<822f14305cc419ab1b2027fb88f1ca4c7b83c766.camel@debian.org>" "53" "[oss-security] CVE-2020-15166: zeromq/libzmq: Denial-of-Service on CURVE/ZAP-protected servers by  unauthenticated clients" nil nil nil "9" "2020090716:34:00" "[oss-security] CVE-2020-15166: zeromq/libzmq: Denial-of-Service on CURVE/ZAP-protected servers by unauthenticated clients" (number mark "U       bluca@debian Sep  7   53/1823  " thread-indent "\"[oss-security] CVE-2020-15166: zeromq/libzmq: Denial-of-Service on CURVE/ZAP-protected servers by unauthenticated clients\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15166: zeromq/libzmq: Denial-of-Service on CURVE/ZAP-protected servers by unauthenticated clients" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29830 invoked by uid 550); 7 Sep 2020 16:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27666 invoked from network); 7 Sep 2020 16:34:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version;
        bh=GcdpJRcZF2TnTZxOyT8Re6tECi1AHLDXFOPEG/Mk28w=;
        b=fF/C7ULkhuLL70YkOuo2A2gaeJoDmfVWR07OMi8dQdrUVfGYDt5Dn+0R9hxktS6hhs
         odaqmeAS0egiQ+M7QjjR1+T2/fY4jhYHznuHgUeEixLKrO3wn+Pi0eUrBiGBweNkQZ14
         YuHGzigyJtfe9kQ6CH3Z6nvh6XZFTX2JobM7PxK+NfZDwxP4ox51TpmhJaES3SKdx4sY
         iAHOvbnNXLuZEBi0S2Tez6fG8xIWPjlSHeVCJM1njGTlnBk525zky4+qhtIU+AnaE0V5
         LiC0xiGg6QrOjXpfqV25RCHEMlM5UJaDFOjyNPt6o4v6xZIfcTNZcvTJIrBu2PTAYSkK
         YIBg==
X-Gm-Message-State: AOAM530a3vF7f6B+t0qLeLPxv7khM3dioqdQTwVw1+swhM7Ig0K00Cp5
	4dSEaHBIgEuRICg18xt1uA8n8ACsQJDqsA==
X-Google-Smtp-Source: ABdhPJxhcwZbYW68e6CKCjHF9VBCiz9HZ2q/pfkmLXA+jKTOaucHA2C5iEcT/P08uomWOqDc7ZRaJQ==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr22467602wra.412.1599496442546;
        Mon, 07 Sep 2020 09:34:02 -0700 (PDT)
Message-ID: <822f14305cc419ab1b2027fb88f1ca4c7b83c766.camel@debian.org>
From: Luca Boccassi <bluca@debian.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 07 Sep 2020 17:34:00 +0100
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Df+QO70UMjk1PA4Mgk2M"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Subject: [oss-security] CVE-2020-15166: zeromq/libzmq: Denial-of-Service on
 CURVE/ZAP-protected servers by  unauthenticated clients

--=-Df+QO70UMjk1PA4Mgk2M
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A security vulnerability has been found in libzmq/zeromq.

CVE-2020-15166: Denial-of-Service on CURVE/ZAP-protected servers by
unauthenticated clients.
If a raw TCP socket is opened and connected to an endpoint that is fully
configured with CURVE/ZAP, legitimate clients will not be able to exchange
any message. Handshakes complete successfully, and messages are delivered to
the library, but the server application never receives them.
For more information see the security advisory:
https://github.com/zeromq/libzmq/security/advisories/GHSA-25wp-cf8g-938m

The following upstream releases fix the issue:

https://github.com/zeromq/libzmq/releases/tag/v4.3.3

https://github.com/zeromq/zeromq4-x/releases/tag/v4.0.10

https://github.com/zeromq/zeromq4-1/releases/tag/v4.1.8


Individual backported patches can be found on the upstream bug tracker,
and have been sent separately to the security teams of various
distributions:

https://github.com/zeromq/libzmq/security/advisories/GHSA-25wp-cf8g-938m

--=20
Kind regards,
Luca Boccassi

--=-Df+QO70UMjk1PA4Mgk2M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE6g0RLAGYhL9yp9G8SylmgFB4UWIFAl9WYPgACgkQSylmgFB4
UWLoyAf/SejkMRKxbCTZJ1rTwE9+3wDDKvaPjWXS3F9wtlPv+kITpa+yCVDX7UTo
5OSxwrxU/ZVLZG1DiQgPwlm/JPg4mjs8CwsXmtLuTNjJsEl23Czy48ZeC+x27IJm
FDyvc8iG7NDlHc/NdaXrz9XWRwc/a27EI/PysWQcr0bhD+AZz48G4zardQfMjIG3
emLCQrGB9Qj6ECKOyWwOu66wtIa2iRkvKJW33RD6FLmoPcVAskjOWwKy5dgzJLtV
EDKVhBNsRbZxaRdsCZ0KtbCAbe1Vr+SdU9NTbkOdDqv2HdDUSDiYOk6WiMt9ZAqa
QN5geyQpwfiynGeHOyy+tPF/OK73yg==
=+C9g
-----END PGP SIGNATURE-----

--=-Df+QO70UMjk1PA4Mgk2M--
