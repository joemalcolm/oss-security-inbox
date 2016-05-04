X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["857" "Wednesday" "4" "May" "2016" "21:01:21" "+0300" "Solar Designer" "solar@openwall.com" "<20160504180121.GA20669@openwall.com>" "25" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050418:01:21" "[oss-security] broken RSA keys" (number mark "        solar@openwa May  4   25/857   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160504172803.GA19393@openwall.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13639 invoked by uid 550); 4 May 2016 18:01:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13619 invoked from network); 4 May 2016 18:01:24 -0000
Message-ID: <20160504180121.GA20669@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160504172803.GA19393@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 4 May 2016 21:01:21 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On Wed, May 04, 2016 at 08:28:03PM +0300, Solar Designer wrote:
> BTW, had I not realized the above, I would now come up with an even more
> complex conspiracy theory about 149784613473514443594783892995, which is
> 0x1E3FAEDA6A4F093A7C0F5A603, so:
> 
> limb[0] = 0xC0F5A603
> limb[1] = 0xA4F093A7
> limb[2] = 0xE3FAEDA6
> limb[3] = 1
> 
> which satisfies:
> 
> limb[1] = limb[0] + limb[2] + 2
> 
> No idea why it's "+ 2" here

Actually, it's "- 2", not "+ 2".  Sorry.  Not that it matters, but I was
uncomfortable leaving the error uncorrected in case someone wants to try
and figure out why exactly this artifact manifests itself like it does.

There's probably an explanation of why the algorithm is likely to hit
numbers of this form, but this is beside the point for software bugs,
which is what I want us to discuss further in this thread.

Alexander
