X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2029" "Monday" "13" "November" "2017" "22:22:11" "+0100" "Solar Designer" "solar@openwall.com" "<20171113212211.GA27512@openwall.com>" "47" "Re: [oss-security] (linux-)distros list use statistics" "^Date:" nil nil "11" "2017111321:22:11" "[oss-security] (linux-)distros list use statistics" (number mark "        solar@openwa Nov 13   47/2029  " thread-indent "\"Re: [oss-security] (linux-)distros list use statistics\"\n") "<750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>" ("<20171113151047.GA23493@openwall.com>" "<5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org>" "<20171113193304.GA27179@openwall.com>" "<750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11662 invoked by uid 550); 13 Nov 2017 21:23:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10023 invoked from network); 13 Nov 2017 21:22:29 -0000
Message-ID: <20171113212211.GA27512@openwall.com>
References: <20171113151047.GA23493@openwall.com> <5b4758f0-5e66-0851-5e25-6d3b946e05bc@gentoo.org> <20171113193304.GA27179@openwall.com> <750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <750bd9c8-a236-4149-ddfb-b8cc026b2935@gentoo.org>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 13 Nov 2017 22:22:11 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] (linux-)distros list use statistics
To: oss-security@lists.openwall.com

On Mon, Nov 13, 2017 at 08:38:59PM +0100, Kristian Fiskerstrand wrote:
> On 11/13/2017 08:33 PM, Solar Designer wrote:
> > This lists two very long embargo periods for two Linux kernel issues: 96
> > days for CVE-2017-7533 and 28 days for CVE-2017-1000255.  While this is
> > useful info, it does not reflect (linux-)distros' lists performance as
> > it includes embargo periods from prior to disclosure to those lists.
> > Also, we can't reliably know of such prior embargo periods, so our data
> > would be inconsistent, which is especially bad for calculating averages.
> 
> It is calculated from first report on distros list,

Oh, I must have guessed wrong.  I thought the long embargo periods were
correct and assumed that was because of inclusion of pre-distros time,
but according to what you're saying these are just two errors.

> that said, for
> CVE-2017-1000255 there was some missing data for first publication (it
> is public through
> https://access.redhat.com/security/cve/CVE-2017-1000255 and
> http://www.securityfocus.com/bid/101264 since 9th), so the publication
> time is 5.97 days (although not for oss-security posting).

Your statistics appear to suggest that it was public on oss-security
exactly 22 days later, but actually it was public on oss-security at
most a day later with:

http://www.openwall.com/lists/oss-security/2017/10/10/3

I guess you'll correct this.

If you ever notice an embargo period exceeding 14 days, please
investigate and either correct whatever error you might have or sound
the alarm.  This shouldn't be happening.  Thanks!

On Mon, Nov 13, 2017 at 08:42:49PM +0100, Kristian Fiskerstrand wrote:
> Page created:
> http://oss-security.openwall.org/wiki/mailing-lists/distros/stats

Thank you!  This currently shows some fields as empty, including but
not only for CVE-2017-1000255, where I think you could add the missing
info easily.  Please do.

Meanwhile, I've added a link from:

http://oss-security.openwall.org/wiki/mailing-lists/distros#list-usage-statistics

Alexander
