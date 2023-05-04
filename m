Received: (qmail 3858 invoked by uid 550); 4 May 2023 22:07:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32404 invoked from network); 4 May 2023 21:00:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Madhan Neethiraj <madhan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eb6516d2-82f7-481d-f2a4-f7053c05c67f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 May 2023 20:59:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45048: Apache Ranger: code execution vulnerability in
 policy expressions 

Affected versions:

- Apache Ranger 2.3.0

Description:

Authenticated users with appropriate privileges can create policies having =
expressions that can exploit code execution vulnerability.=C2=A0This issue =
affects Apache Ranger: 2.3.0.

Credit:

g1831767442@163.com (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45048

