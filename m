X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["318" "Thursday" "18" "November" "2021" "23:07:24" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "15" "[oss-security] CVE-2021-39236: Apache Ozone: Owners of the S3 tokens are not validated " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   15/318   " thread-indent "\"[oss-security] CVE-2021-39236: Apache Ozone: Owners of the S3 tokens are not validated \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39236: Apache Ozone: Owners of the S3 tokens are not validated " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28504 invoked by uid 550); 19 Nov 2021 10:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11609 invoked from network); 18 Nov 2021 23:07:37 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6b49338a-7118-f9d8-58a0-99ab5fdcdefa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:07:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39236: Apache Ozone: Owners of the S3 tokens are not
 validated 

Description:

Authenticated users with valid Ozone S3 credentials can create specific OM =
requests, impersonating any other user.=20

This issue is being tracked as HDDS-4763

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

