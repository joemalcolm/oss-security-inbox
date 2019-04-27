X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2245" "Saturday" "27" "April" "2019" "18:38:28" "+0200" "andreas@rammhold.de" "andreas@rammhold.de" "<20190427163828.rnp75yis33ysgvzp@ranzbook>" "55" "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" "^Date:" nil nil "4" "2019042716:38:28" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" (number mark "        andreas@ramm Apr 27   55/2245  " thread-indent "\"Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)\"\n") "<87wojie6jy.fsf@dell.be.48ers.dk>" ("<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>" "<87wojie6jy.fsf@dell.be.48ers.dk>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5779 invoked by uid 550); 27 Apr 2019 17:12:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3765 invoked from network); 27 Apr 2019 16:38:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rammhold-de.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qIITmxfGaOyRrEOKWGKn8Vj9f0f+M01v2EH54ZhObc4=;
        b=z6Qhew6a01pO1HpDefW+VMGeRoAzvsNpCrM3bLlD/CYX+0JIPZoX+tAk+YewVr2yfB
         Ec9gIW4W6k1UPwQDkS7jpoyxQsuZgt2y2Iln8iglEttVcYaft6SZTzE7u5nEzzbUTn90
         zoE7LPHtLq9qvX9ezVPJ08w4QOSqzG+bk15eLwMCqMOJwXVkHunDS25hot/PLcF3yhJS
         qGlsKg/ogQLS4YXya7kYepkLg+u+RMU4UErtzEvCZQS6Zu6i76U3ZYk/TAFKChYbstDi
         yesaTQN7XFqGjqAk6gMEfYBhbwdikD/ifbLPfMnjwiq+BH15DUmmR0feL5lEpU9d77X3
         EHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qIITmxfGaOyRrEOKWGKn8Vj9f0f+M01v2EH54ZhObc4=;
        b=a1rXrbkgk+vXfurIufZ1/OxigKEV8LMu8YCfL5suE2eKXe0kwIc67GmXqTHAZPGKh8
         eXN/vk0uEtrxo4zyLKNDROoJy0zQU4/2B/CJlBHIEhqLziuRABk/gMCgYns3gSKH2AZQ
         TMySY/jQ+T/fq9cE5yvTbwdmhZBa0Kx6JKMOFWrdhCdXXjE1cOWRJAoE4VrQL+A+tAJQ
         xtI3tGBhUKYk7fsT+E48R9ORSsZZNrg6iYgPrr5rAHhwfcVjSE8Gkzp4+L8lJ/4aJGsp
         RlO3DElyUCuQVoWyRfe99ayWNne4AxDLGs6sSmoKeLvSI9T1E8sR+y4GV0tHKyOwcUOz
         kHJQ==
X-Gm-Message-State: APjAAAWDyNOQ1ULTsKQrYr6rG4/2wFlXULO5stBoHZKt1sqmKTxvGZRY
	qmvH0s8vC+/iVr7EJB2o5hJgKCHGEQTaXQ==
X-Google-Smtp-Source: APXvYqyd4Zxign6MX7PMg53bm0PqKUivzdv3lvRxZB235Srqr/4u3lW+I+J2k/cewumXqBIDw/AN7Q==
X-Received: by 2002:a5d:4eca:: with SMTP id s10mr18182580wrv.319.1556383110941;
        Sat, 27 Apr 2019 09:38:30 -0700 (PDT)
X-Google-Original-From: andreas+oss-sec@rammhold.de
Message-ID: <20190427163828.rnp75yis33ysgvzp@ranzbook>
References: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>
 <87wojie6jy.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ikbvgs6f7h5rrr4j"
Content-Disposition: inline
In-Reply-To: <87wojie6jy.fsf@dell.be.48ers.dk>
User-Agent: NeoMutt/20180716
Date: Sat, 27 Apr 2019 18:38:28 +0200
From: andreas@rammhold.de
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple BIND vulnerabilities disclosed
 (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)
To: oss-security@lists.openwall.com

--ikbvgs6f7h5rrr4j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 12:13 25.04.19, Peter Korsgaard wrote:
> It is a bit unfortunate that these security fixes now use
> isc_atomic_xadd() which are not available on all architectures:
>=20
> .libs/client.o: In function `mark_tcp_active':
> client.c:(.text+0xc7c): undefined reference to `isc_atomic_xadd'
> client.c:(.text+0xca0): undefined reference to `isc_atomic_xadd'
> .libs/client.o: In function `client_accept':
> client.c:(.text+0x2210): undefined reference to `isc_atomic_xadd'
> client.c:(.text+0x230c): undefined reference to `isc_atomic_xadd'
> .libs/client.o: In function `exit_check':
> client.c:(.text+0x2958): undefined reference to `isc_atomic_xadd'
> .libs/client.o:client.c:(.text+0x5cb4): more undefined references to `isc=
_atomic_xadd' follow
> collect2: error: ld returned 1 exit status

There is a commit [1] on ISCs GitLab that removes the atomic operations
in favor of refcounting and thus fixes the aarch64 (and other archs?)
build error.

I applied that commit for NixOS. Looks good so far [2].


cheers, andi-

[1] https://gitlab.isc.org/isc-projects/bind9/commit/d72f436b7d7c697b262968=
c48c2d7643069ab17f
[2] https://github.com/NixOS/nixpkgs/pull/60330/checks

--ikbvgs6f7h5rrr4j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE0IG39SavZobwL+lX5DLkELXkjIYFAlzEhYMACgkQ5DLkELXk
jIaN0g/8CFq/2aPdFXAlbHW9emr4PIgYcamQ7iq/FbmEgH3g4TmD86QgnuCxey+t
gzHXYgOUffTJZy64ip8un+P8rUVCYF1Y5cKVYwS7ECvjZj8XWtCobM6i1HHg8YwG
19Ew5MfvVdAwnx/mUyROIJ2TGTOuVRGckIH1yzy3oxkZg0FxDTHqzRLpbWPLZLOp
ZMsB4JtxB01K4tdYeQji0qTAONAo7lwpQejHaqcy5UeGo+rN2kphlt81zHqENYOi
M90c44C8T/2m5srMRbkPSRkkt0V425NQcxO9IVD3MWg+v3zh2ETnu0dHJAfqVlIR
4inWpyBlPekZ2jYzBgib6moIxxhJmBk2pSF4AS7DfuCzPfzwH8x3LoDo8kCoyzSb
Wctx1kWuUSptmLdNVWCrMCxROFgknMGYbZB+6IHQ5+AY7OsWGJpSRE0TOaenia3g
tfZvjWiwAvi0gAkjJ7VKLVqdV8lnJpY4mziGD/5xMcmOhEK1yT0iJpgb9XS7RpNK
/nJCE0GysGUMaUN9VwRHB3T5KyuqiwqkaB3McEt0XXA6d/9zaS8KQXuY838qbrGj
yRbaf3tYH3U3qDUACA1FL4VEsNpLfrpRaoPHT1Y+u5kX++bRtMVk1oTVzD6vdR2/
MZHGk92MTjc3h682P5PlWxz22oYuMVEz00eGKW5aOqFpBMPy4vQ=
=JvGa
-----END PGP SIGNATURE-----

--ikbvgs6f7h5rrr4j--
