X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["370" "Thursday" "18" "November" "2021" "23:07:46" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "17" "[oss-security] CVE-2021-41532: Apache Ozone: Unauthenticated access to Ozone Recon HTTP endpoints " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   17/370   " thread-indent "\"[oss-security] CVE-2021-41532: Apache Ozone: Unauthenticated access to Ozone Recon HTTP endpoints \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41532: Apache Ozone: Unauthenticated access to Ozone Recon HTTP endpoints " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29754 invoked by uid 550); 19 Nov 2021 10:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11667 invoked from network); 18 Nov 2021 23:07:59 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <970d2d31-fd5a-b089-03b9-d6685722ab14@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:07:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41532: Apache Ozone: Unauthenticated access to Ozone
 Recon HTTP endpoints 

Severity: moderate

Description:

Recon HTTP endpoints provide access to OM, SCM and Datanode metadata. Due t=
o a bug, any unauthenticated user can access the data from these endpoints.

This issue is being tracked as HDDS-5691

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Ethan Rose for reporting this issue.

