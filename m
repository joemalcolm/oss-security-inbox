Received: (qmail 32628 invoked by uid 550); 6 Jan 2023 07:36:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30268 invoked from network); 6 Jan 2023 07:32:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bf69e2b7-eed2-7a90-9b6f-80784e1fcf68@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 06 Jan 2023 07:31:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45787: Apache James MIME4J: Temporary File Information
 Disclosure in MIME4J TempFileStorageProvider 

Severity: low

Description:

Unproper laxist permissions on the temporary files used by MIME4J TempFileS=
torageProvider may lead to information disclosure to other local users. Thi=
s issue affects Apache James MIME4J version 0.8.8 and prior versions.

We recommend users to upgrade the version of Linkis to version 1.3.1.

Credit:

Jonathan Leitschuh (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45787

