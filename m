Received: (qmail 5943 invoked by uid 550); 1 May 2026 15:11:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23806 invoked from network); 1 May 2026 08:19:40 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1777623567; bh=ZVXTHNfOemHY1zWRHgoCvv722y7jZ8ZKj9MSlkBGvgI=;
	h=Reply-To:From:Date:Subject:To:From;
	b=oY/jwat1HFTJT6jF0zMtU2LahNWLIaTF0aTIp9QDPvh/5n1scgKXroMhOWF1mmVCb
	 6KRr18SiUrsm//z6RwInvzMvBnx6FpAq1d1rwsTvN5oUp2H3s3R6bAKQwPqeeK38OT
	 tGBPK6Hzv0tipSxOxx2/v7MlN5nI04zyuXwA7+x9Ue/+bEgrk+aZggMig0VI4IGJUb
	 6d10wMhfdCYRcoB/ZlOktt7WhTEScYh5+62d5DvL3tvCR5h4MAQpvRzZmeC1bnd7WM
	 GpKzCaSLB46C/g6bvIgHUcfPH97kpOfNjoE91E/ZWj3+vd4p/LIzzHnkCMco5DIgWP
	 hLsZqawuOMAYw==
X-Gm-Message-State: AOJu0YwSdqAhkPtiblU2snG2hTCgXhZ2j5iJPEzPyQcs7126N7XG7MPz
	Gj4cDBdk13nm05wNAb/84e22B8IDxbRrgGQekGHPrhr8isEZUZnoP2TLY2NHQ/cozSwsLIt4Ds3
	1YXAc/UDuvyFtdyjro3/A1VdYD8+YLC0=
X-Received: by 2002:a05:6a00:2282:b0:828:d9a1:c5f9 with SMTP id
 d2e1a72fcca58-834fdc560a3mr7443983b3a.33.1777623566715; Fri, 01 May 2026
 01:19:26 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 1 May 2026 09:19:13 +0100
X-Gmail-Original-Message-ID: <CAB8XdGA94hPGPZ15tGj9C_jH4S73DWN+9xh68GGga4+Sm2yLGw@mail.gmail.com>
X-Gm-Features: AVHnY4IQEXLzlgLpBWwZzHV5xpPQVkyQ8s8furF24cWI6JKxaJ93pPm7U9Z4zTQ
Message-ID: <CAB8XdGA94hPGPZ15tGj9C_jH4S73DWN+9xh68GGga4+Sm2yLGw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-42402: Apache Neethi: Policy Normalization Unbounded
 Resource Allocation DoS

Severity: High

Affected versions:

- Apache Neethi before 3.2.2

Description:

Apache Neethi is vulnerable to a Denial of Service attack through
algorithmic complexity in policy normalization. Specially crafted
WS-Policy documents can trigger an exponential Cartesian cross-product
expansion during the normalization process, causing unbounded memory
allocation that exhausts the JVM heap. This occurs when the
normalization process generates an excessive number of policy
alternatives without bounds, leading to runtime memory exhaustion.

Users should upgrade to 3.2.2 which limits the maximum number of
normalized policy alternatives.

References:

https://ws.apache.org/neethi/security.html
https://www.cve.org/CVERecord?id=CVE-2026-42402
