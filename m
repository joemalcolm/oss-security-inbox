Received: (qmail 25934 invoked by uid 550); 7 May 2024 10:49:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11706 invoked from network); 7 May 2024 07:38:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Sender:Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=apFJ1Jmd5RvFghb95jeM8vHZJskUjevniB3NAl4SLkc=; t=1715067506; x=1715715506; 
	b=bL1WVc+DroBF+yaTaUHcUaU63K05APS2AIuLC1lD487WA3jpxiLMXw30x9OxQUg7GjFNBQ0avzX
	qVX9fDRahZZLzr6g10dltZv2DmlU9fFLRk9KS9isV6Me9/0Pq2LcBT7eFr+yfTmmUrpEvciFWRdIX
	95766BsDqmMkK+OJNpg6an3DjPZN/+LJDENiZG/jEY2ojlRSoCHjL4gEnMWdG4eTjuEGNclRjM8X2
	MbyspBZdk6sv8f5r5tEVK0x8klqC/JXNIg6mmX9Ha2s4hBkK8WEsnMdJ68zgmdtq5GUzY47M6xCNI
	uah+0lG9U9ApAkbAW2nZo7HmN/1tuUva97Lg==;
Date: Tue, 7 May 2024 10:38:08 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <2ib7foyctkfjgsicr3ucl7tqj6rld2w64so4hgth2jxboyeqe3@tgl57zzlwo7h>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20240323-4-c04f3b
Sender: server-megadon@notcom.org
Subject: [oss-security] CVE-2023-49606, CVE-2023-40533: memory safety vulnerabilities in
 tinyproxy <=1.11.1

Cisco Talos reports two memory safety vulnerabilities in tinyproxy, a small HTTP
proxy server, in versions prior to 1.11.2 (not yet released). Quotes from the
two advisories below.

First advisory <https://talosintelligence.com/vulnerability_reports/TALOS-2023-1889>:

  CVE-2023-49606

  A use-after-free vulnerability exists in the HTTP Connection Headers parsing
  in Tinyproxy 1.11.1 and Tinyproxy 1.10.0. A specially crafted HTTP header can
  trigger reuse of previously freed memory, which leads to memory corruption and
  could lead to remote code execution. An attacker needs to make an
  unauthenticated HTTP request to trigger this vulnerability.

  9.8 - CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:Hv

Second advisory <https://talosintelligence.com/vulnerability_reports/TALOS-2023-1902>:

  CVE-2023-40533

  An uninitialized memory use vulnerability exists in Tinyproxy 1.11.1 while
  parsing HTTP requests. In certain configurations, a specially crafted HTTP
  request can result in disclosure of data allocated on the heap, which could
  contain sensitive information. An attacker can make an unauthenticated HTTP
  request to trigger this vulnerability.

  5.9 - CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N

Upstream has an issue open at
<https://github.com/tinyproxy/tinyproxy/issues/533>.  Talos claims to have
contacted them in December 2023, but according to the developer there was no
contact before the above advisories were released. The developer also disputes
the veracity of CVE-2023-40533. Whatever the case,
<https://github.com/tinyproxy/tinyproxy/commit/12a8484265f7b00591293da492bb3c9987001956>
is the official fix for CVE-2023-49606.

 -Valtteri
 
