X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Monday" "16" "November" "2015" "15:56:52" "+0300" "Solar Designer" "solar@openwall.com" "<20151116125652.GA18548@openwall.com>" "19" "Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00" "^Date:" nil nil "11" "2015111612:56:52" "[oss-security] CVE request-HUAWEI P8 GRA-UL00" (number mark "        solar@openwa Nov 16   19/976   " thread-indent "\"Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00\"\n") "<2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21830 invoked by uid 550); 16 Nov 2015 12:56:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21812 invoked from network); 16 Nov 2015 12:56:55 -0000
Message-ID: <20151116125652.GA18548@openwall.com>
References: <2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 16 Nov 2015 15:56:52 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00
To: oss-security@lists.openwall.com

On Mon, Nov 16, 2015 at 02:56:41AM +0000, ?????? wrote:
> Code below will lead P8 restart :

As a moderator, I reluctantly approved this, but I could not confirm
that the phone's software in question (a modified Linux kernel? or a
kernel module?) is Open Source.  If it is not, then this is off-topic
for oss-security.  Google web search for hi6402dbg did not find
anything, suggesting the code in question has not been published.

A maybe-relevant detail is that if this is a Linux kernel patch, then
the code must be made public per the GPL.  It is unclear whether this
makes the vulnerability detail on-topic for oss-security or not yet
(maybe not until the code is actually published).  I think it's the
first time an issue like this (in code that is meant to be published,
but is not yet) is brought up in here (although I might have missed
other examples - e.g., maybe the joke postings about a North Korean
Linux distro would also fall under this category).

Alexander
