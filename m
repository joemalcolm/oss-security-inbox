Received: (qmail 3333 invoked by uid 550); 30 Oct 2025 15:39:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7948 invoked from network); 30 Oct 2025 15:13:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ashish Tiwari <ashishtiwari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a1d7fb19-0a89-d1dc-e949-53bd626291e4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Oct 2025 15:13:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-62232: Apache APISIX: APISIX basic-auth logs plaintext
 credentials at info level 

Severity: moderate=20

Affected versions:

- Apache APISIX 1.0

Description:

Sensitive data exposure via logging in basic-auth leads to plaintext userna=
mes and passwords written to error logs and forwarded to log sinks when log=
 level is INFO/DEBUG. This creates a high risk of credential compromise thr=
ough log access.
It has been fixed in the following commit:=C2=A0 https://github.com/apache/=
apisix/pull/12629=20
Users are recommended to upgrade to version 3.14, which fixes this issue.

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-62232

