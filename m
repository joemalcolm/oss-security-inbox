X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["329" "Thursday" "18" "November" "2021" "23:06:09" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "15" "[oss-security] CVE-2021-39233: Apache Ozone: Container-related datanode operations can be called without authorization " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   15/329   " thread-indent "\"[oss-security] CVE-2021-39233: Apache Ozone: Container-related datanode operations can be called without authorization \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39233: Apache Ozone: Container-related datanode operations can be called without authorization " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27686 invoked by uid 550); 19 Nov 2021 10:56:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11388 invoked from network); 18 Nov 2021 23:06:34 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c75fc85e-1072-99b1-83ad-20da58aebf23@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:06:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39233: Apache Ozone: Container-related datanode
 operations can be called without authorization 

Description:

Container related Datanode requests of Ozone Datanode were not properly aut=
horized and can be called by any client.=20

This issue is being tracked as HDDS-4729,HDDS-5236

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

