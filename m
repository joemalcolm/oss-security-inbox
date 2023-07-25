Received: (qmail 18234 invoked by uid 550); 25 Jul 2023 15:15:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9969 invoked from network); 25 Jul 2023 15:03:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Carsten Ziegeler <cziegeler@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <590db97f-212d-6dbe-c02f-c9064330f9fb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 15:02:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-38435: Apache Felix Healthcheck Webconsole Plugin: XSS in
 healthcheck webconsole plugin 

Severity: moderate

Affected versions:

- Apache Felix Healthcheck Webconsole Plugin through 2.0.2

Description:

An improper neutralization of input during web page generation ('Cross-site=
 Scripting') [CWE-79] vulnerability in Apache Felix Healthcheck Webconsole =
Plugin version 2.0.2 and prior may allow an attacker to perform a reflected=
 cross-site scripting (XSS) attack.

Upgrade to Apache Felix Healthcheck Webconsole Plugin 2.1.0 or higher.

Credit:

 This vulnerability was found by xray web vulnerability scanner (github.com=
/chaitin/xray) (finder)

References:

https://felix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-38435

