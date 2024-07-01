Received: (qmail 3820 invoked by uid 550); 1 Jul 2024 13:56:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3261 invoked from network); 1 Jul 2024 12:45:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <007b0fc2-2d8b-e42d-5fbb-b62e18b84255@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:41:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38474: Apache HTTP Server weakness with encoded question
 marks in backreferences 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

Substitution encoding issue in mod_rewrite in Apache HTTP Server 2.4.59 and=
 earlier allows attacker to execute scripts in
directories permitted by the configuration but not directly reachable by an=
y=C2=A0URL or source disclosure of scripts meant to only to be executed as =
CGI.

Users are recommended to upgrade to version 2.4.60, which fixes this issue.

Some RewriteRules that capture and substitute unsafely will now fail unless=
 rewrite flag "UnsafeAllow3F" is specified.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38474

Timeline:

2024-04-01: reported

