Received: (qmail 23706 invoked by uid 550); 24 Nov 2023 13:02:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26026 invoked from network); 24 Nov 2023 04:50:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zhenxu Ke <kezhenxu94@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ea4f846-3772-1ef3-853a-c45972a9a3d2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 04:50:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-48796: Apache dolphinscheduler sensitive information
 disclosure 

Severity: important

Affected versions:

- Apache DolphinScheduler 3.0.0 before 3.0.2

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache DolphinScheduler.

The information exposed to unauthorized actors may include sensitive data s=
uch as database credentials.

Users who can't upgrade to the fixed version can also set environment varia=
ble `MANAGEMENT_ENDPOINTS_WEB_EXPOSURE_INCLUDE=3Dhealth,metrics,prometheus`=
 to workaround this, or add the following section in the `application.yaml`=
 file

```
management:
=C2=A0 endpoints:
=C2=A0 =C2=A0 web:
=C2=A0 =C2=A0 =C2=A0 exposure:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 include: health,metrics,prometheus
```

This issue affects Apache DolphinScheduler: from 3.0.0 before 3.0.2.

Users are recommended to upgrade to version 3.0.2, which fixes the issue.

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-48796

