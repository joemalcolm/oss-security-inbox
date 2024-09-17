Received: (qmail 1805 invoked by uid 550); 17 Sep 2024 18:45:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9961 invoked from network); 17 Sep 2024 17:52:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Karan Kumar <karan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d2594e2b-af02-22f0-bcd8-aac050704e3a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Sep 2024 17:52:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45384: Apache Druid: Padding oracle in druid-pac4j
 extension that allows an attacker to manipulate a pac4j session cookie via
 Padding Oracle Attack 

Severity: low

Affected versions:

- Apache Druid 0.18.0 through 30.0.0

Description:

Padding Oracle vulnerability in Apache Druid extension, druid-pac4j.
This could allow an attacker to manipulate a pac4j session cookie.

This issue affects Apache Druid versions 0.18.0 through 30.0.0.
Since the druid-pac4j extension is optional and disabled by default, Druid =
installations not using the druid-pac4j extension are not affected by this =
vulnerability.

While we are not aware of a way to meaningfully exploit this flaw, we=20
nevertheless recommend upgrading to version 30.0.1 or higher which fixes th=
e issue
and ensuring you have a strong=20
druid.auth.pac4j.cookiePassphrase as a precaution.

Credit:

mr-n30 (reporter)

References:

https://druid.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45384

