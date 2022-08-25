Received: (qmail 24435 invoked by uid 550); 25 Aug 2022 19:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14041 invoked from network); 25 Aug 2022 14:10:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Joe Orton <jorton@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Aug 2022 14:09:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart form parse memory
 corruption 

Severity: important

Description:

A flaw in libapreq2 versions 2.16 and earlier could cause a buffer overflow=
 while processing multipart form uploads.  A remote attacker could send a r=
equest causing a process crash which could lead to a denial of service atta=
ck.

