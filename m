Received: (qmail 1232 invoked by uid 550); 10 Mar 2024 15:39:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26456 invoked from network); 10 Mar 2024 15:34:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0fba930d-b61a-7af9-3d70-9d0c8e0b979b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 Mar 2024 15:38:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41313: Apache Doris: Timing Attack weakness 

Severity: important

Affected versions:

- Apache Doris before 1.2.8

Description:

The authentication method in Apache Doris versions before 2.0.0 was vulnera=
ble to timing attacks.
Users are recommended to upgrade to version 2.0.0 + or 1.2.8, which fixes t=
his issue.

Credit:

Andrea Cosentino from  Apache Software Foundation  (reporter)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-41313

