Received: (qmail 28185 invoked by uid 550); 31 Jan 2023 17:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31861 invoked from network); 31 Jan 2023 15:12:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0e9067f8-3ab3-0d40-2a28-9bfaa46f4d8f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Jan 2023 15:12:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24963: Apache Portable Runtime (APR): out-of-bound writes
 in the apr_encode family of functions  

Severity: moderate

Description:

Integer Overflow or Wraparound vulnerability in apr_encode functions of Apa=
che Portable Runtime (APR) allows an attacker to write beyond bounds of a b=
uffer.
This issue affects Apache Portable Runtime (APR) version 1.7.0.

Credit:

Ronald Crane (Zippenhop LLC) (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-24963

