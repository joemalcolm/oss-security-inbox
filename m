Received: (qmail 8005 invoked by uid 550); 6 Aug 2024 15:16:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30094 invoked from network); 6 Aug 2024 15:15:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rohit Yadav <rohit@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b57aea4a-11c6-3720-8fa4-2eba7834cb1a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 Aug 2024 15:11:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-42062: Apache CloudStack: User Key Exposure to Domain
 Admins 

Severity: critical

Affected versions:

- Apache CloudStack 4.10.0 through 4.18.2.2
- Apache CloudStack 4.19.0.0 through 4.19.1.0

Description:

CloudStack account-users by default use username and password based authent=
ication for API and UI access. Account-users can=C2=A0generate and register=
 randomised API and secret keys and use them for the purpose of API-based a=
utomation and integrations.=C2=A0Due to an access permission validation iss=
ue that affects Apache CloudStack versions 4.10.0 up to 4.19.1.0, domain ad=
min accounts were found to be able to query all registered account-users AP=
I and secret keys in an environment, including that of a root admin.=C2=A0A=
n attacker who has domain admin access can exploit this to gain root admin =
and other-account privileges and perform malicious operations that can resu=
lt in compromise of resources integrity and confidentiality, data loss,=C2=
=A0denial of service=C2=A0and availability of CloudStack managed infrastruc=
ture.

Users are recommended to upgrade to Apache CloudStack 4.18.2.3 or 4.19.1.1,=
 or later, which addresses this issue.=C2=A0Additionally, all account-user =
API and secret keys should be regenerated.

Credit:

Fabricio Duarte (finder)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.19.1.1-4.18.=
2.3
https://lists.apache.org/thread/lxqtfd6407prbw3801hb4fz3ot3t8wlj
https://www.shapeblue.com/shapeblue-security-advisory-apache-cloudstack-sec=
urity-releases-4-18-2-3-and-4-19-1-1/
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-42062

