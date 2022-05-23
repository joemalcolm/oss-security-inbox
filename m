Received: (qmail 17750 invoked by uid 550); 23 May 2022 10:14:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14094 invoked from network); 23 May 2022 10:09:03 -0000
Content-Type: text/plain; charset=utf-8
From: Slawomir Jaranowski <sjaranowski@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4cd86c45-ac7c-3867-cae3-7f1f28a598eb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 May 2022 09:52:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-29599: Apache Maven: Commandline class shell injection
 vulnerabilities 

Description:

In Apache Maven maven-shared-utils prior to version 3.3.3, the Commandline =
class can emit double-quoted strings without proper escaping, allowing shel=
l injection attacks.

This issue is being tracked as MSHARED-297

References:

https://issues.apache.org/jira/browse/MSHARED-297
https://github.com/apache/maven-shared-utils/pull/40

