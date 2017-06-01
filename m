X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1262" "Thursday" "1" "June" "2017" "08:47:43" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3719551.uSXB2Z6hFG@wanheda>" "36" "Re: [oss-security] Information on recent sqlite3 issues?" "^Cc:" nil nil "6" "2017060106:47:43" "[oss-security] Information on recent sqlite3 issues?" (number mark "        ago@gentoo.o Jun  1   36/1262  " thread-indent "\"Re: [oss-security] Information on recent sqlite3 issues?\"\n") "<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" ("<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3512 invoked by uid 550); 1 Jun 2017 06:48:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3494 invoked from network); 1 Jun 2017 06:47:59 -0000
Message-ID: <3719551.uSXB2Z6hFG@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.16-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Moritz Muehlenhoff <jmm@debian.org>
Date: Thu, 01 Jun 2017 08:47:43 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

On Wednesday 31 May 2017 22:30:37 Moritz Muehlenhoff wrote:
> Hi,
> one of the latest Apple advisories mentions several vulnerabilities in
> sqlite: https://support.apple.com/en-us/HT207798
> 
> CVE-2017-2513: found by OSS-Fuzz
> CVE-2017-2518: found by OSS-Fuzz
> CVE-2017-2520: found by OSS-Fuzz
> CVE-2017-2519: found by OSS-Fuzz
> CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working with
> Trend Micro's Zero Day Initiative CVE-2017-6991: Chaitin Security Research
> Lab (@ChaitinTech) working with Trend Micro's Zero Day Initiative
> 
> Does anyone have additional information on those and whether that
> applies to the standard sqlite releases or Apple-specific changes?
> 
> Cheers,
>         Moritz

Hi.

I don't know about apple itself but in the clusterfuzz reports I see 4 public 
bugs about sqlite.
However they have a very small (2 days) range of regression, i.e. a commit 
made in those two days causes the problem.
I didn't check, but I suspect they didn't go in any release.

FTR, the time you are seeing in the regression range is UTC:
https://github.com/google/oss-fuzz/issues/563

At this point I don't know if apple referer to those issues or the mentioned 
issues are not public.

-- 
Agostino Sarubbo
Gentoo Linux Developer
