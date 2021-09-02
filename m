X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["361" "Thursday" "2" "September" "2021" "16:02:16" "+0000" "Jeff Zhang" "zjffdu@apache.org" nil "14" "[oss-security] CVE-2020-13929: Apache Zeppelin: Notebook permissions bypass " nil nil nil "9" nil nil (number mark "U       zjffdu@apach Sep  2   14/361   " thread-indent "\"[oss-security] CVE-2020-13929: Apache Zeppelin: Notebook permissions bypass \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13929: Apache Zeppelin: Notebook permissions bypass " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15904 invoked by uid 550); 2 Sep 2021 17:04:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24063 invoked from network); 2 Sep 2021 16:02:29 -0000
Content-Type: text/plain; charset=utf-8
From: Jeff Zhang <zjffdu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9836bef6-e46b-f226-2426-892481234559@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Sep 2021 16:02:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2020-13929: Apache Zeppelin: Notebook permissions bypass 

Severity: critical

Description:

Authentication bypass vulnerability in Apache Zeppelin allows an attacker t=
o bypass Zeppelin authentication mechanism to act as another user.  This is=
sue affects Apache Zeppelin Apache Zeppelin version 0.9.0 and prior version=
s.

Credit:

Apache Zeppelin would like to thank David Woodhouse for reporting this issu=
e=20

