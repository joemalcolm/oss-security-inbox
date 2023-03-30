Received: (qmail 20439 invoked by uid 550); 30 Mar 2023 13:01:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1981 invoked from network); 30 Mar 2023 09:08:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fde5850e-ac32-0e92-0df6-55f9f2175ca2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Mar 2023 09:08:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-28935: Apache UIMA DUCC: DUCC (EOL) allows RCE 

Severity: moderate

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Neutralization of Special Elements=
 used in a Command ('Command Injection') vulnerability in Apache Software F=
oundation Apache UIMA DUCC.


When using the "Distributed UIMA Cluster Computing" (DUCC) module of Apache=
 UIMA, an authenticated user that has the permissions to modify core entiti=
es can cause command execution as the system user that runs the web process.


As the "Distributed UIMA Cluster Computing" module for UIMA is retired, we =
do not plan to release a fix for this issue.
NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Crilwa (finder)

References:

https://uima.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-28935

