X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["342" "Tuesday" "3" "July" "2018" "13:53:42" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180703105342.zv2ibjvs5ylwjwz2@sivokote.iziade.m$>" "10" "[oss-security] coverity scan of qmail -- 53 potential defects (with false positives)" "^Date:" nil nil "7" "2018070310:53:42" "[oss-security] coverity scan of qmail -- 53 potential defects (with false positives)" (number mark "        guninski@gun Jul  3   10/342   " thread-indent "\"[oss-security] coverity scan of qmail -- 53 potential defects (with false positives)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24072 invoked by uid 550); 3 Jul 2018 10:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21617 invoked from network); 3 Jul 2018 10:53:54 -0000
Message-ID: <20180703105342.zv2ibjvs5ylwjwz2@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
header: best read with a sniffer
Date: Tue, 3 Jul 2018 13:53:42 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] coverity scan of qmail -- 53 potential defects (with false positives)
To: oss-security@lists.openwall.com

 From my blog:
https://j.ludost.net/blog/archives/2018/07/01/coverity_scan_of_qmail_--_53_potential_defects_with_false_positives/index.html

https://scan.coverity.com/projects/qmail


coverity gave only 53 defects. Quick scan suggests that the non-false
positives are logically dead code or file race conditions (might be
wrong about this).

