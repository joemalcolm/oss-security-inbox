Received: (qmail 5582 invoked by uid 550); 16 Jun 2025 17:14:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25787 invoked from network); 16 Jun 2025 14:53:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <16d76c76-dd00-1a57-b975-94191e8ee5cb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jun 2025 14:53:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48976: Apache Commons FileUpload, Apache Commons
 FileUpload: FileUpload DoS via part headers 

Severity: important=20

Affected versions:

- Apache Commons FileUpload (commons-fileupload:commons-fileupload) 1.0 bef=
ore 1.6
- Apache Commons FileUpload (org.apache.commons:commons-fileupload2) 2.0.0-=
M1 before 2.0.0-M4

Description:

Allocation of resources for multipart headers with insufficient limits enab=
led a DoS vulnerability in Apache Commons FileUpload.

This issue affects Apache Commons FileUpload: from 1.0 before 1.6; from 2.0=
.0-M1 before 2.0.0-M4.

Users are recommended to upgrade to versions 1.6 or 2.0.0-M4, which fix the=
 issue.

Credit:

TERASOLUNA Framework Security Team of NTT DATA Group Corporation (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-48976

