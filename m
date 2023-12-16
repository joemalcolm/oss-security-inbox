Received: (qmail 25662 invoked by uid 550); 16 Dec 2023 20:55:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3820 invoked from network); 16 Dec 2023 16:02:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f757bf6c-8194-4bbe-bc5d-1bd5dd9d6280@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Dec 2023 16:01:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41314: Apache Doris: Missing API authentication allowed
 DoS 

Severity: important

Affected versions:

- Apache Doris 1.2.0 through 2.0.3

Description:

The api /api/snapshot and /api/get_log_file would allow unauthenticated acc=
ess.
It could allow a=C2=A0DoS attack or get arbitrary files from FE node.
Please=C2=A0upgrade to 2.0.3 to fix these issues.

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-41314

