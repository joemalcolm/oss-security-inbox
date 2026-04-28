Received: (qmail 3336 invoked by uid 550); 28 Apr 2026 00:39:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7786 invoked from network); 28 Apr 2026 00:07:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ec218daa-6f71-4eb7-3b90-2be201f13b66@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Apr 2026 00:00:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41603: Apache Thrift: Java TSSLTransportFactory hostname
 verification 

Severity: critical=20

Affected versions:

- Apache Thrift before 0.23.0

Description:

Improper Validation of Certificate with Host Mismatch vulnerability in Apac=
he Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41603

