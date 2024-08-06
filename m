Received: (qmail 9357 invoked by uid 550); 6 Aug 2024 15:16:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26057 invoked from network); 6 Aug 2024 15:12:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rohit Yadav <rohit@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d89f7e33-64a9-60cf-b77f-e2b6cd4443c7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 Aug 2024 15:11:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-42222: Apache CloudStack: Unauthorised Network List
 Access 

Severity: critical

Affected versions:

- Apache CloudStack 4.19.1.0

Description:

In Apache CloudStack 4.19.1.0, a regression in the network listing API allo=
ws unauthorised list access of network details for domain admin and normal =
user accounts. This vulnerability compromises tenant isolation, potentially=
 leading to unauthorised access to network details, configurations and data.

Affected users are advised to upgrade to version 4.19.1.1 to address this i=
ssue. Users on older versions of CloudStack considering to upgrade, can ski=
p 4.19.1.0 and upgrade directly to 4.19.1.1.

Credit:

Christian Gross of Netcloud AG (finder)
Midhun Jose (finder)

References:

https://github.com/apache/cloudstack/issues/9456
https://cloudstack.apache.org/blog/security-release-advisory-4.19.1.1-4.18.=
2.3
https://lists.apache.org/thread/lxqtfd6407prbw3801hb4fz3ot3t8wlj
https://www.shapeblue.com/shapeblue-security-advisory-apache-cloudstack-sec=
urity-releases-4-18-2-3-and-4-19-1-1/
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-42222

