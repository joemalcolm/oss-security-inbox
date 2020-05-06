X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2379" "Wednesday" "6" "May" "2020" "14:54:11" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>" "74" "[oss-security] [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" nil nil nil "5" "2020050619:54:11" "[oss-security] [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" (number mark "U       gagehugo@gma May  6   74/2379  " thread-indent "\"[oss-security] [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21755 invoked by uid 550); 6 May 2020 22:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24258 invoked from network); 6 May 2020 19:54:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8FU18LbgjV6c8crXjpq2nYU9EIBGezTLA/ZOTyJI/6s=;
        b=nXpxFj0SP3pX/ilLFSNVmxcMQB9Ps0MmUaQSs1smy2bkYk9KhCHPv4Sh1CgEnwiPZi
         VJUdp/bfdMccHFEJ5SYNX/9hUQhnQbyT5O8DDzYP7yic4z1CRCro1pDh5MXlcW3HTN4/
         hXbwTCMfI9ONON8/o1mqPgHHcN1CZauqv+kv6WbDpkEMbBbfMh2pEcoihngQkc3E2ZWM
         lMvYCM4HhGXUr8L30S7go+n421BciQZSXMxAYPsQcveERByzvBPByZcWEshhYxY4Dg10
         s0HVghj+fVDEciTxXXDNV9KQDeVI49PI1D83y5750+eHUp8TmrlI5JwGIt6M0QLD7cla
         JJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8FU18LbgjV6c8crXjpq2nYU9EIBGezTLA/ZOTyJI/6s=;
        b=IRB6DDunHhsdzlEjPlQMTFlPpn7dEGlKcyFmyPf1TYekFUqcM73nPXkf/atkc39oGT
         rU3ItuHmFAuNkDLLj0s0ASTTwQV/LfUKlvG9gsH4XfKYXcD+4JQ14DK9C653tpordwNJ
         W8kROCvZnTGaR3CmNMp3OkduLkZWf9JDRw8UA+IEC6DhIZHTxSeHr1VS/Ty4godea5xH
         FxCMR9tYCvDk9NS7AwQpLA8vCBPNoBKpz7v53KoTxG3H2ODugB/shcEEcxxtcMs3mIyZ
         ycfwvAQw6aeKs83PBRUSLGgwsbubUeCzUysXp3YUfjWcODp4NGi78NH346046EzAlsUK
         X99w==
X-Gm-Message-State: AGi0PuYlkpAzx2ZYJS1InVJlBe5ZfEiuah/YRODPLtUGoiAC+Ef/vbx2
	mhUt3nBGyJDqOAt0kWX0DyNr/de81zI4GWy/QmO+euAm
X-Google-Smtp-Source: APiQypKhAAP5G0VFaGnj5xOjbBR/Qxgo9B59CWDMWa9mMPiFcrTsvtUX6yAYWeDY5iOewje7ZollC8IY2AT7EyCI2rg=
X-Received: by 2002:a25:8411:: with SMTP id u17mr16018800ybk.131.1588794862314;
 Wed, 06 May 2020 12:54:22 -0700 (PDT)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Wed, 6 May 2020 14:54:11 -0500
Message-ID: <CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000063af3d05a500212b"
Subject: [oss-security] [OSSA-2020-005] Keystone: OAuth1 request token authorize silently
 ignores roles parameter (CVE PENDING)

--00000000000063af3d05a500212b
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

==============================================================================
OSSA-2020-005: OAuth1 request token authorize silently ignores roles
parameter
==============================================================================

:Date: May 06, 2020
:CVE: Pending


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported a vulnerability in Keystone's OAuth1 Token API. The list
of roles provided for an OAuth1 access token are ignored, so when an
OAuth1 access token is used to request a keystone token, the keystone
token will contain every role assignment the creator had for the
project instead of the provided subset of roles. This results in the
provided keystone token having more role assignments than the creator
intended, possibly giving unintended escalated access.


Patches
~~~~~~~
- - https://review.opendev.org/725894 (Rocky)
- - https://review.opendev.org/725892 (Stein)
- - https://review.opendev.org/725890 (Train)
- - https://review.opendev.org/725887 (Ussuri)
- - https://review.opendev.org/725885 (Victoria)


Credits
~~~~~~~
- - kay (CVE Pending)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1873290
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=Pending


Notes
~~~~~
- - The stable/rocky branch is under extended maintenance and will receive
no new
  point releases, but a patch for it is provided as a courtesy.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zFWsACgkQ56j9K3b+
vRFDnhAArgXdQUnCyckPQciBvxMxQvqhCEhzGH0aQNAmMLaImYUwFhFVVO0DlcNb
kt/ynLQLdyi3YnCz1x4VhUXaCh4Rhi9pYkU4LKa/tvJj6anrCSLHmuDD52idkZeB
sFslgkh/BGfdM4HcuPLhs4SSaZpI53ASitiOhyjBIN/DmpLUbZgmJ1iz3FfQ3cTB
wtjYI4jGCCMq+4POSozWMzeYdL3JzR264jBCRrCw1ErIPjpF4KSOFaH5vqakBnzw
Ot7KR7s7FmIwU7LhCuvjgLW3rxwE1g5bz+Qd/97rC1bTx/iPHklQjMP5SoGwmjta
Kx1prUaQqFys5Bw93e0cj1Fwn0zNHUjqLs4LZscNbyGRyAZCPREeg2quwBxVUNk9
D6jxW3J2LYIu+ictVV5fnBQd4/+NtxM8ofLDM03QZouUpkNfCHAmW81BYqd2+Pii
VbJi5Litz+DHLrAyh0O4zD/PBc5+5zxB2EXEDVEJitqaxQWfogJwJzGe89ULom0I
VXMuYOvqaLV9f2JIG6SEBiKrfaUhSgoHTrmznt82KOlsOBMamQUaj5iTqDoDzPD2
LVB2WLABj1cFZsnTFAec1qKwEPXuT0p3Dsb7eyvwsq5aJYS5I2bjK6Q1WcCcqzJF
1b+v0iqW0Qu+Hk4fwvcrqqQMDZ7Q982tT+B7sU8xV4jYBtFLseQ=
=iEFE
-----END PGP SIGNATURE-----

--00000000000063af3d05a500212b--
