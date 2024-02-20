Received: (qmail 10093 invoked by uid 550); 20 Feb 2024 12:08:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18166 invoked from network); 20 Feb 2024 05:49:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d43fb009-c3b7-208b-166b-2eba279d485c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 05:51:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49250: Apache DolphinScheduler: Insecure TLS TrustManager
 used in HttpUtil 

Severity: low

Affected versions:

- Apache DolphinScheduler through 3.2.0

Description:

Because the HttpUtils class did not verify certificates, an attacker that c=
ould perform a Man-in-the-Middle (MITM) attack on outgoing https connection=
s could impersonate the server.

This issue affects Apache DolphinScheduler: before 3.2.0.

Users are recommended to upgrade to version 3.2.1, which fixes the issue.

References:

https://github.com/apache/dolphinscheduler/pull/15288
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49250

