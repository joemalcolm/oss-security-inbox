X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2665" "Tuesday" "21" "April" "2020" "19:47:47" "+0100" "Simon McVittie" "smcv@debian.org" "<20200421184747.GA93069@espresso.pseudorandom.co.uk>" "51" "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil "4" "2020042118:47:47" "[oss-security] Pacman package manager - taking untrusted input" (number mark "U       smcv@debian. Apr 21   51/2665  " thread-indent "\"Re: [oss-security] Pacman package manager - taking untrusted input\"\n") "<RrVCUf0UYM4S99v51o8A6lAatx04FP2OR23b5CU8yUASHP5KYo_uzDUGevjvZdhYY8QxFFH190BQOw-r2TG7neN7NOkiAyixvsVOzwCpcs8=@protonmail.com>" nil nil nil nil nil nil nil nil "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25802 invoked by uid 550); 21 Apr 2020 18:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25777 invoked from network); 21 Apr 2020 18:48:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:References;
	bh=B21xfIvp8mrNDNMnF21TeJ75ZUtqHkYk9QXGPUkcN7Y=; b=stz7QsjK6MOZSVx3tSj3JcD+61
	uEi2TaWxoib/Xn+s9mOvQ0tU0Z/hIcfmdTlaV33Ke/xdM1yCDTggV4kmQwY0dn+sKw6CbQQREv6T0
	K5AEEWoNWk6l069kLB52uIh7TZLbA/Qp97LDJmuUyObnXKxzNBRWuLz4S2kpn1bg7nHuCaCNAiXQD
	yp70HMEe/AN+HURtxbJMn4meg39/6sml8BQmieUD2+fwx1jj3yaZaNJ0yhYI2gv0C7MhhYNZ7vbug
	HawhC5aoswV7bcJuq1DOWGYCG0bQZm47Nua7OTlxA3p4q/JijsposhdHPDwzmRbDyK/Xp+3B1iHY8
	/IQ+YjVA==;
Date: Tue, 21 Apr 2020 19:47:47 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: "info@aminvakil.com" <info@aminvakil.com>
Message-ID: <20200421184747.GA93069@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <RrVCUf0UYM4S99v51o8A6lAatx04FP2OR23b5CU8yUASHP5KYo_uzDUGevjvZdhYY8QxFFH190BQOw-r2TG7neN7NOkiAyixvsVOzwCpcs8=@protonmail.com>
 <5b8fe86a-56e8-715a-1f0d-a4961e516fc2@aminvakil.com>
Subject: Re: [oss-security] Pacman package manager - taking untrusted input

On Tue, 21 Apr 2020 at 21:51:56 +0430, Amin Vakil wrote:
> On 4/21/20 8:57 PM, jellicent@protonmail.com wrote:
> > The code supports database signatures, so the real issue is the distro
> > infrastructure.

I interpret this as: pacman can accept either signed or unsigned
databases, but the various distros that use pacman (such as Arch Linux)
currently only publish unsigned databases in practice. Is that correct?

Can pacman be configured to *only* accept signed databases, so that a
mirror containing an unverifiable database (unsigned, signed with a key
that is not explicitly trusted, or with an invalid signature) is treated
as an error? If it cannot, then there's an obvious downgrade attack:
a malicious mirror could substitute an unsigned database and the pacman
client would happily use that.

On Tue, 21 Apr 2020 at 17:41:42 +0000, jellicent@protonmail.com wrote:
> An attacker need only find a bug in how Pacman does
> parsing/reading of the database file to potentially get code execution
> on the box as root.

My understanding is that this is a risk, and at least arguably a design
flaw, but not generally considered to be a vulnerability (CVE IDs,
etc.) unless/until an unfixed parser bug with the necessary severity
is found.

Of course, that doesn't mean it wouldn't be a good idea to authenticate
the database before parsing it: that would mitigate a lot of potential
vulnerabilities.

Something that might be considered to be a vulnerability already (or not,
depending on the pacman and distro maintainers' threat models) is that
an attacker could substitute a database that lists obsolete packages
with known vulnerabilities. Those packages will presumably be validly
signed by distro developers (because at one time they were considered
to be the best version available). Presumably pacman won't normally
downgrade from the version it has installed to a strictly older version
from a mirror, but if a user installs a new (not currently installed)
package using that mirror/database, they'll unknowingly be installing
an older package that has known vulnerabilities.

That form of attack is difficult to address in general, because it needs
a revocation or expiry mechanism. apt-based distros are starting to
address equivalent issues by setting a Valid-Until field on their archive
metadata, so that clients will warn their user if presented with outdated
archive metadata (the equivalent of pacman's database) - although this is
somewhat awkward to deploy, because it requires a signing key to be
made available on a regular basis, which conflicts with the idea that
high-value signing keys should be kept offline when not in use.

    smcv
