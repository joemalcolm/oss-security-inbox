Received: (qmail 28090 invoked by uid 550); 21 May 2023 10:11:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22001 invoked from network); 21 May 2023 08:17:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <939f2cbc-ee5e-c55c-1390-5087ccddc69d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:17:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31066: Apache InLong: Insecure direct object references
 for inlong sources 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache=
 Software Foundation Apache InLong.This issue affects Apache InLong: from 1=
.4.0 through 1.6.0. Different users in InLong could=C2=A0delete, edit, stop=
, and start others' sources!=C2=A0Users are advised to upgrade to Apache In=
Long's 1.7.0 or cherry-pick [1] to solve it.



[1]=C2=A0 https://github.com/apache/inlong/pull/7775 https://github.com/apa=
che/inlong/pull/7775

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31066

