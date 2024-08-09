Received: (qmail 19910 invoked by uid 550); 9 Aug 2024 12:43:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9692 invoked from network); 9 Aug 2024 12:40:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: ShunFeng Cai <caishunfeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <366aea6d-21c9-825c-036d-57009337f3ba@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Aug 2024 12:37:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29831: Apache DolphinScheduler: RCE by arbitrary js
 execution 

Severity: moderate

Affected versions:

- Apache DolphinScheduler through 3.2.1

Description:

Improper Input Validation vulnerability in Apache DolphinScheduler. An auth=
enticated user can cause arbitrary, unsandboxed javascript to be executed o=
n the server. If you are using the switch task plugin, please upgrade to ve=
rsion 3.2.2.

Credit:

yerest (reporter)
L0ne1y (reporter)
My Long (reporter)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29831

