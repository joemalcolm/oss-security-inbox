X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["331" "Thursday" "11" "November" "2021" "13:28:07" "+0000" "Daniel Gaspar" "dpgaspar@apache.org" nil "15" "[oss-security] CVE-2021-41972: Apache Superset: Credentials leak " nil nil nil "11" nil nil (number mark "U       dpgaspar@apa Nov 11   15/331   " thread-indent "\"[oss-security] CVE-2021-41972: Apache Superset: Credentials leak \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41972: Apache Superset: Credentials leak " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32228 invoked by uid 550); 11 Nov 2021 13:54:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21850 invoked from network); 11 Nov 2021 13:28:21 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3a3a3ba7-817d-e417-7aeb-a55b50b05be6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Nov 2021 13:28:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41972: Apache Superset: Credentials leak 

Description:

Apache Superset up to and including 1.3.1 allowed for database connections =
password leak for authenticated users. This information could be accessed i=
n a non-trivial way.


Mitigation:

Upgrade to Apache Superset 1.3.2 or higher

Credit:

Apache Superset team would like to thank Ke Zhu for reporting this issue

