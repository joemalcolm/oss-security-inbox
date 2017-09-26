X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Tuesday" "26" "September" "2017" "07:55:56" "+0100" "Simon McVittie" "smcv@debian.org" "<20170926065556.irjryveao6xcjmds@perpetual.pseudorandom.co.uk>" "17" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092606:55:56" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        smcv@debian. Sep 26   17/715   " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9981 invoked by uid 550); 26 Sep 2017 06:56:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9963 invoked from network); 26 Sep 2017 06:56:31 -0000
Message-ID: <20170926065556.irjryveao6xcjmds@perpetual.pseudorandom.co.uk>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 26 Sep 2017 07:55:56 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Mon, 25 Sep 2017 at 21:50:59 +0000, Priedhorsky, Reid wrote:
> 2. Is there another source of comprehensive coverage of vulnerabilities
> in the Linux kernel, including but not necessarily limited to all CVEs
> issued for it?

https://security-tracker.debian.org/tracker/source-package/linux is
probably not comprehensive either, but should include all the
non-embargoed CVEs and other vulnerabilities that the Debian security team
is aware of, including vulnerabilities that were assessed as too minor
to justify a Debian security advisory.

(The same works for any other Debian source package, e.g.
https://security-tracker.debian.org/tracker/source-package/ioquake3 is
a less extreme case.)

Regards,
    smcv
