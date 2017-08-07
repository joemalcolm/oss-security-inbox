X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1468" "Monday" "7" "August" "2017" "09:42:05" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<6651351.AxBd7pCpa9@wanheda>" "55" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080707:42:05" "[oss-security] Cve issue discussion" (number mark "U       ago@gentoo.o Aug  7   55/1468  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17724 invoked by uid 550); 7 Aug 2017 07:42:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17706 invoked from network); 7 Aug 2017 07:42:23 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 07 Aug 2017 09:42:05 +0200
Message-ID: <6651351.AxBd7pCpa9@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.34-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Cve issue discussion

On Monday 07 August 2017 01:03:53 ne xo wrote:
> Hello,
> 
> 
> I am curious about issuing CVEs.
> 
> I can see that a "NULL pointer dereference" or a bug where the exploit has
> not been verified also get a CVE.
 
> 
> heap-overflows may or may not be exploitable.
> 
> 
> It takes a lot of time to analyze the exploit and create the exploit code.
> 
> 
> Is it right to be assigned a CVE only if it is exploitable?
> 
> 
> Or do you think all bugs need to get a CVE?
> 
> 
> Thanks.
> 
> ---
> 
> ref
> 
> ---
> 
> [1]http://www.openwall.com/lists/oss-security/2017/04/10/17 - NULL pointer
> dereference
> [2]http://www.openwall.com/lists/oss-security/2017/04/10/15 -
> memory allocation failure

Hi.

Since you mentioned some issues reported by me, let me answer directly.
For the first, it is an undefined behavior, so actually you don't see the 
crash.
Nowadays, the undefined behavior issues do not get anymore a CVE.


For the second, ASAN reports that the program want to use more that 64GB of 
ram to execute the process so ASAN hangs the process. In this case is up to 
the maintainer check whether there is a problem in the code or not, or it is 
expected. The better double-check would be verify what happens without ASAN.

I'd like also to mention that MITRE assigns CVE after they analyze the 
reported issue, so if an issue does not deserve a CVE, MITRE probably won't 
assign accompanied by an explanation.

-- 
Agostino Sarubbo
Gentoo Linux Developer
