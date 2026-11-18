X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/3
Message-ID: <CABrp7ux+s0WGYNsbOVsU5pi630hxtxu9E48ne0S8NxYL1guOiQ@mail.gmail.com>
Date: Wed, 18 Nov 2026 01:54:05 -0500
From: lidongdai <lidongdai@...che.org>
To: dev@...tunnel.apache.org, oss-security@...ts.openwall.com
Cc: Apache Security Team <security@...che.org>, shaikhnurjaman74@...il.com
Subject: CVE-2026-128981: Apache SeaTunnel Web: Disabled accounts can obtain new login tokens
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache SeaTunnel Web 1.0.2

Description:

** UNSUPPORTED WHEN ASSIGNED **

Improper Authentication in Apache SeaTunnel Web 1.0.2 allows a user
whose account has been disabled to authenticate with valid credentials
and obtain a new login token. The login query does not check the
account status, so disabling an account does not prevent new logins or
access to protected APIs using the newly issued token. This issue
requires valid credentials for the disabled account; it is not a
credential-free authentication bypass.

Apache SeaTunnel Web is no longer maintained. The affected 1.0.2
release does not contain the account-status check added to the main
branch in pull request #264. There is no maintained fixed release.
Users should discontinue use of this unsupported component.

NOTE: This vulnerability only affects products that are no longer
supported by the maintainer.

CWE: CWE-287 Improper Authentication

Credit:

Nurjaman Shaikh (finder)

References:

https://github.com/apache/seatunnel-web/pull/264
https://seatunnel.apache.org/
