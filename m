X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["334" "Thursday" "2" "September" "2021" "15:56:50" "+0000" "Jeff Zhang" "zjffdu@apache.org" nil "11" "[oss-security] CVE-2019-10095: Apache Zeppelin: bash command injection in spark interpreter " nil nil nil "9" nil nil (number mark "U       zjffdu@apach Sep  2   11/334   " thread-indent "\"[oss-security] CVE-2019-10095: Apache Zeppelin: bash command injection in spark interpreter \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10095: Apache Zeppelin: bash command injection in spark interpreter " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13696 invoked by uid 550); 2 Sep 2021 17:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22003 invoked from network); 2 Sep 2021 15:57:04 -0000
Content-Type: text/plain; charset=utf-8
From: Jeff Zhang <zjffdu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a2614ff1-32d6-1e76-35f6-4dfaf4f3e5cd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Sep 2021 15:56:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2019-10095: Apache Zeppelin: bash command injection in spark
 interpreter 

Description:

bash command injection vulnerability in Apache Zeppelin allows an attacker =
to inject system commands into Spark interpreter settings.  This issue affe=
cts Apache Zeppelin Apache Zeppelin version 0.9.0 and prior versions.

Credit:

Apache Zeppelin would like to thank HERE Security team for reporting this i=
ssue=20

