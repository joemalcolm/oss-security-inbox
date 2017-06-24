X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["773" "Saturday" "24" "June" "2017" "14:28:20" "+0200" "Solar Designer" "solar@openwall.com" "<20170624122820.GB29096@openwall.com>" "15" "Re: [oss-security] CVE for the TSIG issue in knot?" "^Date:" nil nil "6" "2017062412:28:20" "[oss-security] CVE for the TSIG issue in knot?" (number mark "        solar@openwa Jun 24   15/773   " thread-indent "\"Re: [oss-security] CVE for the TSIG issue in knot?\"\n") "<1498305503.26646.5.camel@debian.org>" ("<1498305503.26646.5.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12072 invoked by uid 550); 24 Jun 2017 12:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11959 invoked from network); 24 Jun 2017 12:28:41 -0000
Message-ID: <20170624122820.GB29096@openwall.com>
References: <1498305503.26646.5.camel@debian.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1498305503.26646.5.camel@debian.org>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 24 Jun 2017 14:28:20 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for the TSIG issue in knot?
To: oss-security@lists.openwall.com

On Sat, Jun 24, 2017 at 01:58:23PM +0200, Yves-Alexis Perez wrote:
> I noticed the recent issue in knot with TSIG bypass
> (https://lists.nic.cz/pipermail/knot-dns-users/2017-June/001144.html)

Is is inappropriate to post only a link in here.  In cases like this,
please also quote at least the most essential portion of the content
you're referring to, which is:

"CZ.NIC has released Knot DNS 2.5.2 and Knot DNS 2.4.5. Beside several fixes and improvements,
these versions fix a flaw within the TSIG protocol implementation that would allow an attacker
with a valid key name and algorithm to bypass the TSIG authentication if no additional ACL
restrictions is set. This vulnerability was discovered by security experts from Synacktiv.
Special thanks to them!"

Alexander
