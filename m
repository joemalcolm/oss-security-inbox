X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Tuesday" "30" "June" "2015" "09:45:35" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<55929D7F.3050805@gmail.com>" "34" "Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063013:45:35" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        danielmicay@ Jun 30   34/1470  " thread-indent "\"Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") "<55923253.8020902@deusen.co.uk>" ("<55923253.8020902@deusen.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26267 invoked by uid 550); 30 Jun 2015 13:45:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26249 invoked from network); 30 Jun 2015 13:45:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=1tJ+DrBtEAoprDseVD4JG9V9Q6sJmnT2SPZ2PkXUk+Y=;
        b=AX4mG/0w6onUeDs6uE31ofQZ+CK7tQJFNyc/eCkZMYNcqX9EIp2p4nr+zM4S4/o/s3
         N/+JLUaEcTts2VjL9b9vWesuc9bJC3SeEcH75Y2FteZ+CV5a8JEgKVyDCVfUrFGU5d1E
         rid9cwtM8NlKt4nbD1gaP67VdWPr1v7O+ApcHFHTLhrGyzzMSRK8MycIrvBLUGxbtQWp
         K1wqsYV7iosBEkvhXSLbGyyniQyiSgBes+AjPlC0HZQmwWuQ0YlMVepRWsZIJAldLP3d
         Pv+dZ/cbmGg3zq2L5/cI3p9FBH7BVepsD3n27igCuEXX0LL0Fr9XnW33LSI3CvYckPx2
         XIeQ==
X-Received: by 10.50.132.70 with SMTP id os6mr25246568igb.27.1435671940820;
        Tue, 30 Jun 2015 06:45:40 -0700 (PDT)
References: <55923253.8020902@deusen.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <55929D7F.3050805@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55923253.8020902@deusen.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="FGGUjnUm8XbiPda5Nd0jTakkbqLKOeinS"
Date: Tue, 30 Jun 2015 09:45:35 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Google Chrome Address Spoofing (Request For
 Comment)
To: oss-security@lists.openwall.com

--FGGUjnUm8XbiPda5Nd0jTakkbqLKOeinS
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

It does display a window with the oracle.com address, but I don't
understand why you've got an ever increasing number of setTimeout events
built in here. It's also unclear what you mean about click-to-verify. Is
this bypassing a warning prompt by breaking it with a flood of requests?


--FGGUjnUm8XbiPda5Nd0jTakkbqLKOeinS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVkp2DAAoJEPnnEuWa9fIqMkIP/AggxS7mB4NMT9xx01X4R7oc
4gwPtnDLk49K5wPDAIVp+IhTiXFkQP8x3+sACwjHGUfnJciyomRvQ3VWewX4rdjI
UY65G2NitTy3IeTugaslAZNCuNCN94oK2YfVjWqd/ja+BGR2gVvrqN9Xcre8WuUK
MVWiZOm7Qct37qtOkkhYLTovjes+jLgF/MZy3ni9L8tzELTFd+4YU8N66FVKEhUx
y7vmrbevskFM14VaJE9DaO0gLH4jzZjr+pYGmITquYSHjKG8zdfeT9J/QETtjzu4
hCGn4eSMoQUrdGvlWvqc8pSRgsXU/T2CSeE20MlS+8sLI0aV8iVXXA96CVdDD43C
+Jgh0Tv/TwYgV0qXGyTPQmkEXmJmjprbk1b2yF+O/Ee+lhI3skrqd+GS6Nbuyesr
51aOqLlrYmnlSgWeyCAQykXM2o/3k/AE/uaQVPEf4sYWl9b2nDlRq0I9ydOa4A/T
Nk8+FWTmuqrf5CKrebA3HVlrx1n5v4wC66G7DpTsPrH0FHeAt6JzZrQwfr49DVaR
0k0AYNFx0hU2gG8sLi2zRY3Kmmjmm1KaSYqNHqIAmG6r5cPQZORdRUxUj/leFMvJ
C7V6U9bPOB5Hx7rRBODCIbkPe8YaBI1Ff1X+z0NH6xvuavnoV2wJ0HgKasQGpEV+
S2e3ncQ8j111Xv3CZ0P6
=6org
-----END PGP SIGNATURE-----

--FGGUjnUm8XbiPda5Nd0jTakkbqLKOeinS--
