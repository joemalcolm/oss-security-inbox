Received: (qmail 11576 invoked by uid 550); 4 May 2023 20:51:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11557 invoked from network); 4 May 2023 20:51:14 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Thu, 4 May 2023 16:50:53 -0400
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
 <66e0470c0fcead1656316f51e560586d9411afe3.camel@sambull.org>
 <CAMZuV15xa4hH1TTd_ToPzEi55W04yzoMckiPnE_CtRtqoPYLxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAMZuV15xa4hH1TTd_ToPzEi55W04yzoMckiPnE_CtRtqoPYLxQ@mail.gmail.com>
Message-Id: <C2F1E269-0FD7-45A2-A0E1-F1AC29383C09@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules


> On May 4, 2023, at 2:23 PM, Rainer Canavan <rainer.canavan@avenga.com> wr=
ote:
> I'd suspect that the issue in
> HTTP::Tiny would end up DISPUTED, since not validating TLS names is
> not the generally expected behavior, although it is documented (in
> bold no less).

I would also expect it to be at most disputed, not rejected.
As Jeffry Walton noted, failing to validate a certificate is considered
by many to be a vulnerability, there's even a specific CWE for this case:
https://cwe.mitre.org/data/definitions/295.html

Per the OP:

> On Apr 18, 2023, at 11:46 AM, Stig Palmquist <stig@stig.io> wrote:
> ... We have generated a list of over 300 potentially affected
> CPAN distributions.

A default that potentially causes over 300 other vulnerabilities sounds like
a root cause vulnerability to me. Clearly many users do *not* treat this as=
 expected behavior.
A change of the default would, for many, produce the expected behavior.

--- David A. Wheeler

