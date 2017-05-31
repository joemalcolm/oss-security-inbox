X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["632" "Wednesday" "31" "May" "2017" "22:30:37" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" "17" "[oss-security] Information on recent sqlite3 issues?" "^Date:" nil nil "5" "2017053120:30:37" "[oss-security] Information on recent sqlite3 issues?" (number mark "        jmm@debian.o May 31   17/632   " thread-indent "\"[oss-security] Information on recent sqlite3 issues?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19957 invoked by uid 550); 31 May 2017 20:30:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19918 invoked from network); 31 May 2017 20:30:48 -0000
Message-ID: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
X-SA-Exim-Connect-IP: 93.204.217.8
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Date: Wed, 31 May 2017 22:30:37 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

Hi,
one of the latest Apple advisories mentions several vulnerabilities in sqlite:
https://support.apple.com/en-us/HT207798

CVE-2017-2513: found by OSS-Fuzz
CVE-2017-2518: found by OSS-Fuzz
CVE-2017-2520: found by OSS-Fuzz
CVE-2017-2519: found by OSS-Fuzz
CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working with Trend Micro's Zero Day Initiative
CVE-2017-6991: Chaitin Security Research Lab (@ChaitinTech) working with Trend Micro's Zero Day Initiative

Does anyone have additional information on those and whether that
applies to the standard sqlite releases or Apple-specific changes?

Cheers,
        Moritz
	 
