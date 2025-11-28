Received: (qmail 11573 invoked by uid 550); 28 Nov 2025 08:38:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11847 invoked from network); 28 Nov 2025 05:04:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lidong Dai <lidongdai@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4f016c60-f024-d714-578e-ad4b696b1283@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Nov 2025 05:01:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-48796: Apache DolphinScheduler: Sensitive information
 disclosure 

Severity: important=20

Affected versions:

- Apache DolphinScheduler before < 3.0.2 and 3.1.0 < 3.2.0.

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



This issue affects Apache DolphinScheduler: < 3.0.2 and=C2=A03.1.0 < 3.2.0.

Users are recommended to upgrade to version 3.0.6 or 3.3.2

Credit:

whobushibaby (finder)

References:

https://lists.apache.org/thread/ffrmkcwgr2lcz0f5nnnyswhpn3fytsvo
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-48796

