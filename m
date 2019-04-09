X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2264" "Tuesday" "9" "April" "2019" "10:51:04" "-0500" "Gage Hugo" "gagehugo@gmail.com" nil "66" nil nil nil nil "4" nil nil (number mark "U       gagehugo@gma Apr  9   66/2264  " thread-indent "\"[oss-security] [OSSA-2019-002] neutron-openvswitch-agent: Unable to install new flows on compute nodes when having broken security group rules (CVE-2019-10876)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2019-002] neutron-openvswitch-agent: Unable to install new flows on compute nodes when having broken security group rules (CVE-2019-10876)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28407 invoked by uid 550); 9 Apr 2019 16:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8146 invoked from network); 9 Apr 2019 15:51:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=AkvcvtnZ9wDCIkOJEeb9qAweLhIlyoKNyD9cssAZ3y4=;
        b=jsE3Flfy/iOunm435k33DTxYozToYh1O9ExJDQt9xObmNQM4UBhghXKOZDH3hDMx4g
         D0pWDl2x7PyG+IF8uHsdZ0pu6ndrXLxxMb/9OAkum79h4I2A3EreBiDBJhJiUb2GgdeN
         UdRz6Y8gcsNXTOuH5hA1WI8qQSZtn4gm4o59tZKUJK38o1IRBDUIgaQIy1z7+M2rRgKG
         IwCx71aXaliI7T6JHBvji7FDPi45w9CWQ1EDPwWpr4XGndHI78ACIApThRqItIWSx6W+
         Pj2+QeFiDJIhWEpUWtYxEKPE0HELrjFXtobyh8Ux0xA7Uyq2w04r7UJsuBqnQnfQSGYO
         +Bkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AkvcvtnZ9wDCIkOJEeb9qAweLhIlyoKNyD9cssAZ3y4=;
        b=MF53V9PiyM3pd+HRoFc4L728LX7beLvdCurQW5pl9OtO62/KQyB1H0wyMoLiCd8hdX
         5AcLGA0RGbU6hbiXhoDj2Lm4s+xli52rfOsol1bocYuoV4GtJLuMUv1fYMV4+It4IzMT
         241aggZjycyBnfyO570nOtTaktADfuwjN4ljHqocTNL2oZ9ITBzzWuKNKRzDcAk7zUEn
         ie8retKVYCQR+Z3sfUAD8cw7qPD821mQ+X1rNJg9b6xXBHA3PI8/wP1s02D9Gis8cljU
         Tgt90mWyJz8UvCC1yj4ugND0gBwlxGe/zAmpr26r/3EqZ880svdHXXhOKyXwT9GleZJ6
         hTDQ==
X-Gm-Message-State: APjAAAXzUy4yWEBoDhzg74xFx+4igZuyTm9Vyqv2JYRagDY4Mu6rJpUj
	2NM4t6IEKFO8x77MImyuPzqFZQPMuXzjVXWqg2qDaJAP
X-Google-Smtp-Source: APXvYqw+vHNNNOnjNvKVeOE1Njep3XLdhfUZyuQMEc0rYLTP9d85ckStiIZjG6Vdik3G5x6+HofgdN/xl5UnT2otkj4=
X-Received: by 2002:a25:2d44:: with SMTP id s4mr21642404ybe.333.1554825075023;
 Tue, 09 Apr 2019 08:51:15 -0700 (PDT)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Tue, 9 Apr 2019 10:51:04 -0500
Message-ID: <CAE4Awf_8r72i26qrxxiK_DUuysdM35n0Pwf15nicTSXNE71Cug@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000048e48005861aec63"
Subject: [oss-security] [OSSA-2019-002] neutron-openvswitch-agent: Unable to install new flows
 on compute nodes when having broken security group rules (CVE-2019-10876)

--00000000000048e48005861aec63
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

===========================================================================================
OSSA-2019-002: Overlapping security group rules prevents compute node
network configuration
===========================================================================================

:Date: April 08, 2019
:CVE: CVE-2019-10876


Affects
~~~~~~~
- - Neutron: >=11.0.0 <11.0.7, >=12.0.0 <12.0.6, >=13.0.0 <13.0.3


Description
~~~~~~~~~~~
Diko Parvanov (Canonical) reported a vulnerability in neutron-
openvswitch-agent security group rules. By creating two security
groups with separate/overlapping port ranges, an authenticated user
may prevent neutron from being able to configure networks on any
compute nodes where those security groups are present. All neutron
deployments utilizing neutron-openvswitch-agent are affected.


Patches
~~~~~~~
- - https://review.openstack.org/648102 (Pike)
- - https://review.openstack.org/648004 (Queens)
- - https://review.openstack.org/648003 (Rocky)
- - https://review.openstack.org/648002 (Stein)
- - https://review.openstack.org/640252 (Train)


Credits
~~~~~~~
- - Diko Parvanov from Canonical (CVE-2019-10876)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1813007
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-10876
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAlysvccACgkQ56j9K3b+
vREj3BAAvVBLfJT/cOyk2VjXjvlNKBWs1uokNE5PwzT0M2kvEW42zG78JpJj9EyJ
ONQMCiuclWJ6XcBLBhDG2MHzl31Rqnfhi1UxQoUPwZYtgTcokLa4NaGCQUMrRwpq
vigC8zWA9SiIQBHp4b/HE1ZA0GCKgK5CS2OuqmQH25/AzIDqwZZ7ljstRMh28VDd
PnorJwifeKq1uUL1AGRWmDUvfYaqzTbMxNlUcrXt2Iy50VLxdokmD+PtZMLvb7lq
UcpJ7R/er6HipNDE42hNzQAgEoPBNJ3hwEiLU64ZPCxSCMeKos5d2yAPNwLUYwdm
lVYJQtW1GkNDLvY37pHOFzFCK2XhjKQB29iZjz5ipC9EKs1HLnxCfJfvIS+bK3Bt
c3R0frUOOiDPeP+so1edl1f0eZJlhzV3SlFsLfLfFa1BYTxj6uuQdSaPaOTCGaLN
4TLAtysGl+USvXirOH+F/vuz9P0LOlL4f86/gwNY9Asb27MmKZFtUhQLux/k34Xg
gwSFtWTKqLJWrZjlGL/9irh6PiS6myrPCxsYh8XXOpVHSw5D353NrZ3hapvUthA6
BoArm9XxRlwzgu8JwXpEAc9FXRg3jUcwMrSYc5yZF4mw95+sfdHKVhoI6LuxBkYd
dA0aqbB/QkuFSanDZ+Z634LCkfbk/2Eo3HgjsrPUdvg2z2zLwfk=
=53iD
-----END PGP SIGNATURE-----

--00000000000048e48005861aec63--
