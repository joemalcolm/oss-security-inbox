Received: (qmail 10149 invoked by uid 550); 6 Sep 2025 16:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25677 invoked from network); 5 Sep 2025 15:34:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5bb49fc3-42df-acf4-7f72-f3c896d8fa5e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Sep 2025 15:32:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48208: Apache HertzBeat (incubating): Jmx JNDI injection
 vulnerability 

Severity: moderate=20

Affected versions:

- Apache HertzBeat (incubating) through 1.7.2

Description:

Improper Neutralization of Special Elements used in an LDAP Query ('LDAP In=
jection') vulnerability in Apache HertzBeat .

This issue affects Apache HertzBeat: through 1.7.2.

Users are recommended to upgrade to version [FIXED_VERSION], which fixes th=
e issue.

Credit:

F10wers13eiCHeng (finder)
aftersnow (finder)

References:

https://hertzbeat.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-48208

