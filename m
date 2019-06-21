X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1890" "Friday" "21" "June" "2019" "10:57:45" "+0100" "Simon McVittie" "smcv@debian.org" "<20190621095616.GA5186@espresso.pseudorandom.co.uk>" "36" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062109:57:45" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        smcv@debian. Jun 21   36/1890  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19586 invoked by uid 550); 21 Jun 2019 09:58:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19568 invoked from network); 21 Jun 2019 09:58:04 -0000
Message-ID: <20190621095616.GA5186@espresso.pseudorandom.co.uk>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615155740.GA2960@kroah.com>
 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 21 Jun 2019 10:57:45 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Fri, 21 Jun 2019 at 11:32:05 +0200, Yves-Alexis Perez wrote:
> I sympathize with this view, and I think we need to get better at updating,
> but I really think not all projects can be “safely” just updated to the latest
> version.

If upstream projects have a stable branch that is genuinely stable
and bugfix-only to minimize the risk of regressions, and encourage
downstream distributions to align on the latest stable branch during
their development phase, then I think that goes a long way towards this.
If I understand correctly, PostgreSQL is one of the canonical examples of
a project that does this, and gets its upstream point releases included
in stability-focused projects like Debian as-is.

I have tried to manage dbus like this, with all new APIs and new features
appearing only in the development branch, and the result is that the
Debian release and security teams have generally been willing to take
upstream stable releases within the same branch branch.

Of course, for this to work, the upstream project needs to build a
reputation for not introducing regressions or unnecessary changes in
stable branches, so that downstream distributors can trust them (which
will take a while if the upstream has a previous history of regressions,
unnecessary changes or poorly-labelled changes).

> And before reaching the end-user, some project latest versions might depend on
> a lot of “latest version” of other projects.

Yes, that's certainly a potential problem, and new non-optional
dependencies on a stable branch should usually be treated as a regression.
It's probably fine for a stable branch to have a new *optional*
dependency, like dbus >= 1.10.24 checking for Expat >= 2.1.0 and using
XML_SetHashSalt() if available - although even that can become a problem
if a binary distribution doesn't have symbol-level dependency tracking
like Debian does.

    smcv
