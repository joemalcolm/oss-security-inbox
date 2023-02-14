Received: (qmail 32324 invoked by uid 550); 14 Feb 2023 16:54:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16054 invoked from network); 14 Feb 2023 10:27:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Angela Schreiber <angela@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4cce91c8-50d8-2545-c544-02d332f92a0a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Feb 2023 10:26:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25141: JNDI injection into Apache
 sling-org-apache-sling-jcr-base 

Severity: critical

Description:

Apache Sling JCR Base < 3.1.12 has a critical injection vulnerability when =
running on old JDK versions (JDK 1.8.191 or earlier) through utility functi=
ons in RepositoryAccessor. The functions getRepository and getRepositoryFro=
mURL allow an application to access data stored in a remote location via JD=
NI and RMI.




Users of Apache Sling JCR Base are recommended to upgrade to Apache Sling J=
CR Base 3.1.12 or later, or to run on a more recent JDK.

Credit:

Xun Bai from LJQC Open Source Security Institute  (reporter)

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25141

