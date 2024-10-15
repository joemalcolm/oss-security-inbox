Received: (qmail 13456 invoked by uid 550); 15 Oct 2024 19:02:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7272 invoked from network); 15 Oct 2024 18:33:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3140f6e6-50b5-f9db-0e22-458ee424b326@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 18:30:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45461: Apache CloudStack Quota plugin: Access checks not
 enforced in Quota 

Severity: moderate

Affected versions:

- Apache CloudStack Quota plugin 4.7.0 through 4.18.2.3
- Apache CloudStack Quota plugin 4.19.0.0 through 4.19.1.1

Description:

The CloudStack Quota feature allows cloud administrators to implement a quo=
ta or usage limit system for cloud resources, and is disabled by default. I=
n environments where the feature is enabled, due to missing access check en=
forcements, non-administrative CloudStack user accounts are able to access =
and modify quota-related configurations and data. This issue affects Apache=
 CloudStack from 4.7.0 through 4.18.2.3; and from 4.19.0.0 through 4.19.1.1=
, where the Quota feature is enabled.




Users are recommended to upgrade to Apache CloudStack 4.18.2.4 or 4.19.1.2,=
 or later, which addresses this issue.=C2=A0Alternatively, users that do no=
t use the Quota feature are advised to disabled the plugin by setting the g=
lobal setting "quota.enable.service" to "false".

Credit:

Fabr=C3=ADcio Duarte <fabricio.duarte.jr@gmail.com> (reporter)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.18.2.4-4.19.=
1.2
https://lists.apache.org/thread/ktsfjcnj22x4kg49ctock3d9tq7jnvlo
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45461

