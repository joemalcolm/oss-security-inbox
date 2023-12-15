Received: (qmail 21549 invoked by uid 550); 15 Dec 2023 08:22:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19461 invoked from network); 15 Dec 2023 05:49:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Albumen Kevin <albumenj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a1e90a56-7cb7-9898-06e1-7a89d79a0435@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 05:49:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46279: Apache Dubbo: Bypass deny serialize list check in
 Apache Dubbo 

Severity: important

Affected versions:

- Apache Dubbo 3.1.5

Description:

Deserialization of Untrusted Data vulnerability in Apache Dubbo.This issue =
only affects Apache Dubbo 3.1.5.

Users are recommended to upgrade to the latest version, which fixes the iss=
ue.

References:

https://dubbo.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46279

