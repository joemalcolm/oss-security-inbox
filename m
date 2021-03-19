X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2803" "Friday" "19" "March" "2021" "10:16:59" "+0100" "Vardan Torosyan" "vardan.torosyan@grafana.com" nil "78" "[oss-security] Grafana 7.4.5, 7.3.10 and 6.7.6 released with security fixes for Grafana Enterprose" nil nil nil "3" nil nil (number mark "U       vardan.toros Mar 19   78/2803  " thread-indent "\"[oss-security] Grafana 7.4.5, 7.3.10 and 6.7.6 released with security fixes for Grafana Enterprose\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Grafana 7.4.5, 7.3.10 and 6.7.6 released with security fixes for Grafana Enterprose" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24136 invoked by uid 550); 19 Mar 2021 09:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22489 invoked from network); 19 Mar 2021 09:17:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grafana.com; s=g1;
        h=mime-version:from:date:message-id:subject:to;
        bh=Z9qFeAhkWGhFhib1z/T8fpNY3YYS6Ajatn4P7qOkiJ4=;
        b=NXpxcyW3hpsRYgr2R2/3BTAI3QhKD5EeRD2ayAwp8UB3a+91l5g/PDu8rOBqWda3g3
         sO9E2FnOH/z7Y9ZQBiLBpM+JfW1axFkWGUNUxiOrGvHEGu5Ta6W11s+qc1xj4uD7oVzZ
         ltKrWfInz/Y7cHNGETi5sktmEIrXYUu7YxJAc1PUCprOnY449JGKfN36+q7F4afa3k6B
         PdbBWsUG4JfOdlfxSOFwAAMzJhGFwPZkQZacajQFKQDi/FV+cRfuE+dzv2Uh6NSWWNBz
         bmvo93wNPwd88AzXqMPcR5sA6cG7ECxnDyi6TdpikBy2VOmPnhTWUyvqdvZUhkNHM/S9
         tDEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Z9qFeAhkWGhFhib1z/T8fpNY3YYS6Ajatn4P7qOkiJ4=;
        b=FwUWnPUzj6NsGnvY5jB19SucaTSgz9VivCMLYmyuXT9PzbAvU0MxGgSF6N19ZWfcAR
         bk9yIgw8qxyTKC+hcyg0WCdxWu2lecOV2MBwWzEvliCuFLVWv6hbKtfPPaR0t+XE/t/o
         MiOBcZH2/S/GqId3a2sEk0KUX2TpL5SK5GKe3NLzw5RyHRb1TxhlRKiKcUflepwkAe1O
         ybcmlcmOs0TyYvzMxEBMYYRfdi7uFmCUpvGNzQncuH2nCEjb5KE9tAPi36Wym2eyhCA1
         91g5tgtONm0Fm56egyNBTkVMbjCf3ADBKHzn34wof5nxmpJD2oPp8igj94pBCH/YT7ET
         7g6Q==
X-Gm-Message-State: AOAM532H7OJ/Bxejl82ausppAoCqixwmzqgCHWcSVb7uDti/Q1RX3DYf
	H9u5hm+BMLsz+KyFmZdDEzCePtN7W9SKNk8DHNy4uPadJdnBSg==
X-Google-Smtp-Source: ABdhPJwt95Njyl9GreW42pBm52uqIGuQEDzc3Pvbbmc4s5F339Jladmtxg6rdM7ZZOWjFQF/D2YTzOUbbRalJzOUr9E=
X-Received: by 2002:aca:2219:: with SMTP id b25mr273902oic.112.1616145430504;
 Fri, 19 Mar 2021 02:17:10 -0700 (PDT)
MIME-Version: 1.0
From: Vardan Torosyan <vardan.torosyan@grafana.com>
Date: Fri, 19 Mar 2021 10:16:59 +0100
Message-ID: <CAHvrgmw1HW6Fe_iX0ioM9yrsc2b9Pt0owD=Ygc3gcMMC=d_sQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004a7e8305bde02ee1"
Subject: [oss-security] Grafana 7.4.5, 7.3.10 and 6.7.6 released with security fixes for
 Grafana Enterprose

--0000000000004a7e8305bde02ee1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

We have released Grafana 7.4.5, 7.3.10 and 6.7.6 with important security
fixes for all Grafana Enterprise versions from 6.1.0-beta1 through 7.4.4.
Grafana OSS is not affected, as it does not use the features affected by
vulnerabilities.

*Remote Escalation of Privileges vulnerability (CVE-2021-27962)*


On the 26th of February during an internal security audit, we discovered
that Grafana Enterprise 7.2.0 introduced a mechanism which allows users
with the Editor role to bypass data source permissions on an organization=
=E2=80=99s
default data source, if configured. To our knowledge, this has not been
detected by anyone else.


Affected versions: Grafana Enterprise releases 7.2.0 through 7.4.3 are
affected by this vulnerability.

Patched versions: 7.3.x and 7.4.x


*Remote Access Control Bypass vulnerabilities (CVE-2021-28146,
CVE-2021-28147)*

On the 10th of March during our internal security audit, we discovered that
on Grafana Enterprise instances using an external authentication service,
Grafana Enterprise 7.4.0 introduced a mechanism which allows any
authenticated user to add external groups to existing teams. We have
reserved CVE-2021-28146 for this issue.

As we continued an internal audit, on the 11th of March we discovered that
Grafana Enterprise 6.1.0 introduced the same vulnerability as above, but
only for Grafana instances which have editorsCanAdmin feature enabled. We
have reserved CVE-2021-28147for this issue.

Affected versions: Grafana Enterprise 7.4.0-beta1 through 7.4.4 are
affected by CVE-2021-28146 and 6.1.0-beta1 through 7.4.4 are affected by
CVE-2021-28147.

Patched versions: 6.x, 7.3.x and 7.4.x

*Remote Unauthenticated Denial of Service vulnerability (CVE-2021-28148)*

On the 11th of March during our internal security audit, we discovered
that Grafana
Enterprise 6.6.0 introduced a new HTTP API endpoint for usage insights
which allows any unauthenticated user to send an unlimited number of
requests to the endpoint, leading to a denial of service (DoS) attacks
against Grafana Enterprise instances.

Affected versions: Grafana Enterprise 6.6.0-beta1 to 7.4.4

Patched versions: 6.x, 7.3.x and 7.4.x

*Solutions and mitigations*

Download and install the appropriate patch for your version of Grafana.


Affected Grafana Cloud instances have been already upgraded to the versions
with fix. Grafana Enterprise customers have been provided with updated
binaries ahead of this disclosure.

Further information can be found at
https://grafana.com/blog/2021/03/18/grafana-6.7.6-7.3.10-and-7.4.5-released=
-with-important-security-fixes-for-grafana-enterprise/

Best Regards,
Vardan Torosyan

--0000000000004a7e8305bde02ee1--
