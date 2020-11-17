X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1488" "Tuesday" "17" "November" "2020" "11:35:21" "+0100" "Morten Linderud" "foxboron@archlinux.org" "<20201117103521.3m5bpqtcbpeuirpg@anathema>" "35" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111710:35:21" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       foxboron@arc Nov 17   35/1488  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<87eekt9l5k.fsf@gnu.org>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" "<87eekt9l5k.fsf@gnu.org>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25872 invoked by uid 550); 17 Nov 2020 11:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15526 invoked from network); 17 Nov 2020 10:35:36 -0000
Authentication-Results: linderud.pw; dkim=none; dkim-atps=neutral
Date: Tue, 17 Nov 2020 11:35:21 +0100
From: Morten Linderud <foxboron@archlinux.org>
To: oss-security@lists.openwall.com
Cc: "David A. Wheeler" <dwheeler@dwheeler.com>
Message-ID: <20201117103521.3m5bpqtcbpeuirpg@anathema>
References: <20201113133331.48185f9f@computer>
 <20201114115850.GB5193@suse.de>
 <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
 <87eekt9l5k.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87eekt9l5k.fsf@gnu.org>
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

On Mon, Nov 16, 2020 at 08:06:15PM +0100, Marius Bakke wrote:
> I tried following the CVE assignment RSS feed initially, but it was not
> suitable for human consumption.
> 
> How do other distros keep up with new CVE assignments?

Depends. Commercial distributions like Ubuntu, SUSE or RedHat keeps up mostly(?)
fine by throwing money on the problem. The story is very different on volunteer
distributions.

Arch Linux is unable to keep up.

Consuming the CVE feeds in any structured way takes quite a bit of effort, and
then you need the manpower to wade through the assignments. Even if you did
manage to do all this, there might not be a clear reference of the fix in
question. For all you know the assigned CVE is only for the vulnerability and
there is no fix written yet. You simply do not know.

For Arch Linux it's a manpower problem handling the CVEs and writing advisories
for the published packages, along with things sometimes not being very easy to
fix for package maintainers. It is very much a best effort basis.

Severe issues gets handled in a timely fashion, but it always depends on the
time available of the volunteers.

I think a lot can be solved with information sharing and better tooling. There
was an attempt to have an shared IRC channel for distribution security teams,
and I think initiatives like the OpenSSF vulnerability disclosure WG are
important for this.

https://github.com/ossf/wg-vulnerability-disclosures

-- 
Morten Linderud
PGP: 9C02FF419FECBE16
