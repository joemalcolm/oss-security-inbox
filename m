X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["312" "Thursday" "18" "November" "2021" "23:04:45" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "16" "[oss-security] CVE-2021-39232: Apache Ozone: Missing admin check for SCM related admin commands " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   16/312   " thread-indent "\"[oss-security] CVE-2021-39232: Apache Ozone: Missing admin check for SCM related admin commands \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39232: Apache Ozone: Missing admin check for SCM related admin commands " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26342 invoked by uid 550); 19 Nov 2021 10:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10170 invoked from network); 18 Nov 2021 23:04:59 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f8bd21d5-0fd8-d02d-f4c9-b54deff5a097@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:04:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39232: Apache Ozone: Missing admin check for SCM related
 admin commands 

Description:

Certain admin related SCM commands can be executed by any authenticated use=
rs, not just by admins.=20

This issue is being tracked as HDDS-4530

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

    Apache Ozone would like to thank Wei-Chiu Chuang for reporting this iss=
ue.

