Received: (qmail 18044 invoked by uid 550); 31 Oct 2024 03:51:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13734 invoked from network); 31 Oct 2024 03:12:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Paul Irwin <paulirwin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9284b6a9-4d9f-5e70-43e8-7ba7e7e49f1f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 31 Oct 2024 03:12:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-43383: Apache Lucene.Net.Replicator: Remote Code
 Execution in Lucene.Net.Replicator 

Affected versions:

- Apache Lucene.Net.Replicator 4.8.0-beta00005 through 4.8.0-beta00016

Description:

Deserialization of Untrusted Data vulnerability in Apache Lucene.Net.Replic=
ator.

This issue affects Apache Lucene.NET's Replicator library: from 4.8.0-beta0=
0005 through 4.8.0-beta00016.

An attacker that can intercept traffic between a replication client and ser=
ver, or control the target replication node URL, can provide a specially-cr=
afted JSON response that is deserialized as an attacker-provided exception =
type. This can result in remote code execution or other potential unauthori=
zed access.


Users are recommended to upgrade to version 4.8.0-beta00017, which fixes th=
e issue.

Credit:

Summ3r, Vidar-Team (reporter)
Apache Lucene (remediation developer)

References:

https://lucenenet.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-43383

