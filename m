X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Monday" "24" "June" "2019" "13:00:28" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "38" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062417:00:28" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        dwheeler@dwh Jun 24   38/1826  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27748 invoked by uid 550); 24 Jun 2019 17:00:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27730 invoked from network); 24 Jun 2019 17:00:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
In-Reply-To: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
Message-Id: <E1hfSKS-00015J-V5@rmmprod07.runbox>
Date: Mon, 24 Jun 2019 13:00:28 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: "oss-security" <oss-security@lists.openwall.com>

> On Mon, 24 Jun 2019, Bob Friesenhahn wrote:
> > Most oss-fuzz issue detections are not CVE worthy.  For example, a one-=
byte=20
> > read "heap overflow" is not likely to cause any actual harm but oss-fuz=
z=20
> > would classify it as "heap overflow".

On Mon, 24 Jun 2019 11:59:43 -0400 (EDT), "Stuart D. Gathman" <stuart@gathm=
an.org> wrote:
> Nevertheless, it is a bug.  Fuzzers are amazing.  Going forward, the
> best plan is for more projects to include fuzzing as part of the
> build process testing.

It is a bug, fuzzers are amazing, and more projects should include fuzzing.

But CVEs are supposed to only be assigned to vulnerabilities or exposures.
Many bugs are not vulnerabilities or exposures that lead to vulnerabilities.

If a bug *is* a vulnerability, then yes, it should have a CVE assignment,
and there are clearly a lot of vulnerabilities without CVE assignments.

In particular, many organizations have a rapid upgrade process
if some software version has a CVE, and a slow process otherwise.
(There are things that need doing besides upgrading software.)
If a particular version of software has a serious vulnerability, it needs a=
t least one
of the most serious vulnerabilities assigned a CVE so that people will upgr=
ade
it more rapidly.  In the end, the goal should be to get software fixed
*and* deployed - if it's not deployed when it needs to be, it didn't help.
Downstream needs to do their part by being prepared to upgrade... but
suppliers need to make it clear why something needs to be upgraded quickly
(if that's the case) so that the faster process will be used.
We should be focusing on the "final impact", that is,
we should be trying to reduce the cases where an attacker can exploit
a known vulnerability in deployed software... *without* breaking the bank.

--- David A. Wheeler=
