Received: (qmail 7784 invoked by uid 550); 14 Feb 2025 14:42:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31772 invoked from network); 14 Feb 2025 10:14:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aevum.de; s=mail;
	t=1739528079; bh=tmK32rNMl2xHD2LyKqLDuGx3uoRwIdVHVQolZXhAkkg=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=P5o09Je8bPtZNmXKH8LvwYreLnC3SRTOnQ/MZB5WKaBnHHSIbCtZgn7je8iPn68MZ
	 3t8xStytPeRaV+VU1nBui6fJQu86AfCqrqDfX+xsVDdZrLfw2VpcFPQPo75RY+oSy5
	 bBeD7ERdGqUoIyFSI95ThZq1syzzyHoEgiOxBNkw=
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
From: Nick Wellnhofer <wellnhofer@aevum.de>
In-Reply-To: <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
Date: Fri, 14 Feb 2025 11:14:28 +0100
Cc: oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <E3B21524-35E5-470E-811A-E1083454B56E@aevum.de>
References: <20250213171546.GA3976@brightrain.aerifal.cx>
 <CAFdMc-1uX4X1HNrR-hj0iGASCfRL6PfVdNsynOs4BdoS+QrGSw@mail.gmail.com>
To: musl@lists.openwall.com,
 danielgutson@gmail.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
Subject: [oss-security] Re: [musl] CVE-2025-26519: musl libc: input-controlled out-of-bounds
 write primitive in iconv()

On Feb 13, 2025, at 23:28, Daniel Gutson <danielgutson@gmail.com> wrote:
>=20
> Curious: is there any info about how this was discovered?

The bug was discovered with basic fuzz testing. As libxml2 maintainer, I fo=
und more and more issues in various iconv implementations by accident which=
 is a strong indicator that all this code isn't tested enough. The iconv AP=
I is also trivial to fuzz, so it seemed like a nice weekend project.

Nick

