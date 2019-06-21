X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1053" "Saturday" "22" "June" "2019" "00:05:02" "+0200" "Moritz Muehlenhoff" "jmm@inutil.org" "<20190621220502.aubbgwqvos6mvlz2@inutil.org>" "32" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062122:05:02" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        jmm@inutil.o Jun 22   32/1053  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190621095616.GA5186@espresso.pseudorandom.co.uk>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615155740.GA2960@kroah.com>" "<02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>" "<20190621095616.GA5186@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5220 invoked by uid 550); 21 Jun 2019 22:05:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5202 invoked from network); 21 Jun 2019 22:05:14 -0000
Message-ID: <20190621220502.aubbgwqvos6mvlz2@inutil.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190615155740.GA2960@kroah.com>
 <02594cdc8ff7c6ff19a3042d824fb27f9d3302c3.camel@debian.org>
 <20190621095616.GA5186@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190621095616.GA5186@espresso.pseudorandom.co.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Sat, 22 Jun 2019 00:05:02 +0200
From: Moritz Muehlenhoff <jmm@inutil.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

Simon McVittie wrote:
> If upstream projects have a stable branch that is genuinely stable
> and bugfix-only to minimize the risk of regressions, and encourage
> downstream distributions to align on the latest stable branch during
> their development phase, then I think that goes a long way towards this.
> If I understand correctly, PostgreSQL is one of the canonical examples of
> a project that does this, and gets its upstream point releases included
> in stability-focused projects like Debian as-is.

Exactly, other examples where Debian ships upstream stable branches
when updating a stable/oldstable release (via security.debian.org or
point releases) out of the top of my head are:

- ffmpeg
- Firefox ESR
- Linux (follows upstream LTS branches)
- MariaDB
- Mediawiki
- OpenJDK
- OpenSSL
- PHP
- Thunderbird ESR
- VLC
- Wireshark
- Xen

It has served us very well overall and it's considered on a case-by-case
basis; e.g. whether upstream releases in those long term branches are
sufficiently vetted/regression-tested.

Cheers,
        Moritz
