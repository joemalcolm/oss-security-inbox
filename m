Received: (qmail 13931 invoked by uid 550); 15 Dec 2023 11:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1090 invoked from network); 15 Dec 2023 10:59:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a177ab3b-4b58-c2a5-bccc-f3d549bd09e0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 10:59:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30867: Apache StreamPark (incubating): Authenticated
 system users could trigger SQL injection vulnerability 

Severity: low

Affected versions:

- Apache StreamPark (incubating) 2.0.0 before 2.1.2

Description:

In the Streampark platform, when users log in to the system and use certain=
 features, some pages provide a name-based fuzzy search, such as job names,=
 role names, etc. The sql syntax :select * from table where jobName like '%=
jobName%'. However, the jobName field may receive illegal parameters, leadi=
ng to SQL injection. This could potentially result in information leakage.

Mitigation:

Users are recommended to upgrade to version 2.1.2, which fixes the issue.

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-30867

