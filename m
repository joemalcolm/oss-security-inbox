Received: (qmail 30173 invoked by uid 550); 31 Jan 2023 17:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31985 invoked from network); 31 Jan 2023 15:13:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <76996523-6b4d-c462-9ae9-9f3d1bbc8b2e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Jan 2023 15:13:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-25147: Apache Portable Runtime (APR): out-of-bounds
 writes in the apr_base64 family of functions 

Severity: moderate

Description:

Integer Overflow or Wraparound vulnerability in apr_base64 functions of Apa=
che Portable Runtime Utility (APR-util) allows an attacker to write beyond =
bounds of a buffer.\nThis issue affects Apache Portable Runtime Utility (AP=
R-util) 1.6.1 and prior versions.

Credit:

Ronald Crane (Zippenhop LLC) (reporter)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-25147

