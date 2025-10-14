Received: (qmail 20097 invoked by uid 550); 14 Oct 2025 19:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11797 invoked from network); 14 Oct 2025 19:48:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Holden Karau <holden@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aa5fdede-7f0f-2874-08f8-9b1298ebb256@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Oct 2025 19:48:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55039: Apache Spark: RPC encryption
 defaults to unauthenticated AES-CTR mode, enabling man-in-the-middle
 ciphertext modification attacks 

Severity: moderate=20

Affected versions:

- Apache Spark (org.apache.spark:spark-network-common_2.13) 3.5.0 before 3.=
5.2
- Apache Spark (org.apache.spark:spark-network-common_2.13) before 3.4.4
- Apache Spark (org.apache.spark:spark-network-common_2.12) 3.5.0 before 3.=
5.2
- Apache Spark (org.apache.spark:spark-network-common_2.12) before 3.4.4

Description:

This issue affects Apache Spark versions before  3.4.4,=C2=A03.5.2 and 4.0.=
0.



Apache Spark versions before 4.0.0, 3.5.2 and 3.4.4 use an insecure default=
 network encryption cipher for RPC communication between nodes.

When spark.network.crypto.enabled is set to true (it is set to false by def=
ault), but spark.network.crypto.cipher is not explicitly configured, Spark =
defaults to AES in CTR mode (AES/CTR/NoPadding), which provides encryption =
without authentication.

This vulnerability allows a man-in-the-middle attacker to modify encrypted =
RPC traffic undetected by flipping bits in ciphertext, potentially compromi=
sing heartbeat messages or application data and affecting the integrity of =
Spark workflows.


To mitigate this issue, users should either configure spark.network.crypto.=
cipher to AES/GCM/NoPadding to enable authenticated encryption or

enable SSL encryption by setting spark.ssl.enabled to true, which provides =
stronger transport security.

References:

https://spark.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-55039

