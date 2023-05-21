Received: (qmail 26000 invoked by uid 550); 21 May 2023 10:10:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20234 invoked from network); 21 May 2023 08:15:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0b63ef57-4924-1a73-0f38-36585dd77b76@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:15:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31064: Apache InLong: Insecurity direct object references
 cancelling applications 

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache=
 Software Foundation Apache InLong.This issue affects Apache InLong: from 1=
.2.0 through 1.6.0. the user in InLong could cancel an=C2=A0application tha=
t doesn't belongs to it.=C2=A0Users are advised to upgrade to Apache InLong=
's 1.7.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/7799 https://github.com/apache/i=
nlong/pull/7799

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31064

