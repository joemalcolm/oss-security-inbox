X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/4
Message-ID: <CAFF8SNZxweks4UkG3Ccs3ka4ES9-jdz=j236VQsfzCb5hoO_7g@mail.gmail.com>
Date: Wed, 18 Nov 2026 11:40:33 +0530
From: Nurjaman Shaikh <shaikhnurjaman74@...il.com>
To: lidongdai <lidongdai@...che.org>
Cc: dev@...tunnel.apache.org, oss-security@...ts.openwall.com,  Apache Security Team <security@...che.org>
Subject: Re: CVE-2026-128981: Apache SeaTunnel Web: Disabled accounts can obtain new login tokens
Content-Type: text/plain; charset=utf-8

Hi Lidong,

Thank you for the update and for the credit for this finding.

I appreciate your support.

Best regards,
Nurjaman Shaikh

On Wed, 18 Nov 2026, 11:24 am lidongdai, <lidongdai@...che.org> wrote:

> Severity: low
>
> Affected versions:
>
> - Apache SeaTunnel Web 1.0.2
>
> Description:
>
> ** UNSUPPORTED WHEN ASSIGNED **
>
> Improper Authentication in Apache SeaTunnel Web 1.0.2 allows a user
> whose account has been disabled to authenticate with valid credentials
> and obtain a new login token. The login query does not check the
> account status, so disabling an account does not prevent new logins or
> access to protected APIs using the newly issued token. This issue
> requires valid credentials for the disabled account; it is not a
> credential-free authentication bypass.
>
> Apache SeaTunnel Web is no longer maintained. The affected 1.0.2
> release does not contain the account-status check added to the main
> branch in pull request #264. There is no maintained fixed release.
> Users should discontinue use of this unsupported component.
>
> NOTE: This vulnerability only affects products that are no longer
> supported by the maintainer.
>
> CWE: CWE-287 Improper Authentication
>
> Credit:
>
> Nurjaman Shaikh (finder)
>
> References:
>
> https://github.com/apache/seatunnel-web/pull/264
> https://seatunnel.apache.org/
>

