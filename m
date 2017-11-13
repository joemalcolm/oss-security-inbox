X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1205" "Monday" "13" "November" "2017" "20:33:04" "+0100" "Solar Designer" "solar@openwall.com" "<20171113193304.GA27179@openwall.com>" "30" "Re: [oss-security] (linux-)distros list use statistics" "^Date:" nil nil "11" "2017111319:33:04" "[oss-security] (linux-)distros list use statistics" (number mark "        solar@openwa Nov 13   30/1205  " thread-indent "\"Re: [oss-security] (linux-)distros list use statistics\"\n") "<5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>" ("<20171113151047.GA23493@openwall.com>" "<5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22150 invoked by uid 550); 13 Nov 2017 19:33:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21940 invoked from network); 13 Nov 2017 19:33:27 -0000
Message-ID: <20171113193304.GA27179@openwall.com>
References: <20171113151047.GA23493@openwall.com> <5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 13 Nov 2017 20:33:04 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] (linux-)distros list use statistics
To: oss-security@lists.openwall.com

On Mon, Nov 13, 2017 at 08:13:05PM +0100, Kristian Fiskerstrand wrote:
> As far as I'm aware I haven't gotten access to edit the wiki page for
> publishing it.

Please feel free to create a page like:

http://oss-security.openwall.org/wiki/mailing-lists/distros/stats

You don't need any special access for that.

> The wikified stats based on the generated DocuWiki output is available
> in very basic style at the testing instance:
> 
> https://wiki.sumptuouscapital.com/doku.php?id=distros_stats

Thank you, Kristian!

This lists two very long embargo periods for two Linux kernel issues: 96
days for CVE-2017-7533 and 28 days for CVE-2017-1000255.  While this is
useful info, it does not reflect (linux-)distros' lists performance as
it includes embargo periods from prior to disclosure to those lists.
Also, we can't reliably know of such prior embargo periods, so our data
would be inconsistent, which is especially bad for calculating averages.

I think for our statistics collection, we should primarily use embargo
periods since disclosure to (linux-)distros' lists, and secondarily
since the possibly earlier embargo start dates when known (like you did
now).  Can you add such data?

Alexander
