Received: (qmail 17737 invoked by uid 550); 17 Feb 2025 16:31:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17643 invoked from network); 17 Feb 2025 13:45:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1739799895; x=1740404695; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=AF+YQFEIAY4HbAKwj+wr0tepkoyctiKh6gnmVyQ6XbI=;
        b=t6Y6eOyEX6umqfJ0kOmTlHM8R0Y8hmFzrXTwaRmYIwpjrC+vrmr1UtPTLQP5NabkDk
         +Ul2pii1pESvnXAGjuKwKHH+v46jsQ8GI1VnIWnHTxGRycKsEDmkjmbxotTcbmS+y0Y1
         OE6Q5uvHcg5G9uLx5X5WUFfyaWqlAjwlvZD/RJeWYJX42vHEUtEOrPB93V6NpsdKRgvR
         sZwCXAq59rpnKiEoPUV1S4CMN078kvA+Vd+D9zvMllYboOF+W1ks848xNf9P8fEue/az
         VoZCkaKU596pRae17HEnJ/Z9bGFgkyTtdy5tEnV+G0j7DmjFObbpp9qq7AI3Fy3yRQfE
         wCbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739799895; x=1740404695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AF+YQFEIAY4HbAKwj+wr0tepkoyctiKh6gnmVyQ6XbI=;
        b=iyJ29cJK+vD8ZHvifZKG5trx/LJZzx7A24dYX6Ydf18m5YwFfsZMHCGVhZdkJmKFYd
         tWALDfQNl06ieuhhxZog8flYfJ1yvYcRAB2/O7Q4dQIaBWAIjvg1svPW0sWstN7VVbyW
         QrGsaXinB/J86qr+px2rHV0wYxG/riIvW2Sk4qMTDXGdCngPFuDeJQR4iGUTrd42t2i7
         z1Vcu+oHNwnYTGkU9Lk/T7zWxAbs3QxyD2ImLw3SNFxwNHN6I2nXW3kgDVeeQUZhUveO
         t9sd3dRQ+Jt6KzHuuZes6qgk6JWO9O2zO6a5v73UMfGKhQuJOluC6PhcQd5oilOUglpU
         GEtA==
X-Gm-Message-State: AOJu0YxsFYZFhct5oUCXqtzaYaA9DfqsNhFyW+jUejitS+FE3tuHWMuI
	cmnBUbdAm2dteZht2HODqShasBII2nfEfdw/023NRMqCQVSjancS2PiIeYJ9Kw+740duOC6NTic
	N
X-Gm-Gg: ASbGncv/ucXujJrKw6RindeCO+DmQX1XBflloYSU7tpHMiJxRRmppOQqDE7zaMbwov3
	zDVACBBP5lXmtw8vVQ2fh0sZ86TJSL8HKmkIouY0mZvKZgsHlFRSypOc+cDdzMy/loesFZpo3j0
	Jce98bQWtwMIWCyImDx/TvuCO8iTXuCVRWh+NVqI5wNmsWKJglWEQsfEOIfTofQcI5++/vVwIvD
	rm7Qe7RHqX0PN8p6TvlpF3w5+qXOtYaYX/nSCEx3x20XTi4/WwLzF8F8zB5hfTkWncZ2hQ7AJ+U
	jmM3C3Cvzm/MBWr3
X-Google-Smtp-Source: AGHT+IEo4Jl0bmCLtZUO1aouoEABLUSgWy8tnRXtAXsAlNl8xu3uh320pC4XSgbwhSeDdFsJ9VRPzw==
X-Received: by 2002:a5d:47c3:0:b0:38f:3c8a:4bf4 with SMTP id ffacd0b85a97d-38f3c8a4e49mr5741702f8f.6.1739799894832;
        Mon, 17 Feb 2025 05:44:54 -0800 (PST)
From: Richard Weinberger <richard@sigma-star.at>
To: oss-security@lists.openwall.com
Date: Mon, 17 Feb 2025 14:44:54 +0100
Message-ID: <3076904.RxA6XjA2Nv@anvil>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] Multiple Vulnerabilities in U-Boot

## Summary

- *Identifier:*                   sigma-star-sa-2024-002
- *Vendor:*                       -
- *Product/Software:*             [U-Boot](https://source.denx.de/u-boot)
- *Affected versions:*            <=3D 2024.10
- *Fixed versions:*               v2025.01-rc1
- *CVE IDs:*                      CVE-2024-57254, CVE-2024-57255, CVE-2024-=
57256, CVE-2024-57257, CVE-2024-57258, CVE-2024-57259

## Affected Product and Vendor

> U-Boot, a boot loader for Embedded boards based on PowerPC, ARM,
> MIPS and several other processors, which can be installed in a boot
> ROM and used to initialize and test the hardware or to download
> and run application code.

Source: https://source.denx.de/u-boot/u-boot/-/blob/master/README

## Description

Multuple vulnerabilities have been found in U-Boot:

- CVE-2024-57254: Integer overflow in U-Boot=E2=80=99s SquashFS symlink siz=
e calculation function
- CVE-2024-57255: Integer overflow in U-Boot=E2=80=99s SquashFS symlink res=
olution function
- CVE-2024-57256: Integer overflow in U-Boot=E2=80=99s ext4 symlink resolut=
ion function
- CVE-2024-57257: Stack overflow in U-Boot=E2=80=99s SquashFS symlink resol=
ution function
- CVE-2024-57258: Multiple integer overflows in U-Boot=E2=80=99s memory all=
ocator
- CVE-2024-57259: Heap corruption in U-Boot=E2=80=99s SquashFS directory li=
sting function

## Impact

An attacker capable of modifying ext4 or SquashFS filesystem data structures
can exploit multiple memory corruption vulnerabilities in U-Boot.
For systems that rely on verified boot, these vulnerabilities allow an atta=
cker
to bypass the chain of trust and achieve code execution by exploiting these
issues.
CVE-2024-57258 may also be exploited in U-Boot through other subsystems tha=
n ext4 or SquashFS.

## Mitigation

Upgrade to version v2025.01-rc1 or newer.

## Patches

- https://source.denx.de/u-boot/u-boot/-/commit/c8e929e5758999933f9e905049e=
f2bf3fe6b140d
- https://source.denx.de/u-boot/u-boot/-/commit/233945eba63e24061dffeeaeb7c=
d6fe985278356
- https://source.denx.de/u-boot/u-boot/-/commit/35f75d2a46e5859138c83a75cd2=
f4141c5479ab9
- https://source.denx.de/u-boot/u-boot/-/commit/4f5cc096bfd0a591f8a11e86999=
e3d90a9484c34
- https://source.denx.de/u-boot/u-boot/-/commit/0a10b49206a29b4aa2f80233a3e=
53ca0466bb0b3
- https://source.denx.de/u-boot/u-boot/-/commit/8642b2178d2c4002c99a0b69a84=
5a48f2ae2706f
- https://source.denx.de/u-boot/u-boot/-/commit/c17b2a05dd50a3ba437e6373093=
a0d6a359cdee0
- https://source.denx.de/u-boot/u-boot/-/commit/048d795bb5b3d9c5701b4855f5e=
74bcf6849bf5e

## Credits

- Richard Weinberger ([sigma star gmbh](https://sigma-star.at)
- David Gstir ([sigma star gmbh](https://sigma-star.at)

--=20
=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8Bsigma star gmbh | Eduard-Bodem=
-Gasse 6, 6020 Innsbruck, AUT UID/VAT Nr:
ATU 66964118 | FN: 374287y


