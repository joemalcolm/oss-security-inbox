X-Quarantine-ID: <q5rPNxGUDf6U>
Received: (qmail 23635 invoked by uid 550); 21 May 2023 10:10:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18128 invoked from network); 21 May 2023 08:11:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dab7c670-5833-518d-a77d-73493cb2714f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:10:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31058: Apache InLong: JDBC URL bypassing by adding blanks

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Deserialization of Untrusted Data Vulnerability in Apache Software Foundati=
on Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.6.0=
. Attackers would bypass the
'autoDeserialize' option filtering by adding=C2=A0blanks.  Users are advise=
d to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.



[1]=20

 https://github.com/apache/inlong/pull/7674 https://github.com/apache/inlon=
g/pull/7674

Credit:

H Ming (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31058

