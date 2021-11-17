X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["318" "Wednesday" "17" "November" "2021" "14:59:19" "+0000" "Daniel Gaspar" "dpgaspar@apache.org" nil "14" "[oss-security] CVE-2021-42250: Apache Superset: Possible log injection " nil nil nil "11" nil nil (number mark "U       dpgaspar@apa Nov 17   14/318   " thread-indent "\"[oss-security] CVE-2021-42250: Apache Superset: Possible log injection \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42250: Apache Superset: Possible log injection " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3617 invoked by uid 550); 17 Nov 2021 15:01:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1820 invoked from network); 17 Nov 2021 14:59:33 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6282612b-66b8-b813-22e3-d656807f4a44@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Nov 2021 14:59:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-42250: Apache Superset: Possible log injection 

Description:

Improper output neutralization for Logs. A specific Apache Superset HTTP en=
dpoint allowed for an authenticated user to forge log entries or inject mal=
icious content into logs.

Mitigation:

Upgrade to Apache Superset 1.3.2 or higher

Credit:

Found and reported by Duxiaoman Financial Security Team

