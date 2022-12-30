Received: (qmail 19733 invoked by uid 550); 30 Dec 2022 11:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5975 invoked from network); 30 Dec 2022 07:15:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xiaoxiang Yu <xxyu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <20b7e5b0-8c9d-fdf0-8346-6ccd5b721b29@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 30 Dec 2022 07:15:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-44621: Apache Kylin: Command injection by Diagnosis
 Controller 

Severity: important

Description:

Diagnosis Controller miss parameter validation, so user may attacked by com=
mand injection via HTTP Request.

Work Arounds:

Users of Kylin 2.x & Kylin 3.x & 4.x should upgrade to 4.0.3 or apply patch=
  https://github.com/apache/kylin/pull/2011 https://github.com/apache/kylin=
/pull/2011

Credit:

Messy God <godimessy@gmail.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-44621

