X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1876" "Monday" "7" "December" "2020" "16:43:33" "-0600" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf8zd+J4vhSv=cypMur2F24PxFnfsLZJsjZUzaHviQRTjA@mail.gmail.com>" "61" "[oss-security] [OSSA-2020-008] horizon: Open redirect in workflow forms (CVE-2020-29565)" nil nil nil "12" "2020120722:43:33" "[oss-security] [OSSA-2020-008] horizon: Open redirect in workflow forms (CVE-2020-29565)" (number mark "U       gagehugo@gma Dec  7   61/1876  " thread-indent "\"[oss-security] [OSSA-2020-008] horizon: Open redirect in workflow forms (CVE-2020-29565)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-008] horizon: Open redirect in workflow forms (CVE-2020-29565)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3633 invoked by uid 550); 8 Dec 2020 08:08:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5167 invoked from network); 7 Dec 2020 22:43:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=QOotXTX4zEHkamguBYSD/ojccO8sSg+NEvwXV5Y1bnE=;
        b=Lkh1Fhy2z26Mz0oYkfHZ2GCHuVZg6yehAzbVokud0ifrCC2Nz1S1R+alAcIl6zNIMU
         khUMOSSGSPb1HFLsbuylz8w3ujUrSKaptPHxUlU4Db2LHbVrs+0dA0AbORQNXbhW/UsZ
         HKnu3os29XTKHfJdDKZyUk34GIpiYkubVDH10lDqh7lr1h6h3EHM3GAqpCmZYKNX8WlM
         tu68J/OJ8otyaNsBrnshjofOR3fcbDYZBlAtcqcWfvZ3xI3tqwYLdX5NxUjAIouHDrSO
         MZhElo1XvnnGtxMoUViDxEWktiBHbBQgwHpBBXjThSzcCAEpEQg3WPYaaKP2o93aHNwS
         /Gqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QOotXTX4zEHkamguBYSD/ojccO8sSg+NEvwXV5Y1bnE=;
        b=ILRdgjUWUQJ8CLDLBhXocVR/qs1kFJSPEcNGZehSMhLNrOU0S58KyD1lJv59r/bh/n
         lqcvspMti6CMNucYS2/jwkDuAj9guSB44pEg0X4C3Ju4AIrqCb2TRPIRc4PyOofKTq/h
         Kvt5ppu1zHd/clZacd4zpxXkmjtQaxLu0wqpT9LCsfuGxV6TKWSDgTxYnPuNyHUD2UFs
         ScBbbPEyIolFBAHckADm4P5b7OfabjtvDrTafKhRpyMKiJeCgDPwxkiSNjd98XXo6Gqr
         0WzNYaCJHPJSvKovdOk5A6tj6OB1DFxrtdMVOHtYsa1bMrWjLI2bj73wFORyI8rgvEdJ
         ErbA==
X-Gm-Message-State: AOAM531JR8H3F7yZhIRm8gODGcOizz1uuIe/g/B6WgFBAl7jtAxhWode
	YcegM0cJA4m+uu3b+d4tM0cU8G4GvILTgkl2o5vRLOlAkj4=
X-Google-Smtp-Source: ABdhPJxOEuKNFtM2O+b/K8tsC6x4PjNfySSU+zllFDD2Sk4nF5aE73VTWtwG3AkvuLwIpi+GmKalVwJwQUb5B7HvL5Y=
X-Received: by 2002:a25:5c3:: with SMTP id 186mr12999950ybf.131.1607381023532;
 Mon, 07 Dec 2020 14:43:43 -0800 (PST)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Mon, 7 Dec 2020 16:43:33 -0600
Message-ID: <CAE4Awf8zd+J4vhSv=cypMur2F24PxFnfsLZJsjZUzaHviQRTjA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ed34c005b5e78e5b"
Subject: [oss-security] [OSSA-2020-008] horizon: Open redirect in workflow forms (CVE-2020-29565)

--000000000000ed34c005b5e78e5b
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

==============================================
OSSA-2020-008: Open redirect in workflow forms
==============================================

:Date: December 03, 2020
:CVE: CVE-2020-29565


Affects
~~~~~~~
- - Horizon:  <15.3.2, >=16.0.0 <16.2.1, >=17.0.0 <18.3.3, >=18.4.0 <18.6.0


Description
~~~~~~~~~~~
Pritam Singh (Red Hat) reported a vulnerability in Horizon's workflow
forms. Previously there was a lack of validation on the "next"
parameter, which would allow someone to supply a malicious URL in
Horizon that can cause an automatic redirect to the provided malicious
URL.


Patches
~~~~~~~
- - https://review.opendev.org/758843 (Stein)
- - https://review.opendev.org/758841 (Train)


Credits
~~~~~~~
- - Pritam Singh from Red Hat (CVE-2020-29565)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1865026
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-29565
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl/OrjwACgkQ56j9K3b+
vRG/Gg//Tyj5La8eFwIrwhpDbV/tKNFS+t3NzuhJzLS24WNS9cLf5yDronRdBPdT
Ow2OegTZ7K5GyoRARpycTjtE66RIizX9I8Kx27FXPc83hLYYOs/MButYpqcp0swM
687RXZGFcZ5HZtPuRuTcclEcyhzvcUX7HXmznOCmVOHchr+RXzmp6cXC7tyCuNkV
cGuuMtptDfkFmn2MpGmiTWEiMusMRbV5HqeyY39jg5dwph0kbMCcuzkX6c2WHubE
T+rjVKbmqHr+v7og6mkZoK+pVk6Ulta/lGsYh/0NlszdQw3poN4FIt//TIwJZVwx
WSlbMt6IwBW5XiPXvjpX9Awis6CT0jxlIV5XBq+klr3Jo+YnDsChElIPQs3CRKoM
vqXVextHCk3LK1Evs3FkBns2Taro4tWOlkGYKR6INT4F1TJKNIzIUiF08673uF3B
8zXDfnVEb7tEMqwu6OdVnfQQ4SRu7uyrN1sHhtwIyfK10AAI7gfJL/wbItJy21Om
SQahTfDnikEY5gYYU+NH0LBMXkE0I/T+uvPh4LgP7wUxCMR9uI8+iA0711Gp/aPD
WUdm3pUfIJYE7Gq6sT7BJQftHyMPcxOBj+MIrmFDFOxyPV70Mub+f34zxdu3Qoda
tZNpy/BGL19VqrlRa9R8H65tzzNy7k5GqkaUYEF5/LegfUgZOTo=
=jr+k
-----END PGP SIGNATURE-----

--000000000000ed34c005b5e78e5b--
