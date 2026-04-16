Received: (qmail 28194 invoked by uid 550); 16 Apr 2026 16:32:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8035 invoked from network); 16 Apr 2026 12:25:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776342346; x=1776947146; darn=lists.openwall.com;
        h=mime-version:content-transfer-encoding:subject:to:from:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zqr+rMIX0CVgV1Iv8wG4lknVFCG8LiU5zD/I0YD5H98=;
        b=XONc3lTV5mUlqtMe2TzdoSSYfutgt3oh2uLi+eJMtYmlefloo6C7fsIYRGJvJ1R6cY
         rdBlvoyJXJVPE4hnv7LTvKwZxHzC7cm47DTYrGTAzDwqNXx3EIzVbA/VMyyohzor7BUB
         j1m8bC70CaWsUx8rXQ2WozqRKKWinHeQExYEBVEKERoN0cMKeY6sX/yZUdt+yqqpXv3T
         nkwvim8UZISHManVml5UQAeGM/WYad43B/SS2w/oOxHGku+Y/x97bZjX5T4ICwuwbyW8
         z3zsoiUZ3oB5WtYPcd308I9JZ4+/RaF3MP29NUf92KHm2bL+v3Sxk7UYdGD52n1hJpFl
         1wMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776342346; x=1776947146;
        h=mime-version:content-transfer-encoding:subject:to:from:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zqr+rMIX0CVgV1Iv8wG4lknVFCG8LiU5zD/I0YD5H98=;
        b=M5vheL9/905L1a2se1aJoyuCFD9h+zy7NI5PZaT5updPXqaZS17YSpbJpMiS0eJvvY
         U7pMmmKHlXyAiSH4XKl+n0JZTD5+47GgZtn9HwyiOmaO1NXy5HJ3pmCTY9lfQqexQtEl
         BFauNAIp+t5t9UV9MwtIlTD7OVJJs9O2X1xOxFxM4ro0BkuKB3hvqekei7oomxBlKucF
         fw47c5ajhbM4i1Sg/HWVBEozVWZbPvJFEnQB51TZy6XF5dr3MN+TmKMSw53sPeBtejg6
         pBPjCYwPBgmqKwvR3XQzUSMnFaiiZd/xk/gVGGqZLb51W+ZqDJz9XlzQkVkESjRR+iSC
         /J7Q==
X-Gm-Message-State: AOJu0YxBNwL5tUGUgaRyrwBZ6mlBZEp7CY949EW0Stik3ciqSiaWP1Zm
	6U4p7CA0ftN4O0P1dWydCJk8GY5Zuk0D+DAQuW0L2Tfb3agVTfxZzXBGB+akB5K5
X-Gm-Gg: AeBDietngSYCNriLcTM9DvOllX55yzndBXk50TbgL+QPWjlGk3kwAtVXZO2cXlTXz1V
	qSHVhx9ADN6BCaLr4h1xk3NFS0DWwR1uSmo4hcJp3h88nicTEUp9vMJvlRVuGQVaEbSDSOmSGWC
	TzIdJyygP6r25LOaUxdyiCTLhN7tifBZv9D4Kgtmwg9LaDUwH6MXzGTptw5HLkISfNz6nKW4Aox
	5OXjoTyHWreIv0Ht/XcixUfsqqZi/tiIcTWLKF+oQpnh+LxqD1TKhtjYug1KLRUOM6ieDGYrw4E
	LCZYonKC+bTbrxUn3rUKFQbku0Q/Kuoza+9eUEZQy7E+2FAgt9i+Exl/ZNOmi0LSGloGJA6FVAB
	Miu0LryoQLg5tgI9xfUnc4MFWsCuL8B9ekK+8MZXLAB86ssGHbJkiQBMrtTU6JX42Oms8cTHra0
	imxYxnx88ujlaPxfnxRTnP4VnaCOB/4jJL+408Fr/1WC34a+kLXhFxJwSKN31EczcvRXg=
X-Received: by 2002:a17:902:cf11:b0:2b0:beb4:3bb with SMTP id d9443c01a7336-2b2d593bd65mr270627095ad.10.1776342345730;
        Thu, 16 Apr 2026 05:25:45 -0700 (PDT)
Message-ID: <69e0d549.170a0220.2844e6.1a9b@mx.google.com>
Date: Thu, 16 Apr 2026 05:25:45 -0700 (PDT)
From: yangjincheng1998@gmail.com
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Subject: [oss-security] Apache Kvrocks affected by CVE-2024-31449 and CVE-2025-49844 (Redis
 Lua); fixed but no formal advisory

Hello oss-security,

This is an information-only post documenting downstream impact and
coordination status for two already-public, already-fixed Redis Lua
vulnerabilities in Apache Kvrocks.

== CVEs ==

(1) CVE-2024-31449 -- Redis Lua HEAP overflow in cjson library
    NVD: https://nvd.nist.gov/vuln/detail/CVE-2024-31449
    CVSS: 8.8 (HIGH)

(2) CVE-2025-49844 -- Redis Lua use-after-free in luaY_parser
    NVD: https://nvd.nist.gov/vuln/detail/CVE-2025-49844
    Origin: Pwn2Own Berlin 2025

== Downstream impact: Apache Kvrocks ==

Apache Kvrocks (https://github.com/apache/kvrocks) is a Redis-compatible
KV store on RocksDB. It bundles Lua via the RocksLabs/lua submodule,
which contains the vulnerable code paths from PUC Lua. Specifically:

  - When built with -DENABLE_LUAJIT=OFF (PUC Lua fallback path), the
    Kvrocks binary contains the vulnerable luaY_parser() and the
    cjson library affected by both CVEs.
  - The default LuaJIT build path is NOT affected by CVE-2025-49844
    (LuaJIT does not share luaY_parser code), but cjson-based issues
    may still apply depending on the build.

Both downstream impacts were reported to the Kvrocks project and
acknowledged by the maintainers; fixes have been merged:

  CVE-2024-31449 -> https://github.com/apache/kvrocks/issues/3433
  CVE-2025-49844 -> https://github.com/apache/kvrocks/issues/3434

== Current coordination gap ==

As of 2026-04-16:

  - apache/kvrocks has NO published GitHub Security Advisory.
  - apache/kvrocks has Private Vulnerability Reporting DISABLED
    (verified via GitHub API).
  - The NVD entries for CVE-2024-31449 and CVE-2025-49844 do NOT
    list apache:kvrocks in their affected-product CPE lists.
  - Kvrocks release notes/changelog do not attach a security note to
    the fixing commits.

Net effect: SCA tools (Trivy, Snyk, Dependabot, OSV) currently have
no way to detect vulnerable Kvrocks versions automatically.

== Coordination in progress ==

I have contacted security@apache.org (Apache's official security
channel per https://kvrocks.apache.org/community/security) requesting
that the ASF / Kvrocks PMC issue formal advisories. I have also
contacted nvd@nist.gov requesting the addition of apache:kvrocks to
the affected-product CPE lists for both CVEs.

I am posting here so that distributors, packagers, and SCA-tool
maintainers have a public, independent record of the coordination
gap, and can make their own decisions about flagging Kvrocks builds
in the meantime.

== Reproducer / fix references ==

Both CVEs are public and well-documented at their NVD entries. No
new exploit information is included in this post; the contribution
here is the downstream-mapping data for Apache Kvrocks.

Regards,
Jincheng Yang
yangjincheng1998@gmail.com
GitHub: jinchengyang98
(PhD student, academic security research on 1-day vulnerability
propagation across forks and downstream consumers.)
