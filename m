X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2254" "Saturday" "11" "July" "2020" "19:58:42" "+0200" "Solar Designer" "solar@openwall.com" "<20200711175842.GA8907@openwall.com>" "34" "Re: [oss-security] Contributing Back" nil nil nil "7" "2020071117:58:42" "[oss-security] Contributing Back" (number mark "U       solar@openwa Jul 11   34/2254  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20123 invoked by uid 550); 11 Jul 2020 17:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19922 invoked from network); 11 Jul 2020 17:58:47 -0000
Date: Sat, 11 Jul 2020 19:58:42 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20200711175842.GA8907@openwall.com>
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Contributing Back

Hi Xiao,

On Thu, Jul 02, 2020 at 05:33:20PM +0800, Zhang Xiao wrote:
> I am an engineer of WindRiver. Thanks for Alexander's remind about the distribution and we would like to "backup" the first item of the administrative list:
> https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> 
> 1. Promptly review new issue reports for meeting the list's requirements and confirm receipt of the report and, when necessary, inform the reporter of any issues with their report (e.g., obviously not actionable by the distros) and request and/or propose any required yet missing information (most notably, a tentative public disclosure date/time) /- primary: Oracle, backup: vacant /
> Please let me know how we get started helping out.

I've just added Wind River as backup for this role.  Please watch for
issues on which Oracle (and others) haven't provided an initial response
to the reporter or where such response is incomplete (per the above),
and provide your own response (CC'ing the list) whenever that happens.

> And, I have another point want to discuss. As we know, sometimes, the CVE and NVD website don't upgrade their web page timely. For example:
> 
> the security maillist had an encrypted mail called "curl: overwrite local file with -J" in 20200617. It was a "pre-notification about a security advisory about to ship next week in sync with our next curl release", for CVE-2020-8177. On curl's git tree, that very bug did been fixed and released in 20200621:
> https://github.com/curl/curl/commit/8236aba5854
> 
> But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE as "RESERVED":
> https://nvd.nist.gov/vuln/detail/CVE-2020-8177
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8177
> 
> So I wonder if that is also an contribution to remind them, if so, any advises to make it? And If it ca be defined as an contribution, we can take it. :-)

We've received some responses in this thread regarding the specific
example above, but I'd like more general responses please.  Is there a
general task Wind River can reasonably help with for getting CVE details
published for issues that pass the distros and/or oss-security lists,
and how exactly could they help with that?

Thanks,

Alexander
