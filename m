X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1648" "Monday" "22" "July" "2019" "13:50:09" "+0200" "Solar Designer" "solar@openwall.com" "<20190722115009.GA4117@openwall.com>" "45" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" "^Date:" nil nil "7" "2019072211:50:09" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "        solar@openwa Jul 22   45/1648  " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<20190722112953.GT67124@symphytum.spacehopper.org>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>" "<20190722112953.GT67124@symphytum.spacehopper.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7872 invoked by uid 550); 22 Jul 2019 11:51:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3871 invoked from network); 22 Jul 2019 11:50:55 -0000
Message-ID: <20190722115009.GA4117@openwall.com>
References: <20190722100013.GJ1168@jumper.schlittermann.de> <20190722112146.z4ey7777h5zci2zl@local> <20190722112953.GT67124@symphytum.spacehopper.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722112953.GT67124@symphytum.spacehopper.org>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 22 Jul 2019 13:50:09 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead
To: oss-security@lists.openwall.com

On Mon, Jul 22, 2019 at 12:29:53PM +0100, Stuart Henderson wrote:
> On 2019/07/22 11:21, Mikhail Klementev wrote:
> > Kindly notice that this is a public mail list.
> 
> The sender is clearly aware of this, see the timeline.

Exactly.  It's just an unusual disclosure process that involves giving
the users a heads-up a few days before public disclosure of the actual
vulnerabilities and fixes.  So far, this process is practiced by OpenSSL
and Exim (any others?)

Unfortunately, this keeps confusing people, which is why this time
Heiko's message starts with "Note: EMBARGO is still in effect".  Judging
by Mikhail's reply, this wasn't good enough to avoid confusion, and I
don't know what would be - maybe a paragraph of text acknowledging that
the disclosure process is unusual?  Somehow I didn't notice such
confusion in response to OpenSSL's pre-announcements (not here, but on
their own announce list), so maybe Exim should try to reuse OpenSSL's
wording.  Here's an example:

https://mta.openssl.org/pipermail/openssl-announce/2019-February/000145.html

---
Subject: Forthcoming OpenSSL Releases
Date: Tue, 19 Feb 2019 16:10:20 +0000

The OpenSSL project team would like to announce the forthcoming release
of OpenSSL versions 1.1.1b and 1.0.2r. There will be no new 1.1.0 release at
this time.

These releases will be made available on 26th February 2019 between
approximately 1300-1700 UTC.

OpenSSL 1.0.2r is a security-fix release. The highest severity issue fixed in
this release is MODERATE:
https://www.openssl.org/policies/secpolicy.html#moderate

OpenSSL 1.1.1b is a bug-fix release.

Yours

The OpenSSL Project Team
---

Alexander
