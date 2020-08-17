X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3275" "Monday" "17" "August" "2020" "10:12:44" "+0100" "Joe Orton" "jorton@apache.org" "<20200817091244.GA26618@redhat.com>" "58" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" "^Cc:" nil nil "8" "2020081709:12:44" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       jorton@apach Aug 17   58/3275  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<20200808132134.GA22611@openwall.com>" ("<1596799898.GKATVRZF@httpd.apache.org>" "<20200807125434.GA18666@openwall.com>" "<3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>" "<20200808132134.GA22611@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19945 invoked by uid 550); 17 Aug 2020 18:22:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21913 invoked from network); 17 Aug 2020 09:12:58 -0000
Message-ID: <20200817091244.GA26618@redhat.com>
Mail-Followup-To: Solar Designer <solar@openwall.com>,
	Daniel Ruggeri <druggeri@apache.org>,
	oss-security@lists.openwall.com,
	HTTPD Security <security@httpd.apache.org>
References: <1596799898.GKATVRZF@httpd.apache.org>
 <20200807125434.GA18666@openwall.com>
 <3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>
 <20200808132134.GA22611@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200808132134.GA22611@openwall.com>
Cc: Daniel Ruggeri <druggeri@apache.org>, oss-security@lists.openwall.com,
	HTTPD Security <security@httpd.apache.org>
Date: Mon, 17 Aug 2020 10:12:44 +0100
From: Joe Orton <jorton@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer
 overlow
To: Solar Designer <solar@openwall.com>

The only point where we deliberately obscure anything is by avoiding 
disclosure in commits prior to release.  This follows the standard ASF 
security policy https://www.apache.org/security/committers.html - see 
step 12.  (I also find this very distateful, to the point where it puts 
me off spending time on security@httpd stuff)

That we don't reference specific revisions in the public data once 
disclosed with a release is really only habit, we have never done it 
before but there is no reason why we can't.  We do sometimes go back and 
modify the revision commit messages to reference the CVE names, but it 
requires somebody spending the time to do it.

On Sat, Aug 08, 2020 at 03:21:35PM +0200, Solar Designer wrote:
> On Sat, Aug 08, 2020 at 07:02:21AM -0500, Daniel Ruggeri wrote:
> > As you can
> > imagine, with such a strong downstream community from our releases, we
> > try to be careful so as to not place too much information in the
> > descriptions to make it trivial to exploit vulnerabilities before those
> > downstream packagers can incorporate fixes.
> 
> No, I couldn't have imagined that a well-established Open Source project
> like Apache httpd would still use this flawed practice of 20+ years ago.
> 
> The current practice is to include all information that is helpful to
> address the issue, including by downstream packagers, who in many cases
> will need to do backports rather than merely update to a new release.
> 
> By deliberately withholding information as a standard practice, you hurt
> not only those who would exploit the vulnerabilities, but also (and even
> more certainly) those who would fix them.
> 
> It'd have to be some rare special case with specific reasoning to decide
> on temporarily withholding anything from an otherwise public disclosure,
> and then you'd need to have a specific plan on disclosing the rest on a
> specific date (ideally pre-announced).  For example, this can be done to
> separate the disclosure of full vulnerability and fix detail (sufficient
> for backports) vs. publication of an exploit by a week, like e.g. Qualys
> has done on some recent occasions where exploitation was not trivial.
> If you're not planning on publishing exploitation techniques, there's
> usually nothing you can reasonably withhold from the initial disclosure.
> 
> If you do want to reduce the window of exposure, there are ways to give
> your downstream packagers a few days (and ideally no more than that) to
> incorporate the fixes privately before you disclose the issues publicly.
> We host the distros list for this, and you may also contact some of your
> other downstreams separately.  I am not saying you should be doing that,
> but rather I am saying that if you're not doing it (which is fine), then
> you shouldn't try to make your public disclosures cryptic as a way to
> compensate for that.  I think it doesn't have a net positive effect.
> 
> So my suggestion is that for most issues you just disclose everything
> publicly right away, and for occasional highest-severity issues you
> notify some of your downstreams in private first (unfortunately, no way
> to notify all without making the issue public) and give them just a
> little time before you disclose everything publicly.
> 
> Alexander
> 
