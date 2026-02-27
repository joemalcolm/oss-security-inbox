Received: (qmail 18233 invoked by uid 550); 27 Feb 2026 16:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31762 invoked from network); 27 Feb 2026 12:10:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=RX9qy/yGllKHwddTknVtpwP5vZBoZBXk4293+P+OAiM=; b=0nXaWV4elirtHLXoJH2ofdU3lp
	TM8jeynYElxf2T1estzlfnktEzTwjgKn1x5aH1pM8sPlUxcWjUaMh3tCFSK2yptwlmxA02+SPw+Bv
	LT+Au9epdxO2cn1href2baikbhzUll9gr9jSbWYT7UFgJapPrHQrtKEqbNS9AKYz3jwS5riC4SSpm
	6J5FzuKQOPQpWx99osHX2QXKGzKBEtULCHjdX+e65EeoDHBUhIAYoIqks+z/PM74pq8/ptu6yfVjX
	PSTZ0iYLSdQ1jM1s2ydII4hyRSNyv84UQ1xyWNc6roorG+FQyWPDF0mUn8DYHRU/EXxQ03h4I/WTq
	bLdassZw==;
Date: Fri, 27 Feb 2026 13:09:57 +0100
From: Guillem Jover <guillem@debian.org>
To: Ron Ben Yizhak <ron.benyizhak@safebreach.com>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, bug-inetutils@gnu.org,
	oss-security@lists.openwall.com, simon@josefsson.org,
	auerswal@unix-ag.uni-kl.de,
	Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <aaGJlbbLS7cp0H-i@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@debian.org>,
	Ron Ben Yizhak <ron.benyizhak@safebreach.com>,
	Justin Swartz <justin.swartz@risingedge.co.za>,
	bug-inetutils@gnu.org, oss-security@lists.openwall.com,
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de,
	Salvatore Bonaccorso <carnil@debian.org>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de>
 <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
Subject: [oss-security] CVE-2026-28372: Telnetd Vulnerability Report

Hi!

On Tue, 2026-02-24 at 11:57:34 +0200, Ron Ben Yizhak wrote:
> I’d like to ensure we follow the standard CVE process here. Standard
> practice dictates that a CVE is issued per individual fix. Generally, once
> a fix is merged and released, it is assigned its own CVE. Even if that fix
> is later bypassed, the original merge stands as a unique event in the
> codebase, meaning we should issue two separate CVEs rather than grouping
> them.

Salvatore Bonaccorso from the Debian Security Team got a CVE assigned
for this, see <https://www.cve.org/CVERecord?id=CVE-2026-28372>. I'll
update the Debian packaging on the next upload to point to that.

Thanks,
Guillem
