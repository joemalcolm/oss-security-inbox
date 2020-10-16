X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2186" "Friday" "16" "October" "2020" "19:03:29" "+0200" "Pierre Riteau" "pierre@stackhpc.com" "<20201016170329.GB84510@raider.home>" "68" "[oss-security] [OSSA-2020-007] Blazar: Remote code execution in blazar-dashboard (CVE-2020-26943)" nil nil nil "10" "2020101617:03:29" "[oss-security] [OSSA-2020-007] Blazar: Remote code execution in blazar-dashboard (CVE-2020-26943)" (number mark "U       pierre@stack Oct 16   68/2186  " thread-indent "\"[oss-security] [OSSA-2020-007] Blazar: Remote code execution in blazar-dashboard (CVE-2020-26943)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-007] Blazar: Remote code execution in blazar-dashboard (CVE-2020-26943)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15896 invoked by uid 550); 16 Oct 2020 19:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21953 invoked from network); 16 Oct 2020 17:03:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=stackhpc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=pIp+RYmWCT6Alh/xHsOwiIlDQf3mFEdF56jFDupLHDo=;
        b=zbAInxoUDzWh4YrmeGInaW7Y6xQ/0R7z4Ohyd5qqjtrlPIB7+csq8pl4M9V38Al3JW
         4+AuEwWS/vTvhvMB+/bsQt+x+p3w+z3EitJfCECq3q9JHJHKgUdEt8ucT/1/S+c9+Q+P
         gw8qND4Ovf4p9jqss/pv3yGJJcWYuS40uwdQKxfIbG+/T5AkGfYMalvCPc99wcEJmBfa
         FTtRD7BcRX4Uhc3SerJGPRDZTVvwEvChKhrgc4WaDK7c4HyhH92Hmjk0NwC3BAdPZnaR
         idQDBD3xfnXBxHFOMKGxuC1W3NSRNXjZeSZKftzDnQIlDB0qbwr2Ho1q1B1qXMiOf8+9
         MTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=pIp+RYmWCT6Alh/xHsOwiIlDQf3mFEdF56jFDupLHDo=;
        b=KVJpc0qrmzsPlJssW9i1EpWwbIBc4iR+XQfUeW6GyHukiyutNqUJXze8rSEpPuENTn
         bpmEF5gObMg+NH2ggCClGSlbp/TmMX8CiaHFLT5soIiuyf0Ha0CjEoUF3zZm99xQpRPH
         pG3RmEqxPbD+Su2TvRpJ9cRWaAovQTFgBq28fPYpgzv6sweHSQ2VGDZ6wcbMnGvZA5G3
         MrDcL9Een+t3J7WNMYr0P/vCWwFWTzqVfVoeDKLCv/t4GX6GZPid2TJz2I/QX63I4ySl
         AiOilbWt12p/SMzgK2+jRA3bJn6bfG4ml4dH680mZ3dJ6ysyK12PpalR6v9DdiZlHXBb
         b6wg==
X-Gm-Message-State: AOAM532vj0KCTt+ib9MzpDXQHbhQbWrHSCcjWpn+wluNoacZDNZJ3FVC
	5LnVVsRkMGIgz4cApMdp/xTtYJH+f9kXAMyA
X-Google-Smtp-Source: ABdhPJymMeA3zkt2QnVJduiu95dXboMOwUpJAIWovYAd+uavL1ZP+8F97k8fT6tNKXPa1RHtuFd74w==
X-Received: by 2002:a1c:3d86:: with SMTP id k128mr4803128wma.153.1602867812157;
        Fri, 16 Oct 2020 10:03:32 -0700 (PDT)
Date: Fri, 16 Oct 2020 19:03:29 +0200
From: Pierre Riteau <pierre@stackhpc.com>
To: oss-security@lists.openwall.com
Message-ID: <20201016170329.GB84510@raider.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline
Subject: [oss-security] [OSSA-2020-007] Blazar: Remote code execution in blazar-dashboard
 (CVE-2020-26943)

--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

========================================================
OSSA-2020-007: Remote code execution in blazar-dashboard
========================================================

:Date: October 12, 2020
:CVE: CVE-2020-26943


Affects
~~~~~~~
- Blazar-dashboard: <1.3.1, ==2.0.0, ==3.0.0


Description
~~~~~~~~~~~
Lukas Euler (Positive Security) reported a vulnerability in
blazar-dashboard. A user allowed to access the Blazar dashboard in
Horizon may trigger code execution on the Horizon host as the user the
Horizon service runs under. This may result in Horizon host
unauthorized access and further compromise of the Horizon service. All
setups using the Horizon dashboard with the blazar-dashboard plugin
are affected.


Patches
~~~~~~~
- https://review.opendev.org/755814 (Stein)
- https://review.opendev.org/755813 (Train)
- https://review.opendev.org/755812 (Ussuri)
- https://review.opendev.org/756064 (Victoria)
- https://review.opendev.org/755810 (Wallaby)


Credits
~~~~~~~
- Lukas Euler from Positive Security (CVE-2020-26943)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1895688
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-26943

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEvO2SNQ+0D5egbV8eT+9DGpZ7YGAFAl+J0mEACgkQT+9DGpZ7
YGAqhBAAiCLOuzPhIPnBqf5VeHER+CqMdBHa4PqUmt9EhQwJRXeRwua4HPsuliRi
Q4U38x88pEYosAQQPQMxSDD7WhC30wfk/agbSh1NNhzxJIHLzuG+B2/vDcAsIZ6T
8luvxVvSGBTKIFio9Y8qhPBdj+/Kupjkl5YGeCjRC4ftxyt93vYUzkbb5kospLwc
LUafwzK5lYSejnTmNvRT/ydaJy3d8W1AFb6/8Moy2Y+TLicHlf3lVNI207njMdOT
kwWIBaUCpeTe4AXJl+u0ruzNoUOq4WfR5ZreXsYWd9MBA4uWYh5TsDGzEGvM26RX
0jM2DDMDhvJ+8kiiXGlHkcXY3KuPU4qbVJHkjZXfSuMuBkEKazrFJ4mBiqmCwuHS
amZzgJdblokTj1jrHfaBMEHBVHYWYx2v+qTiQYnty6Je1qBi6Xre4b89KhU+L7K1
7nHZZG/PYscP797K6goVMRKiLEEBVG3J4kPkK1IMk+7RGSZe117EcmyGLfAEngx/
7sNnm6GRU8b02aG2eu+tBHpL5C6I/CFCOAeZd3EpsAk0vByeDHrueMqkY8ITVgfE
vK1Z+1c0FF0+fjBNGPBgL3RSdsbswxKQwIrLzZt/V0G34TVhLEUktJNgCbQTj1qg
MYPgOZjBo9bVJx3GLBZq1hjabVdrXUC082amLenMp55pX0xxKkM=
=crYN
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--
