X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["957" "Friday" "27" "March" "2015" "17:31:13" "+0300" "Solar Designer" "solar@openwall.com" "<20150327143113.GA2988@openwall.com>" "15" "Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." nil nil nil "3" "2015032714:31:13" "[oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." (number mark "        solar@openwa Mar 27   15/957   " thread-indent "\"Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%.\"\n") "<551548FD.8030700@upv.es>" ("<551548FD.8030700@upv.es>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26604 invoked by uid 550); 27 Mar 2015 14:31:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26586 invoked from network); 27 Mar 2015 14:31:16 -0000
Message-ID: <20150327143113.GA2988@openwall.com>
References: <551548FD.8030700@upv.es>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <551548FD.8030700@upv.es>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 27 Mar 2015 17:31:13 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%.
To: oss-security@lists.openwall.com

On Fri, Mar 27, 2015 at 01:11:41PM +0100, Hector Marco wrote:
> A bug in Linux ASLR implementation which affects some AMD processors has 
> been found. The issue affects to all Linux process even if they are not 
> using shared libraries (statically compiled). Grsecurity/PaX is also 
> affected.

spender's criticism, off Twitter:

<grsecurity> This new ASLR "weakness" with big 87.5% claims is a comedy of errors
<grsecurity> doesn't get the entropy count right for 32-bit in the email, copy+pasted the wrong entropy counts for grsec/PaX (it's 16, not 8)
<grsecurity> Further, the "fix" does absolutely nothing for local attackers and likely nothing for remote attackers either
<grsecurity> One leak of *any* library address from *any* service during the boot lifetime gives away the values
<grsecurity> And on vanilla kernels which still have no bruteforce protection whatsoever, this is less than a non-issue, & not worth dignifying in grsec

Alexander
