X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2381" "Monday" "20" "July" "2020" "20:40:54" "+0200" "Solar Designer" "solar@openwall.com" "<20200720184054.GA11135@openwall.com>" "38" "Re: [oss-security] Contributing Back" "^Date:" nil nil "7" "2020072018:40:54" "[oss-security] Contributing Back" (number mark "U       solar@openwa Jul 20   38/2381  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" "<20200711175842.GA8907@openwall.com>" "<3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23657 invoked by uid 550); 20 Jul 2020 18:42:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23555 invoked from network); 20 Jul 2020 18:41:48 -0000
Message-ID: <20200720184054.GA11135@openwall.com>
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com> <20200711175842.GA8907@openwall.com> <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3f3d2ab5-259b-ab88-c7e4-7cc0efce3e7c@windriver.com>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 20 Jul 2020 20:40:54 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com

On Mon, Jul 13, 2020 at 03:37:03PM +0800, Zhang Xiao wrote:
> ??? 2020/7/12 ??????1:58, Solar Designer ??????:
> > On Thu, Jul 02, 2020 at 05:33:20PM +0800, Zhang Xiao wrote:
> >> And, I have another point want to discuss. As we know, sometimes, the CVE and NVD website don't upgrade their web page timely. For example:
> >>
> >> the security maillist had an encrypted mail called "curl: overwrite local file with -J" in 20200617. It was a "pre-notification about a security advisory about to ship next week in sync with our next curl release", for CVE-2020-8177. On curl's git tree, that very bug did been fixed and released in 20200621:
> >> https://github.com/curl/curl/commit/8236aba5854
> >>
> >> But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE as "RESERVED":
> >> https://nvd.nist.gov/vuln/detail/CVE-2020-8177
> >> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8177
> >>
> >> So I wonder if that is also an contribution to remind them, if so, any advises to make it? And If it ca be defined as an contribution, we can take it. :-)
> > We've received some responses in this thread regarding the specific
> > example above, but I'd like more general responses please.  Is there a
> > general task Wind River can reasonably help with for getting CVE details
> > published for issues that pass the distros and/or oss-security lists,
> > and how exactly could they help with that?
> 
> Actually, we are glad to make it for some customers are also pay
> attention on these official web pages. We suppose it will be easy to
> make it through the "notify a vulnerability publication
> <https://cveform.mitre.org/>". But after I submitted the request I just
> get a reply as "This CVE ID has been reserved by the CNA Hackerone and
> we are currently waiting on them to submit the details." Seems only "the
> CNA Hackerone" can make it. I have no idea on how to notify the "the CNA
> Hackerone " to push it. :-(š Anyway, if possible we are glad to make it.

Once again, I think CVE-2020-8177 is more of an exception than the rule.
I would be more interested in comments by "CVE experts" on whether the
task Xiao proposes and volunteers for is in general worthwhile or not,
and why.  Would similar "notify a vulnerability publication" reminders
be desirable for issues that got the CVE IDs from one of the CNAs on the
distros list?

Thanks,

Alexander
