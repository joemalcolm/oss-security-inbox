X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3255" "Thursday" "23" "December" "2021" "23:06:59" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" nil "65" "[oss-security] CVE-2021-44273: e2guardian did not validate TLS hostnames" nil nil nil "12" nil nil (number mark "U       patrakov@gma Dec 23   65/3255  " thread-indent "\"[oss-security] CVE-2021-44273: e2guardian did not validate TLS hostnames\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44273: e2guardian did not validate TLS hostnames" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17567 invoked by uid 550); 23 Dec 2021 18:07:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17543 invoked from network); 23 Dec 2021 18:07:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=bAkK2CvU5i50k3V3cfsK0CWytnLsICJ8O9djCBCJsJ4=;
        b=SqvQBQWLV+Z5hLa5ghYxk+oqkQ3roSucahLoYsCmjnXtA3L8blPe9aB0tnatHTqjhg
         s2QLd1WXijfhU44DdP6+Lrk/uwUqegx1rxEtxC3C2+ko7UHPY+49/y0LwKA6QYIrc9az
         HRxsIKrcuIM6VARmeF3J2Ns2DGIW+V3FNtPC1xQga3Uro/3nd88RBpypO+nJAcla7SBG
         szB6HarNjWTzKNRYCbd9AN9iTLEHmw3dlZYeam0Wu8cl5JZCG8dt6IZHe6Zwz1Vs7Tjj
         Z/CyZvjKx3ziOJdyJVIjWTGZZNbbNvuWMIU13KT1IK1DrdXsYq02tZ78OzaSkwz9a1jx
         o3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bAkK2CvU5i50k3V3cfsK0CWytnLsICJ8O9djCBCJsJ4=;
        b=BtjoZEsjXAcYI4Z0yvd8UShKYCTV31u2mUUkjQ+QdBQGkBazalQKhDrAUdnmRlq4B+
         v5XVvq6EboJkih2Ds4sHS3oSyj00Qv5gl1vNYYZJQ4+MljM8xBs9xc1fdFM3XKoO+0J4
         qw3UIOChRaTUzuyPXhqWLDCdGkhKp1z26aQfbXpN0U1wofI1cA+kIoNv6nnD7eXhv1aH
         Np7WjIHdt/aSJy3Kpo9ekR/Jk+Vn+QX3jmQqNPueu4NVWNZTyvHwx+3jOtWJ8BN10TS2
         uVelv7yFcNyoaSuKTHu1S/BRhT7rQf633EyTjHBonpO9fv83H9mRukSCBvrPX9sSPW5c
         oTpQ==
X-Gm-Message-State: AOAM5337P0aRBkv8+2TAh+3rVaGXWUzpALs8A6u5/aAppu6idwjkTXmr
	teMr3acG8lsdJKYH3FTQGds5aEghzh8fnQ3x7m3hyeOKco0=
X-Google-Smtp-Source: ABdhPJxpfNgTztLVW/Zq7akZXLw+PmspQBkOQjD51Wi0+EJ6q3cQiyWI5kMxvrnPy2nBNL1j5CWyCrDCkmCWj2fcPk0=
X-Received: by 2002:a05:6638:251:: with SMTP id w17mr1958150jaq.315.1640282856040;
 Thu, 23 Dec 2021 10:07:36 -0800 (PST)
MIME-Version: 1.0
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Thu, 23 Dec 2021 23:06:59 +0500
Message-ID: <CAN_LGv3XWN9ptJL-FpHpzYdO8CatqW0ZJ7xo=yQt+d-07cAcbQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f737a805d3d41c92"
Subject: [oss-security] CVE-2021-44273: e2guardian did not validate TLS hostnames

--000000000000f737a805d3d41c92
Content-Type: text/plain; charset="UTF-8"

Hello!

Some time ago I was trying to make a certain Arch Linux system compliant
with CyberEssentials security requirements from the UK [1], and this
includes the requirement for anti-virus scanning of all web browser
traffic. I interpreted this literally: break TLS using MITM on the
(transparent) proxy, scan everything with ClamAV. Note: I may be
mis-interpreting and over-complying, there is an unverified opinion that
anti-malware browser extensions are enough and that it is not needed to
break TLS. I don't know.

Anyway, I have decided to try e2guardian 5.4.3r and later a 5.5 git
snapshot, in the standalone mode (where it functions as a transparent
proxy, as opposed to an ICAP server), because of the apparent simplicity of
its setup. While testing it, I found that it significantly lowered the
security of the system it purported to protect: I was able to access,
through this transparent proxy, a significant amount of badssl.com
subdomains that should not be accessible.

In particular, I was able to access wrong.host.badssl.com, which meant that
SSL certificate hostname validation was not working, and an attacker could
trivially MITM the connection from the origin server to e2guardian. I have
reported this [2], and it is now fixed in the v5.4 branch [3]. There is
still no formal release with the fix.

I do not see anything relevant on the v5.5dev branch, though, and I have
not tested any other branches. The issue exists only if e2guardian is
compiled against OpenSSL 1.1.x, and is operating in the standalone mode.
Builds using OpenSSL 1.0.2 or operating as ICAP servers (as opposed to
standalone transparent proxies) are not affected.

This issue with missing TLS hostname validation is now known as
CVE-2021-44273. Distribution package maintainers, please see if your
e2guardian package is vulnerable.

I have also reported [4] another issue, that certain badssl.com subdomains
that implement bad crypto (dh2048, dh-small-subgroup, dh-composite,
tls-v1-0, tls-v1-1), normally rejected by browsers, are still accessible
through the e2guardian transparent proxy. However, we have agreed that it
is not a bug in e2guardian, but just insecure OpenSSL defaults (and no
user-oriented documentation how to change them via openssl.cnf), because
the same subdomains can be accessed via curl. Interestingly, Squid (with
ssl-bump enabled) does disallow such bad crypto.

In my personal opinion (which may be different from the official opinion of
any company that I work or worked for), the incident described above, plus
a similar recent incident with Squid (CVE-2021-41611), should be treated as
an evidence that such "please MITM all SSL traffic" requirements actually
lower the security and should be abandoned, merely because browsers
de-facto have the best available quality of TLS implementations.

[1]
https://www.ncsc.gov.uk/files/Cyber-Essentials-Requirements-for-IT-infrastructure-2-2.pdf
[2] https://github.com/e2guardian/e2guardian/issues/707
[3]
https://github.com/e2guardian/e2guardian/commit/eae46a7e2a57103aadca903c4a24cca94dc502a2
[4] https://github.com/e2guardian/e2guardian/issues/708

-- 
Alexander E. Patrakov

--000000000000f737a805d3d41c92--
