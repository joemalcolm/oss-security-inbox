X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1670" "Thursday" "31" "December" "2015" "13:42:46" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>" "43" "[oss-security] CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" nil nil nil "12" "2015123118:42:46" "[oss-security] CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option" (number mark "U       glennrp@gmai Dec 31   43/1670  " thread-indent "\"[oss-security] CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with \"-loco\" option\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29981 invoked by uid 550); 31 Dec 2015 18:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29963 invoked from network); 31 Dec 2015 18:42:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=6f1xF5wG+45Xqqknk13sEG75+WWasFIfbLTKmL68htI=;
        b=jyUv9UtywhMlTLDDQ3sDBSZIBp9a41WcLGAymwHHE/WpkCnFoDLzT9VHSwQhimkAc3
         r/JGSDbkd7znaCs21u4Gi0zR9bJCPfgASXwh/mnQbO2YN5v/gGD9lLkm/soUKmL84Hon
         N8t+tsOhxfG16b6TaYM4dmT9z/kllYtvnnC3cD4LR65U8/jhEFUnUtPwymd7QChmCDHs
         4EIKihzIECOTH6kpiGY3MI5VK+KCoTRF/9hCYUeI68x6OAEAwXuYa/qY8A06TAUL4O/E
         Q+xlOwx/Wnc3QChy6tY90caIIHXqCNvYy0/1Zf0RFNiyNTa2Cm2DS5dRraHKLWnYMVT7
         AZHA==
MIME-Version: 1.0
X-Received: by 10.55.78.70 with SMTP id c67mr92913997qkb.37.1451587366465;
 Thu, 31 Dec 2015 10:42:46 -0800 (PST)
Date: Thu, 31 Dec 2015 13:42:46 -0500
Message-ID: <CA+PdXcsSzW3-Ocn0ZUzARJ0Gkt-1Sg23V5K7m_3OzSQHBXA0aw@mail.gmail.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Cc: Brian Carpenter <brian.carpenter@gmail.com>
Content-Type: multipart/alternative; boundary=001a114a9bbe56b7fd0528360531
Subject: [oss-security] CVE request: pngcrush-1.3.35 through 1.7.88 segfault when run with
 "-loco" option

--001a114a9bbe56b7fd0528360531
Content-Type: text/plain; charset=UTF-8

I am requsting a CVE for the following vulnerability in pngcrush.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



Pngcrush versions 1.7.35 through 1.7.88 will segfault when run with
the "-loco" option and multiple trials.  This is due to attempting to
write to a file that has not yet been opened.

The vulnerability can be exploited trivially to create a Denial of Service.
Remote exploit is possible if the application accepts remote input and
accepts the "-loco" option.  No specially crafted PNG file is needed; any
valid PNG file can be used in an attack.

The bug was discovered by Brian Carpenter using AFL, and is fixed in
pngcrush-1.7.91, which was released on December 31, 2015.

Glenn Randers-Pehrson
pngcrush author and maintainer
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWhXTvAAoJEPVJhL+hbGQP6vkP/1fqKQBMXffpVZEJ1DzmTeo5
+F0mLYhRax0xKvvOBFw3jvmCF7Wr7FATXEjUiHc3u9FNeIQwmLosBvCajnWYhExC
jjiweKt7ZBg/7NPFLEcKFtVASjQCkSMFTsWO6jWi1PIxJYztp/BGT1FB/H3ecrUZ
IHwReuFu3qnjB9hbUy9pbrJmeVSyQY1DWnFwLFJ8PaMrHpvJfXiraPHNaR4WDDDp
PgmxVF8GrpINh8oBZP1gLlBiSsiAUvt6C4Bpr/LaMrP/6nnPBW0y3bptGorxa5gY
4Z2k/P+12lU15oV//RG1gYGAE5R7I2fteOLA0ES1Xsvw6re8tJ0oEl9SWmhCBBAj
n2C3sCLhK619/KHWx6tety9N5ZCBHdrk6hwYzLVFVLOLmHPyrhhJCI+HJeKde4nw
BhruvP+iuhxqjCDoHPoxLnK5FMdYxrGn2vB2lq6AGjFuKtd7Nb2hTsYZu7bnGWYQ
dpNiVruRkdABLm621twGdU3GN45DwgfTy8kucypPmkxhmUgz2z30EExNcS1r0ph2
ywmCUz11jYH4oJIrZE3LNSPzuT3zymBmwENbY5GYbAnAYnjbVyy/HcIrp9+eALxZ
EkO4hGAFidhijHn8NnMpQI9EIoNMPhiJN9fYKfO56GNFysKEFBeOwzOLIuAYQQb+
v0R8JFw32Xm4ULrDjXk3
=Lm3P
-----END PGP SIGNATURE-----

--001a114a9bbe56b7fd0528360531--
