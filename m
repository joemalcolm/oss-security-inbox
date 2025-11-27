Received: (qmail 23687 invoked by uid 550); 27 Nov 2025 07:10:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3892 invoked from network); 27 Nov 2025 06:37:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Harikrishna Patnala <harikrishna@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7dcc49a1-e3f1-699c-20e8-2ce3725e485e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 27 Nov 2025 06:35:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59454: Apache CloudStack: Lack of user permission
 validation leading to data leak for few APIs 

Severity: low=20

Affected versions:

- Apache CloudStack 4.0.0 before 4.20.2
- Apache CloudStack 4.21.0 before 4.22.0

Description:

In Apache CloudStack, a gap in access control checks affected the APIs - cr=
eateNetworkACL
- listNetworkACLs
- listResourceDetails
- listVirtualMachinesUsageHistory
- listVolumesUsageHistory

While these APIs were accessible only to authorized users, insufficient per=
mission validation meant that users could occasionally access information b=
eyond their intended scope.




Users are recommended to upgrade to Apache CloudStack 4.20.2.0 or 4.22.0.0,=
 which fixes the issue.

Credit:

bugreporter@qq.com <https://github.com/ai-bugreporter/Credits> (finder)

References:

https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-59454

