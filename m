X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1313" "Friday" "26" "July" "2019" "13:07:44" "+0200" "Solar Designer" "solar@openwall.com" "<20190726110743.GA20519@openwall.com>" "29" "Re: [oss-security] Statistics for distros lists updated for 2019Q2" nil nil nil "7" "2019072611:07:44" "[oss-security] Statistics for distros lists updated for 2019Q2" (number mark "U       solar@openwa Jul 26   29/1313  " thread-indent "\"Re: [oss-security] Statistics for distros lists updated for 2019Q2\"\n") "<fb798362-44b7-b673-6551-60af4cb48d70@gentoo.org>" ("<3f0c3f11-4b6d-8c61-b527-306cbb76639f@gentoo.org>" "<20190725192324.GA17297@openwall.com>" "<d576c29f-32ca-bd1f-a0e8-5558774e52c6@gentoo.org>" "<20190726081641.GA18818@openwall.com>" "<fb798362-44b7-b673-6551-60af4cb48d70@gentoo.org>") nil nil nil nil nil nil nil "Re: [oss-security] Statistics for distros lists updated for 2019Q2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32047 invoked by uid 550); 26 Jul 2019 11:08:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30425 invoked from network); 26 Jul 2019 11:07:48 -0000
Date: Fri, 26 Jul 2019 13:07:44 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20190726110743.GA20519@openwall.com>
References: <3f0c3f11-4b6d-8c61-b527-306cbb76639f@gentoo.org> <20190725192324.GA17297@openwall.com> <d576c29f-32ca-bd1f-a0e8-5558774e52c6@gentoo.org> <20190726081641.GA18818@openwall.com> <fb798362-44b7-b673-6551-60af4cb48d70@gentoo.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb798362-44b7-b673-6551-60af4cb48d70@gentoo.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Statistics for distros lists updated for 2019Q2

On Fri, Jul 26, 2019 at 12:25:47PM +0200, Kristian Fiskerstrand wrote:
> On 26.07.2019 10:16, Solar Designer wrote:
> > Now you have updated stats, but you've dropped all of the detail. :-(
> > Please re-add it ASAP.
> 
> Woops, had indeed overwritten wrong CSV file. Fixed :)

Thanks!

There's also Apache httpd CVE-2019-0211, which was first posted to
oss-security and then (wrongly) brought to distros.  You list it with
negative embargo period of -0.24 days, which technically makes sense,
but it probably skews the averages, which are meant to be for actual
embargoes.  Even if we set it to zero, it'd continue to skew the
averages.  So we should probably consistently exclude non-positive
embargo periods from the calculation of averages.  Will you, please?

This brings up and leaves open the question of what to do with very
short embargo periods like a few hours.  My suggestion is that we
continue to include them in the averages, but also add calculation and
reporting of median embargo times (also excluding just the non-positive
embargo periods from the calculation of the medians).  Can you do it,
please?

The non-positive embargo periods should probably continue to be listed
in the detail table, but a (foot)note should be added explaining that
they're excluded from the calculations.

Alexander
