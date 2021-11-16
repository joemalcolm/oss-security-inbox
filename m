X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["262" "Tuesday" "16" "November" "2021" "05:14:11" "+0000" "Liang Liu" "midnight2104@apache.org" nil "10" "[oss-security] CVE-2021-37580: Apache ShenYu Admin bypass JWT authentication " nil nil nil "11" nil nil (number mark "U       midnight2104 Nov 16   10/262   " thread-indent "\"[oss-security] CVE-2021-37580: Apache ShenYu Admin bypass JWT authentication \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-37580: Apache ShenYu Admin bypass JWT authentication " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20351 invoked by uid 550); 16 Nov 2021 11:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30428 invoked from network); 16 Nov 2021 05:14:30 -0000
Content-Type: text/plain; charset=utf-8
From: Liang Liu <midnight2104@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f9c3cbc8-1da9-3903-2e59-bb0e88f2ded5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Nov 2021 05:14:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-37580: Apache ShenYu Admin bypass JWT authentication 

Description:

A flaw was found in Apache ShenYu Admin. The incorrect use of JWT in Shenyu=
AdminBootstrap allows an attacker to bypass authentication.  This issue aff=
ected Apache ShenYu 2.3.0 and 2.4.0

Credit:

This issue was reported by =E4=BC=8D =E9=9B=84

