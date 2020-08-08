X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2456" "Saturday" "8" "August" "2020" "15:21:35" "+0200" "Solar Designer" "solar@openwall.com" "<20200808132134.GA22611@openwall.com>" "44" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" "^Cc:" nil nil "8" "2020080813:21:35" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "        solar@openwa Aug  8   44/2456  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>" ("<1596799898.GKATVRZF@httpd.apache.org>" "<20200807125434.GA18666@openwall.com>" "<3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28069 invoked by uid 550); 8 Aug 2020 13:22:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27785 invoked from network); 8 Aug 2020 13:21:39 -0000
Message-ID: <20200808132134.GA22611@openwall.com>
References: <1596799898.GKATVRZF@httpd.apache.org> <20200807125434.GA18666@openwall.com> <3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com,
	HTTPD Security <security@httpd.apache.org>
Date: Sat, 8 Aug 2020 15:21:35 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow
To: Daniel Ruggeri <druggeri@apache.org>

On Sat, Aug 08, 2020 at 07:02:21AM -0500, Daniel Ruggeri wrote:
> As you can
> imagine, with such a strong downstream community from our releases, we
> try to be careful so as to not place too much information in the
> descriptions to make it trivial to exploit vulnerabilities before those
> downstream packagers can incorporate fixes.

No, I couldn't have imagined that a well-established Open Source project
like Apache httpd would still use this flawed practice of 20+ years ago.

The current practice is to include all information that is helpful to
address the issue, including by downstream packagers, who in many cases
will need to do backports rather than merely update to a new release.

By deliberately withholding information as a standard practice, you hurt
not only those who would exploit the vulnerabilities, but also (and even
more certainly) those who would fix them.

It'd have to be some rare special case with specific reasoning to decide
on temporarily withholding anything from an otherwise public disclosure,
and then you'd need to have a specific plan on disclosing the rest on a
specific date (ideally pre-announced).  For example, this can be done to
separate the disclosure of full vulnerability and fix detail (sufficient
for backports) vs. publication of an exploit by a week, like e.g. Qualys
has done on some recent occasions where exploitation was not trivial.
If you're not planning on publishing exploitation techniques, there's
usually nothing you can reasonably withhold from the initial disclosure.

If you do want to reduce the window of exposure, there are ways to give
your downstream packagers a few days (and ideally no more than that) to
incorporate the fixes privately before you disclose the issues publicly.
We host the distros list for this, and you may also contact some of your
other downstreams separately.  I am not saying you should be doing that,
but rather I am saying that if you're not doing it (which is fine), then
you shouldn't try to make your public disclosures cryptic as a way to
compensate for that.  I think it doesn't have a net positive effect.

So my suggestion is that for most issues you just disclose everything
publicly right away, and for occasional highest-severity issues you
notify some of your downstreams in private first (unfortunately, no way
to notify all without making the issue public) and give them just a
little time before you disclose everything publicly.

Alexander
