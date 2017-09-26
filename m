X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Tuesday" "26" "September" "2017" "09:01:10" "+0200" "Moritz Muehlenhoff" "jmm@debian.org" "<20170926070110.kf2vyzd7gsormsd5@pisco.westfalen.local>" "14" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092607:01:10" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        jmm@debian.o Sep 26   14/645   " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22450 invoked by uid 550); 26 Sep 2017 07:01:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22431 invoked from network); 26 Sep 2017 07:01:23 -0000
Message-ID: <20170926070110.kf2vyzd7gsormsd5@pisco.westfalen.local>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
User-Agent: NeoMutt/20170609 (1.8.3)
X-SA-Exim-Connect-IP: 93.199.237.47
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Date: Tue, 26 Sep 2017 09:01:10 +0200
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

Priedhorsky, Reid wrote:
> 1. Is oss-security’s coverage of security issues in open-source software intended to be comprehensive? If so, this appears not to be true for the Linux kernel.

No, it's not. oss-security is just another mailing list to report security vulnerabilities,
and not a canonical source.

> 2. Is there another source of comprehensive coverage of vulnerabilities in the Linux kernel, including but not necessarily limited to all CVEs issued for it?

This Debian repo has data on all public kernel vulnerabilities affecting
the mainline Linux kernel: https://anonscm.debian.org/viewvc/kernel-sec/

Cheers,
        Moritz
  
