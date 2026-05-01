Received: (qmail 7497 invoked by uid 550); 1 May 2026 15:11:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3120 invoked from network); 1 May 2026 08:21:15 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1777623663; bh=0iknPLM7ZEA4ky+lAzzJjWtgJR7O3atQaw2qDkD88EM=;
	h=Reply-To:From:Date:Subject:To:From;
	b=kkfOqRU3Uqcx0UqfaLYi+zmv6kx3F1ZsAuS7d/mQ+bZPVbwSzijUM1TjWk0PxhuYG
	 OmVWvEn6K/qBKajghA1GnoPgRnblc4m3tWTAV35q0xTXrDLOYqnJtC17edDqG7VSMj
	 bUgK7HMujmZthsK3L5WqhyQYXcJ6Y4TbJKHuCJgVU2bq0DRDQWk1BIWF4pxkHj104K
	 OlmLrxTkt8AR6gcY9tunE/oCX0iHJBTDOj5VTpMEkxP5G9wyR3ufnjT09ow8/O8gpS
	 IC/J1rnDcCP2qTg2+OS6fi/iI1S9CHhtUamG+4tVRxj8LsLkgCgI51ckG/I3PCHXkd
	 x+ewn2Krevj/Q==
X-Gm-Message-State: AOJu0YxmuQyWlbUhUCSwnNJy9FhvvaRBatj/VKSyL9Y5c8znwPMaXQGJ
	APps1UgmZGQPXSdsrtzTddhNKikfDsiIZxsOvzgRXtxtXIJqyjNJ8FGekRFEp72aI6ULow1EaOo
	za612vSpmxFEVLdXQo0o6YQtBVjjw7vY=
X-Received: by 2002:a17:90b:2e4c:b0:364:6558:99bf with SMTP id
 98e67ed59e1d1-364c309bdc9mr6265695a91.14.1777623661978; Fri, 01 May 2026
 01:21:01 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 1 May 2026 09:20:48 +0100
X-Gmail-Original-Message-ID: <CAB8XdGCYxL3hdpf2zBGefs7QJUSc901Kx-_-9L3WegrzGSDP9g@mail.gmail.com>
X-Gm-Features: AVHnY4Kp6aE_txrkUl5M3Em8z6BJK2FdyF2jCBOea0l9Suj3EgWxaDXcWcP-P8Q
Message-ID: <CAB8XdGCYxL3hdpf2zBGefs7QJUSc901Kx-_-9L3WegrzGSDP9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-42403: Apache Neethi: Circular Policy Reference Infinite Loop

Severity: High

Affected versions:

- Apache Neethi before 3.2.2

Description:

Apache Neethi does not properly detect circular references in policy
definitions. When a WS-Policy document contains circular policy
references (where Policy A references Policy B which references Policy
A), the policy normalization process can enter an infinite loop or
cause excessive recursion, leading to a stack overflow or application
hang. An attacker can craft malicious policy documents with circular
references to cause a Denial of Service condition

Users are recommended to upgrade to version 3.2.2, which fixes this issue.

References:

https://ws.apache.org/neethi/security.html
https://www.cve.org/CVERecord?id=CVE-2026-42403
