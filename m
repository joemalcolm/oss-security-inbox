Received: (qmail 30649 invoked by uid 550); 16 Dec 2022 13:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29746 invoked from network); 16 Dec 2022 12:54:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a8f37ed8-030b-5330-d68e-8942292ca16c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Dec 2022 12:54:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-46870: Apache Zeppelin: Stored XSS in note permissions 

Severity: moderate

Description:

An Improper Neutralization of Input During Web Page Generation ('Cross-site=
 Scripting') vulnerability in Apache Zeppelin allows logged-in users to exe=
cute arbitrary javascript in other users' browsers.
This issue affects Apache Zeppelin before 0.8.2. Users are recommended to u=
pgrade to a supported version of Zeppelin.

This issue is being tracked as ZEPPELIN-4333=20

References:

https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-46870
https://issues.apache.org/jira/browse/ZEPPELIN-4333

