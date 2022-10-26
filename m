Received: (qmail 15886 invoked by uid 550); 26 Oct 2022 11:03:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26425 invoked from network); 26 Oct 2022 09:42:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf6b94a8-3d08-887a-7826-b59d534a1aaa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 26 Oct 2022 09:42:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43766: Apache IoTDB: ReDoS Vulnerability by REGEXP 

Severity: low

Description:

Apache IoTDB version 0.12.2 to 0.12.6, 0.13.0 to 0.13.2 are vulnerable by t=
he attack of REGEXP query with Java8. Users should upgrade to 0.13.3 which =
addresses this issue or use a later version of Java to avoid it.

