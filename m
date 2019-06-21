X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["988" "Friday" "21" "June" "2019" "08:08:36" "-0700" "Ian Zimmerman" "itz@very.loosely.org" "<20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>" "20" "[oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062115:08:36" "[oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        itz@very.loo Jun 21   20/988   " thread-indent "\"[oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190621095616.GA5186@espresso.pseudorandom.co.uk>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" "<20190621095616.GA5186@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "[oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5252 invoked by uid 550); 21 Jun 2019 15:08:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5231 invoked from network); 21 Jun 2019 15:08:54 -0000
Message-ID: <20190621150836.ieiciui3n6vrd5wb@matica.foolinux.mooo.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615155740.GA2960@kroah.com>
 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
 <20190621095616.GA5186@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190621095616.GA5186@espresso.pseudorandom.co.uk>
User-Agent: NeoMutt/20180716
X-Loosely-ASN: 7922
Date: Fri, 21 Jun 2019 08:08:36 -0700
From: Ian Zimmerman <itz@very.loosely.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On 2019-06-21 10:57, Simon McVittie wrote:

> If upstream projects have a stable branch that is genuinely stable
> and bugfix-only to minimize the risk of regressions, and encourage
> downstream distributions to align on the latest stable branch during
> their development phase, then I think that goes a long way towards this.
> If I understand correctly, PostgreSQL is one of the canonical examples of
> a project that does this, and gets its upstream point releases included
> in stability-focused projects like Debian as-is.

Doesn't this simply shift the work of backporting ("crazy and bound to
always fail in the end") from the distro maintainer to the upstream
stable branch maintainer?  He/she is more like "midstream" working in
that role.

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet and on broken lists
which rewrite From, fetch the TXT record for no-use.mooo.com.
