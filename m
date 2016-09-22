X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["505" "Thursday" "22" "September" "2016" "16:06:09" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20160922140609.GA31107@pisco.westfalen.local>" "14" "Re: [oss-security] CVE Request: VLC: Potential divide-by-zero issue" nil nil nil "9" "2016092214:06:09" "[oss-security] CVE Request: VLC: Potential divide-by-zero issue" (number mark "U       jmm@debian.o Sep 22   14/505   " thread-indent "\"Re: [oss-security] CVE Request: VLC: Potential divide-by-zero issue\"\n") "<HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>" ("<HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15566 invoked by uid 550); 22 Sep 2016 14:06:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15548 invoked from network); 22 Sep 2016 14:06:27 -0000
Date: Thu, 22 Sep 2016 16:06:09 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Message-ID: <20160922140609.GA31107@pisco.westfalen.local>
References: <HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <HK2PR04MB070661404763CA3B45FF7C219CC90@HK2PR04MB0706.apcprd04.prod.outlook.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
X-SA-Exim-Connect-IP: 95.33.116.6
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] CVE Request: VLC: Potential divide-by-zero issue

On Thu, Sep 22, 2016 at 07:12:32AM +0000, ajax secure wrote:
> Hi
> 
> Xiangkun Jia has discovered a divide-by-zero in VLC, which makes the application crashed and may be caused by buffer overflow. The fix is in
> 
> http://git.videolan.org/?p=vlc/vlc-2.2.git;a=commit;h=85a64e10d665edf8a29526543b5c6fd4923437fd
> 
> Can you assign a CVE for this issue? Thank you.

Crashes without the potential for code injection in enduser applications
usually don't receive CVE ID assignments.

Cheers,
        Moritz
