Received: (qmail 13520 invoked by uid 550); 4 Feb 2025 15:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26483 invoked from network); 4 Feb 2025 14:37:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cad0f5b0-fc9e-21be-a219-040b9d53d64b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Feb 2025 14:35:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-48019: Apache Doris: allows admin users to read arbitrary
 files through the REST API 

Severity: LOW

Affected versions:

- Apache Doris 2.1.0 before 2.1.8
- Apache Doris 3.0.0 before 3.0.3

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l'), Files or Directories Accessible to External Parties vulnerability in A=
pache Doris.


Application administrators can read arbitrary
files from the server filesystem through path traversal.


Users are recommended to upgrade to version 2.1.8, 3.0.3 or later, which fi=
xes the issue.

Credit:

Man Yue Mo of the GitHub Security Lab team (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-48019

