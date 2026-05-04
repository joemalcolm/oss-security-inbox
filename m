Received: (qmail 26210 invoked by uid 550); 4 May 2026 22:35:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27916 invoked from network); 4 May 2026 21:06:33 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777928784; cv=none;
        d=google.com; s=arc-20240605;
        b=HRFCBxElxb/ecBLAojbRxob38OiCpOsOQL9UHNTzQnKOz1AlKJ1b8nofoQWSbTBPu0
         AkXCYdPsz62d6XlzXjiugx8FclkHlvlobTf6C3usERd0bkNZk1TANmm/F9MaHy2xbAEV
         80hg1aGGNgHMrBr/btZPCOakOCEeu5PQQGvdGyVZXPX81W1Xe8SVWRPitPDbmMCw/+wq
         LOampnESyJmuSb5cdI2iXC/51WlMo5ZRzDjPQcr6bO4spX07uYo8qtkPi3lgg+uLrJAy
         dBMj8hkMBE0An3KD32pO14PRlI6RvPRBOFYRCSqeyx1bTxaFeA67e7CX4MIlEx+cKL7V
         6FQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version;
        bh=OphDFAWLeHCvKUe2nv/BAvk2iLFzaW2uxm3aBNSQs94=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=WmxL4XrKBZzT7c1CDgdKytrFZztKaZZH7I1E2Mj4KXBg+ne0XF7ByrOfPGDjWVRR1E
         kA3oOPI1ku+syb6VaMNp3zjHW+4ZVV9ioUS334eLFL3ox0lYKyx7MTI6vk8LQS0DrEp3
         RyW5TB94lmzGU6g0fo717RBbW2Ep1NG9BxXBn5DkjzgmwND+oRywAK0vK5EzNc+36DwD
         XuA8iUfo+WeIcvb1GJ5thGVWeVU6wlginx2WD2P+hEMLvuK0ENCoYDka/Tbbef4hab+b
         4osGuqcRF5W/yVi85sJ3FDq5dC8ppyphTKDJfSkJROjKKlouqJK9PscDS6bEWpUU72RN
         upfg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777928784; x=1778533584;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OphDFAWLeHCvKUe2nv/BAvk2iLFzaW2uxm3aBNSQs94=;
        b=CmWCNJo/eM9d9q9b79liBKGYsRXVdLLKqkJ/2Az3A//KGopQ69mE55ZquMFIlSlcoS
         IW0KQ+VNS2QRRuKqAg+BCYycH9gEU2Kjo6tHbq3yr6cAydbuD7cC4MfPl1kmtOuCOTqu
         K9qylA5PNgTVfGZ1T9F2IexhgAU90nDIdGIvSgqZtCYJm9ZKh/kt+wbo3OpiTcVAKb+f
         ElF2L/y73DsnARJZ31o8i5UvQT8esMBcxZRNmomR7nHKPoadJSlEzmUiNpQ5B2hnTqui
         Ivr3PY3yMzI8h//Kqmk4Ahq2mB1CZert5UKPRtgjWST0U5PEj9JD/PEr7+HAavVjMLnU
         Bjow==
X-Gm-Message-State: AOJu0YzjGOXKfIi58YuY46Hbkfn15nJFjKNXYN6iLtZS/QeE7LCcba4P
	CQn7JAOQE2HRWgCUtaBtqVQ7ssqJU7qKnk5aqA9xe0sXpkAyzlg6nfXEvutt1vOcNeSJhsgBvCB
	cOZG5vmh+H/ycpn9A+0JNh6oz9rxEV+dP7AGu
X-Gm-Gg: AeBDievXmB/dti9QCFxQYb0Au/hfSC8XCx17M/l47igAgzVCMNO2jnzsTtgla4J9lNs
	OJi/CuAw+3M5fI3QiJGfTuifV/kYFkDWScKn7EeGMYQ2goZtNnYq9D5gQwDo6qYe7XLYZRB9cTM
	AKe1JeeyzM5r5E6MO3C852MKms8nxh2D12Ra1Z2Yp95lqzhvQfvbYxXSCjMcvT4WXgMtlo9/iIF
	bK1HM23uRMYAEcKqHk4bBhZ437HGS+/ms1IvqtAYXB8ASoW2ZdM8iktHMfLPlRP1XkkgpIBVPX3
	HH5TWfbfuayawJti9ojO3hRNuw7V5L6edBsSiFwmNSfoNfwaVg==
X-Received: by 2002:a05:690e:43c7:b0:652:f6aa:f73c with SMTP id
 956f58d0204a3-65c3db48032mr7112894d50.62.1777928784168; Mon, 04 May 2026
 14:06:24 -0700 (PDT)
MIME-Version: 1.0
From: Thomas GERBET <thomas@gerbet.me>
Date: Mon, 4 May 2026 23:06:14 +0200
X-Gm-Features: AVHnY4K7Wtq-9HAYri1t_uKGlA0cV0Gz7afn00QXQvSRc7pyj4e-q5XgtIAlr48
Message-ID: <CAPC5pGQG0JGK0Nh+9UMLzaqT+3SZ-cD1eQdLjsWeLds-YAyWrg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009dcb1e0651044d7c"
Subject: [oss-security] Local privilege escalation in Lix and Nix

--0000000000009dcb1e0651044d7c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

## Summary

Nix and Lix daemon implementations are affected by buffer overflows
vulnerabilities that allow a local attacker to gain arbitrary
code execution as the daemon user (root in multi-user installations).

The vulnerabilities are identified as:
- Nix: GHSA-vh5x-56v6-4368, CVE ID pending attribution.
- Lix: CVE ID pending attribution.

This is a coordinated disclosure between the Nix and Lix projects.

Guix is *NOT* affected by this vulnerability.

## Am I affected?

To exploit this issue, a local attacker needs access to talk to the Nix
daemon. All systems that allow connections to their daemons are affected.
Only users that are allowed to connect to the daemon (via `allowed-users`
and `trusted-users`) can reliably trigger the issue. Substituters can
in theory trigger the issue but cannot make enough attempts to mount
attacks in practice.

Additionally, this vulnerability requires ASLR weakening techniques to lead
to a compromise.

## Fixes

The vulnerabilities are fixed in the following versions:

- Nix:
  - Affected versions: =E2=89=A5 2.24.4
  - Fixed versions: 2.34.7, 2.33.6, 2.32.8, 2.31.5, 2.30.5, 2.29.4, 2.28.7

Nix security release also includes patches that address an unrelated path
traversal vulnerability GHSA-gr92-w2r5-qw5p (CVE ID pending attribution).

- Lix:
  - Affected versions: =E2=89=A5 2.93.0
  - Fixed versions: 2.93.4, 2.94.2, 2.95.2

## Acknowledgement

- We would like to thank @edef with the help of Sander (@sandydoo) for
reporting the issues and working with the development teams to suggest and
confirm the fixes.
- Thanks to eldritch horrors (@pennae) and Raito Bezarius (@RaitoBezarius)
on the Lix side for the mitigation.
- Thanks to @xokdvium on the Nix side for the mitigation.
- Thanks to @hexa and @tgerbet on the NixOS security team for coordinating
this.

## References

*
https://discourse.nixos.org/t/security-advisory-local-privilege-escalation-=
in-lix-and-nix/77407
* Nix issues:
  - https://github.com/NixOS/nix/security/advisories/GHSA-vh5x-56v6-4368
  - https://github.com/NixOS/nix/security/advisories/GHSA-gr92-w2r5-qw5p
* Lix in-depth review blog post: not yet published

--0000000000009dcb1e0651044d7c--
