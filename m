X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Thursday" "21" "January" "2021" "19:13:13" "+0000" "Simon McVittie" "smcv@debian.org" "<YAnSSXu4Kpq6Avco@espresso.pseudorandom.co.uk>" "18" "[oss-security] CVE-2021-21261: Flatpak sandbox escape via spawn portal (aka GHSA-4ppf-fxf6-vxg2)" nil nil nil "1" "2021012119:13:13" "[oss-security] CVE-2021-21261: Flatpak sandbox escape via spawn portal (aka GHSA-4ppf-fxf6-vxg2)" (number mark "U       smcv@debian. Jan 21   18/784   " thread-indent "\"[oss-security] CVE-2021-21261: Flatpak sandbox escape via spawn portal (aka GHSA-4ppf-fxf6-vxg2)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-21261: Flatpak sandbox escape via spawn portal (aka GHSA-4ppf-fxf6-vxg2)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26210 invoked by uid 550); 21 Jan 2021 19:13:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26186 invoked from network); 21 Jan 2021 19:13:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=poQDsUvhIiMWOA3AOp2Sx2u2V4P/AH/QQfskU5yzK7s=; b=fg
	2gYZtlIfkDVZSbik72vjzINpSqL7YZGPgjDhbveN6ArGOQHrFLThYm+5GrgPGSgg8R9T0/kMDMEc0
	EqVTlU109CZhiv+P148b9VawM5HnbZWNse9XgWUgnQAoRHlRp9gS2Nt7zE0b2EMfOre6SeS3ZSNVo
	WbBec2ps6okBDHOdILj5HY1mmClg++n5g5xHXazNes/Yu53t2DZMmFd+bl1eKUsb4czD/+IyVGNCb
	5RVVNEuyHHR5ghJr2HzLXUp+S9XT5XjdiWKKqcafMx42p7EzXmfn/5WtjHp6aSAcMXiGY03mnXNW6
	O+sc0qll7OXuexnMyc7FM1oqq9HEUuTw==;
Date: Thu, 21 Jan 2021 19:13:13 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YAnSSXu4Kpq6Avco@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2021-21261: Flatpak sandbox escape via spawn portal (aka
 GHSA-4ppf-fxf6-vxg2)

Affected versions: flatpak >= 0.11.4
Fixed versions: flatpak >= 1.10.0, and 1.8.x >= 1.8.5

Flatpak is a system for building, distributing, and running sandboxed
desktop applications on Linux.

I discovered a bug in the flatpak-portal service that can allow sandboxed
applications to execute arbitrary code on the host system (a sandbox
escape). This is fixed in 1.10.0 and 1.8.5.

The initial fixed versions introduced a regression for users of
'flatpak build' on systems where a setuid version of bubblewrap (bwrap)
is required. Version 1.10.1 additionally resolves the regression. The
regression fix has been backported to the flatpak-1.8.x branch but is
not currently in any 1.8.x release.

More details:
https://github.com/flatpak/flatpak/security/advisories/GHSA-4ppf-fxf6-vxg2
