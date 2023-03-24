Received: (qmail 7672 invoked by uid 550); 24 Mar 2023 15:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32134 invoked from network); 24 Mar 2023 15:05:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Marcus Lange <marcus@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <39fbbc4c-95c1-2997-aeee-57982a76fcbd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Mar 2023 15:04:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-38745: Apache OpenOffice: Empty entry in Java class path 

Severity: moderate

Description:

Apache OpenOffice versions before 4.1.14 may be configured to add an empty =
entry to the Java class path. This may lead to run arbitrary Java code from=
 the current directory.

Credit:

European Commission's Open Source Programme Office (sponsor)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-38745

