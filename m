X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Thursday" "27" "July" "2017" "09:40:09" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87r2x2uy3q.fsf@mid.deneb.enyo.de>" "12" "[oss-security] CVE-2017-11671: GCC generates incorrect code for RDRAND/RDSEED intrinsics" "^Date:" nil nil "7" "2017072707:40:09" "[oss-security] CVE-2017-11671: GCC generates incorrect code for RDRAND/RDSEED intrinsics" (number mark "        fw@deneb.eny Jul 27   12/610   " thread-indent "\"[oss-security] CVE-2017-11671: GCC generates incorrect code for RDRAND/RDSEED intrinsics\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17826 invoked by uid 550); 27 Jul 2017 07:40:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17802 invoked from network); 27 Jul 2017 07:40:21 -0000
Message-ID: <87r2x2uy3q.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 27 Jul 2017 09:40:09 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-11671: GCC generates incorrect code for RDRAND/RDSEED intrinsics
To: oss-security@lists.openwall.com

Earlier this year, a GCC bug was fixed which could lead to intrinsics
for RDRAND and (more likely) RDSEED to produce non-random results.
These instructions use the carry flag to report success or failure,
and GCC used to generate instruction sequences which clobbered the
flag before applications had a change to read it:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80180
  https://gcc.gnu.org/ml/gcc-patches/2017-03/msg01349.html

Practical impact is hopefully limited because the intrinsics are
difficult to use due to an unrelated GCC usability issue, and inline
assembly is not impacted by this issue.
