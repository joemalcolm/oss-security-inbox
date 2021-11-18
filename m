X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["414" "Thursday" "18" "November" "2021" "23:03:45" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "16" "[oss-security] CVE-2021-36372: Apache Ozone: Original block tokens are persisted and can be retrieved " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   16/414   " thread-indent "\"[oss-security] CVE-2021-36372: Apache Ozone: Original block tokens are persisted and can be retrieved \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36372: Apache Ozone: Original block tokens are persisted and can be retrieved " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24487 invoked by uid 550); 19 Nov 2021 10:56:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10031 invoked from network); 18 Nov 2021 23:03:59 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <77cee0ac-a53d-6de5-23fe-f6a928e4efc7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:03:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-36372: Apache Ozone: Original block tokens are persisted
 and can be retrieved 

Description:

Initially generated block tokens are persisted to the metadata database and=
 can be retrieved with authenticated users with permission to the key. Auth=
enticated users may use them even after access is revoked.=20

This issue is being tracked as HDDS-5315

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

