X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Wednesday" "23" "February" "2022" "11:33:04" "+0000" "Simon McVittie" "smcv@debian.org" nil "14" "Re: [oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()" nil nil nil "2" nil nil (number mark "U       smcv@debian. Feb 23   14/635   " thread-indent "\"Re: [oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-44731: Race condition in snap-confine's setup_private_mount()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28441 invoked by uid 550); 23 Feb 2022 11:33:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28423 invoked from network); 23 Feb 2022 11:33:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=a1aS/4oEyy/4iCSwkVZsYJJn/6KRtX1jLiDLIJYLjM8=; b=jAwilC4iU+yW9MpCsk8UtaHW4l
	lezuhsJsp80YMK+1rCRDPnLt6U7v+/6wGDxiYxmLn2rwJkyK/88rHBGGIKnsLTAy6gEohYeUed74r
	E/m2AF8jsWOpcQAatdpAQYpG4VhbozZWczDYuWsWqsYXwvELd8WkMfOgf/Rev+Ds85S2UfcDXhgCx
	ZG2IYFJbGFL2QhxoIyyBRbctYOvE7PYk1slRqA+qSlrLj5aLtLT5nzpCYucd2Ph2dYwv/TmZEIYHP
	QlMJbSyMthTjgKh+4b7TTDeLsSNwfy5dv8/RMvGV6UTU3MnSTUQ6E5ER9NvyKg7i7avx3DENc+Vns
	eiZQghGA==;
Date: Wed, 23 Feb 2022 11:33:04 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YhYbcF7Iy9rwr3V5@momentum.pseudorandom.co.uk>
References: <20220217194634.GA6345@localhost.localdomain>
 <Mw_ZpdC--3-2@tuta.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Mw_ZpdC--3-2@tuta.io>
Subject: Re: [oss-security] CVE-2021-44731: Race condition in snap-confine's
 setup_private_mount()

On Wed, 23 Feb 2022 at 08:54:49 +0100, Wire Snark wrote:
> Why it isn't possible to copy the snap-confine binary into a directory
> for the same effect -- instead of hardlinking it?

If you copy a file you don't own, then the copy is owned by you, and has
permissions controlled by you: in particular, if you're not root, then the
copy can't be setuid root.

If you hard-link a file you don't own (which some kernel configurations
don't allow), then that filename points to the same inode as the original
filename, so it has the same ownership and permissions as the original file
(and in particular it's still setuid root).

    smcv
