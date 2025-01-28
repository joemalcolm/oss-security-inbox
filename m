Received: (qmail 5131 invoked by uid 550); 28 Jan 2025 15:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32005 invoked from network); 28 Jan 2025 05:46:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ayush Saxena <ayushsaxena@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4569cebf-b3b4-dbaf-6ca7-799e37bcfdf1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Jan 2025 05:45:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23953: Apache Hive: Timing Attack Against Signature in
 LLAP util 

Severity: important

Affected versions:

- Apache Hive 2.2.0 before 4.0.0

Description:

Use of Arrays.equals() in LlapSignerImpl in=C2=A0Apache Hive to compare mes=
sage signatures=C2=A0allows attacker to forge a valid signature for an arbi=
trary message byte by byte. The attacker should be an authorized user of th=
e product to perform this attack.=C2=A0Users are recommended to upgrade to =
version 4.0.0, which fixes this issue.

The problem occurs when an application doesn=E2=80=99t use a constant-time =
algorithm for validating a signature.=C2=A0The method Arrays.equals()=C2=A0=
returns false=C2=A0right away when it sees that one of the input=E2=80=99s =
bytes are different. It means that the comparison time depends on the conte=
nts of the arrays. This little thing may allow an attacker to forge a valid=
 signature for an arbitrary message byte by byte.=C2=A0So it might allow ma=
licious users to submit splits/work with selected signatures to LLAP withou=
t running as a privileged user, potentially leading to DDoS attack.

More details in the reference section.

Credit:

Andrea Cosentino (reporter)

References:

https://github.com/apache/hive
https://github.com/apache/hive/commit/b418e3c9f479ba8e7d31e6470306111002ffa=
809
https://issues.apache.org/jira/browse/HIVE-28030
https://blog.gypsyengineer.com/en/security/preventing-timing-attacks-with-c=
odeql.html
https://cqr.company/web-vulnerabilities/timing-attacks/
https://hive.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23953

