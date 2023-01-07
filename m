X-Quarantine-ID: <CwhzzZByXXQf>
Received: (qmail 23719 invoked by uid 550); 7 Jan 2023 20:40:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19936 invoked from network); 7 Jan 2023 15:52:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dan Klco <dklco@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6bdc8ff7-0627-2515-7653-3b60ea38538b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 07 Jan 2023 15:52:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-46769: Apache Sling App CMS: XSS in CMS Site Group Detail

Severity: low

Description:

An improper neutralization of input during web page generation ('Cross-site=
 Scripting') [CWE-79] vulnerability in Sling App CMS version 1.1.2 and prio=
r may allow an authenticated remote attacker to perform a reflected cross-s=
ite scripting (XSS) attack in the site group feature.

Upgrade to Apache Sling App CMS >=3D 1.1.4

Credit:

Apache Sling would like to thank Sam Bagheri for reporting this issue (find=
er)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-46769

