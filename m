X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["360" "Thursday" "18" "November" "2021" "23:06:29" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "16" "[oss-security] CVE-2021-39234: Apache Ozone: Raw block data can be read bypassing ACL/authorization " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   16/360   " thread-indent "\"[oss-security] CVE-2021-39234: Apache Ozone: Raw block data can be read bypassing ACL/authorization \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39234: Apache Ozone: Raw block data can be read bypassing ACL/authorization " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27911 invoked by uid 550); 19 Nov 2021 10:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11428 invoked from network); 18 Nov 2021 23:06:42 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6114c6b2-91b8-3040-e765-c56edcb2be02@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:06:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39234: Apache Ozone: Raw block data can be read bypassing
 ACL/authorization 

Description:

Authenticated users knowing the ID of an existing block can craft specific =
request allowing access those blocks, bypassing other security checks like =
ACL.=20

This issue is being tracked as HDDS-5061

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

