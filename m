Received: (qmail 11949 invoked by uid 550); 17 Feb 2025 16:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17528 invoked from network); 17 Feb 2025 13:44:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1739799890; x=1740404690; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jLEEvtUCFImH0hJSjW78lvlFRfK2qnnJ2r0SPNbaJHI=;
        b=U6ph42xwyMWyd4gRQxElD+82u35viJy6EKXnKn8NvInILkuFjvw8iz8U8AOy0Q8f6M
         8UXAFhg4MjL1g4o46kfCNJEO965d5qBRT3YDWKxcV1AKyaIFXL2mik6XTXqs3lpQYW3Y
         gClqg+iPB4qEKMVh+dux2rm3jTXG2Q91LVZfZoadgvN5zh1fEJ2fCBgTVJTRqki3ayvp
         yH6VzENz5xBteUV6X76LVgsHhMyo3fFK3udSTZAyYHE+7L9uuryfLgeAsf8V/s/71HQE
         9thZ5a8gwMaT2xlNzct3wx1xuBW/GDPE9j9WDcXdrkJLfyUyyApa9jmDGWkXqvLdeaRg
         tbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739799890; x=1740404690;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jLEEvtUCFImH0hJSjW78lvlFRfK2qnnJ2r0SPNbaJHI=;
        b=BXSmVVnRfEhfxr+hSnIwhIwGe1NsfDnwNReih7vuIpRDl0RnKyFYdLPGff0zqiAAPn
         l6a5JcF9TYYWm1Po1eOi/q94k6bTrhb9/UNhPgtwF9Xwa7U0xqLH1uFcOGs8d06kCLQl
         LPLPwg2tCNhhhXch4gi6ZWTVRzSk1S63X4YQcQ27FbdHcVi5qxTp9ZC2UG8VrjFbgnu1
         vbW3xo++0W1GySv5VnslUx+e/zxYDffCXU3te70c4Yca7Tcu7TiJZ7M/Ce2OYz07M8yD
         crM47RHs5v/S1vH6qt3SDNnLTLue8CbFUJnY10OoPrvPC++mrn17sm4Lc6X7DbrFAKpj
         Pd+g==
X-Gm-Message-State: AOJu0YzLceRVFi8MuuJH4RMiVvrJDUsPPGCEgi6A/CeYVnqH9FInZyJd
	qqiZJqDyWKr1OWHHmA9VothnqCpERO/NaN/3HuffRDjs0fJwauKpq7dVU3zSsu2b+x9w1cmE6HY
	E
X-Gm-Gg: ASbGncvgYxdolwYWqs6jBv4AZaWuGDTt1O5D/enp9oyXWMJvSlyYMl1xcruMPMzZv+g
	e6j62/Q1Sc7MOtbiU5Ppjf/LxBcds/sCZ19iARSemFtxFFU3Q/erL3hcUzpObwzkQw0cb8x/vpV
	r8Y4FXXzM+6m3njgnV2b8FaxM2DB59URc2ca1pmOkCRT9leph6ydwWhCj1wr9muJQYKwTc6uxCy
	weBAo4CEWg8hdpmAplLlGCcQN4gTaaGvLKfY/SvQOakk+B6EUb24IZj89LIQmunoURvur0CrA6n
	c/QooHMBJAdpcZil
X-Google-Smtp-Source: AGHT+IHPjXQ8/Y8EErWn9cAEQDIDBixEL0YVuR5uE4Jy241EyaXqYl7DyKRSUtlraUumnvNCy6bdvA==
X-Received: by 2002:a05:600c:1912:b0:439:676c:bb38 with SMTP id 5b1f17b1804b1-4396e70f063mr101660295e9.15.1739799889625;
        Mon, 17 Feb 2025 05:44:49 -0800 (PST)
From: Richard Weinberger <richard@sigma-star.at>
To: oss-security@lists.openwall.com
Date: Mon, 17 Feb 2025 14:44:48 +0100
Message-ID: <2715068.vYEEZNnvjD@anvil>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] Multiple Vulnerabilities in Barebox

## Summary

- *Identifier:*                   sigma-star-sa-2024-003
- *Vendor:*                       -
- *Product/Software:*             [Barebox](https://barebox.org)
- *Affected versions:*            < v2025.01.0
- *Fixed versions:*               v2025.01.0
- *CVE IDs:*                      CVE-2024-57260, CVE-2024-57261, CVE-2024-=
57262

## Affected Product and Vendor

> barebox is a bootloader designed for embedded systems.
> It runs on a variety of architectures including x86, ARM, MIPS, RISC-V and
> others.  barebox aims to be a versatile and flexible bootloader, not only
> for booting embedded Linux systems, but also for initial hardware bringup
> and development.  barebox is highly configurable to be suitable as a full-
> featured development binary as well as for lean production systems.
> Just like busybox is the Swiss Army Knife for embedded Linux,
> barebox is the Swiss Army Knife for bare metal, hence the name.

Source: https://barebox.org/

## Description

Multuple vulnerabilities have been found in Barebox:

- CVE-2024-57260: Multiple vulnerabilities in Barebox=E2=80=99s SquashFS du=
e to missing patches from Linux
- CVE-2024-57261: Integer overflow in Barebox=E2=80=99s memory allocator
- CVE-2024-57262: Integer overflow in Barebox=E2=80=99s SquashFS symlink re=
solution function

## Impact

An attacker capable of modifying ext4 or SquashFS filesystem data structures
can exploit multiple memory corruption vulnerabilities in Barebox.
For systems that rely on verified boot, these vulnerabilities allow an atta=
cker
to bypass the chain of trust and achieve code execution by exploiting these
issues.
CVE-2024-57261 may also be exploited in Barebox through other subsystems th=
an ext4 or SquashFS.

## Mitigation

Upgrade to version v2025.01.0 or newer.

## Patches

- https://git.pengutronix.de/cgit/barebox/commit/?id=3Dced445748477037e88f1=
18b6d67409e0f3f2ea76
- https://git.pengutronix.de/cgit/barebox/commit/?id=3D12c3770203e2b264a796=
b43a54c6dd5f9fe3d2f0
- https://git.pengutronix.de/cgit/barebox/commit/?id=3Defe52dae380ab1e0bfdc=
2ee1575cf95da7061d99
- https://git.pengutronix.de/cgit/barebox/commit/?id=3Db8bd710ec1c90d032a46=
1d57e522a8f985809278
- https://git.pengutronix.de/cgit/barebox/commit/?id=3Df034651371945a66069c=
2e9ff5a711211f650d0d
- https://git.pengutronix.de/cgit/barebox/commit/?id=3D7cf25e0733f08f68d1bf=
0ca0c3cf6e2dfe51bd3c
- https://git.pengutronix.de/cgit/barebox/commit/?id=3Da2b76550f7d87ba6f88a=
9ea50e71f107b514ff4e


## Credits

- Richard Weinberger ([sigma star gmbh](https://sigma-star.at)
- David Gstir ([sigma star gmbh](https://sigma-star.at)

--=20
=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8Bsigma star gmbh | Eduard-Bodem=
-Gasse 6, 6020 Innsbruck, AUT UID/VAT Nr:
ATU 66964118 | FN: 374287y


