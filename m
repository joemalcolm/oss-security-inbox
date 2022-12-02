Received: (qmail 24309 invoked by uid 550); 2 Dec 2022 15:19:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16044 invoked from network); 2 Dec 2022 13:36:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <22ffd609-2702-cce6-cdc1-7207442a360d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Dec 2022 13:36:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-46366: Apache Tapestry prior to version 4 (EOL) allows
 RCE though deserialization of untrusted input 

Description:

** UNSUPPORTED WHEN ASSIGNED ** Apache Tapestry 3.x allows deserialization =
of untrusted data, leading to remote code execution. This issue is similar =
to but distinct from CVE-2020-17531, which applies the the (also unsupporte=
d) 4.x version line. NOTE: This vulnerability only affects Apache Tapestry =
version line 3.x, which is no longer supported by the maintainer. Users are=
 recommended to upgrade to a supported version line of Apache Tapestry.

Credit:

Apache would like to thank Ilyass El Hadi from Mandiant for reporting this =
issue

