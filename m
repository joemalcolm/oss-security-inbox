Received: (qmail 13719 invoked by uid 550); 15 Oct 2024 19:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7318 invoked from network); 15 Oct 2024 18:33:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <594420de-814f-b8cb-a4fc-1375fc3914d5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 18:31:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45462: Apache CloudStack: Incomplete session invalidation
 on web interface logout 

Severity: moderate

Affected versions:

- Apache CloudStack 4.15.1.0 through 4.18.2.3
- Apache CloudStack 4.19.0.0 through 4.19.1.1

Description:

The logout operation in the CloudStack web interface does not expire the us=
er session completely which is valid until expiry by time or restart of the=
 backend service. An attacker that has access to a user's browser can use a=
n unexpired session to gain access to resources owned by the logged out use=
r account. This issue affects Apache CloudStack from 4.15.1.0 through 4.18.=
2.3; and from 4.19.0.0 through 4.19.1.1.




Users are recommended to upgrade to Apache CloudStack 4.18.2.4 or 4.19.1.2,=
 or later, which addresses this issue.

Credit:

Arthur Souza (reporter)
Felipe Olivaes (reporter)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.18.2.4-4.19.=
1.2
https://lists.apache.org/thread/ktsfjcnj22x4kg49ctock3d9tq7jnvlo
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45462

