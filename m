Received: (qmail 11445 invoked by uid 550); 14 Jun 2023 11:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1619 invoked from network); 14 Jun 2023 07:36:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Yasser Zamani <yasserzamani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <55e6c435-1cad-505b-e8b2-632e801a19f0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 Jun 2023 07:34:50 +0000
MIME-Version: 1.0
Subject: [oss-security] S2-063: CVE-2023-34149: Apache Struts: DoS via OOM owing to not
 properly checking of list bounds 

Affected versions:

- Apache Struts through 2.5.30
- Apache Struts through 6.1.2

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apach=
e Software Foundation Apache Struts.This issue affects Apache Struts: throu=
gh 2.5.30, through 6.1.2.

Credit:

Matthew McClain (finder)

References:

https://cwiki.apache.org/confluence/display/WW/S2-063
https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34149

