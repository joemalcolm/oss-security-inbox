Received: (qmail 5615 invoked by uid 550); 8 Mar 2023 10:56:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17877 invoked from network); 8 Mar 2023 08:47:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Albumen Kevin <albumenj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <488bc85b-f639-52d5-0ae4-076d3002a51d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Mar 2023 08:46:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-23638: Apache Dubbo Deserialization Vulnerability Gadgets
 Bypass 

Description:

A deserialization vulnerability existed when dubbo generic invoke, which co=
uld lead to malicious code execution.=20

This issue affects Apache Dubbo 2.7.x version 2.7.21 and prior versions; Ap=
ache Dubbo 3.0.x version 3.0.13 and prior versions; Apache Dubbo 3.1.x vers=
ion 3.1.5 and prior versions.

Credit:

yemoli=E3=80=81R1ckyZ=E3=80=81Koishi=E3=80=81cxc (reporter)

References:

https://dubbo.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-23638

