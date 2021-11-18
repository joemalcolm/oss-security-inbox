X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["384" "Thursday" "18" "November" "2021" "23:07:01" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "16" "[oss-security] CVE-2021-39235: Apache Ozone: Access mode of block tokens are not enforced " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   16/384   " thread-indent "\"[oss-security] CVE-2021-39235: Apache Ozone: Access mode of block tokens are not enforced \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39235: Apache Ozone: Access mode of block tokens are not enforced " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28319 invoked by uid 550); 19 Nov 2021 10:57:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11553 invoked from network); 18 Nov 2021 23:07:14 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <726aa037-5b9d-2dfa-4256-79f53c659b5f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:07:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39235: Apache Ozone: Access mode of block tokens are not
 enforced 

Description:

Ozone Datanode doesn't check the access mode parameter of the block token. =
Authenticated users with valid READ block token can do any write operation =
on the same block.=20

This issue is being tracked as HDDS-4558,HDDS-4644

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

