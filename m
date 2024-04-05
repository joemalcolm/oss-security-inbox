Received: (qmail 26537 invoked by uid 550); 5 Apr 2024 18:11:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26482 invoked from network); 5 Apr 2024 18:11:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2024; t=1712340710;
	bh=z9aX9KVAahXjB/X+NCkpQzCF+piWMKXvbL+BscXjWpI=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=VJGm+ctBhzBSI75MD7ZJu9lzPKUtidqrf1qDGbfhi7dU1w+Pm4bepRbYAeKE78VEu
	 oVdrlPLsDL1g2/BoQsplTCGyrZg94ZLI4YHr5P9lF2Y+CCsKXtzWpaA+2YgClzPqox
	 udTYaa4Sv1wJ+FNdYBQ2WO44HYsxV5ZneE2ocyIs=
Date: Fri, 5 Apr 2024 14:11:49 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZhA-5eMuhNp6bj_S@netmeister.org>
References: <5afad6dc-911e-4a76-a9fd-e166b9fde5f8@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5afad6dc-911e-4a76-a9fd-e166b9fde5f8@oracle.com>
Subject: [oss-security] Go 1.22.2 and 1.21.9 (CVE-2023-45288 HTTP/2 CONTINUATION issue)

[ Forwarding another announcement I didn't see on this
list relating to VU#421644 ]

https://groups.google.com/g/golang-announce/c/YgW0sx8mN3M

| We have just released Go versions 1.22.2 and 1.21.9,
| minor point releases.
| 
| These minor releases include 1 security fixes
| following the security policy:
| 
| http2: close connections when receiving too many
| headers
| 
| Maintaining HPACK state requires that we parse and
| process all HEADERS and CONTINUATION frames on a
| connection. When a request's headers exceed
| MaxHeaderBytes, we don't allocate memory to store the
| excess headers but we do parse them. This permits an
| attacker to cause an HTTP/2 endpoint to read arbitrary
| amounts of header data, all associated with a request
| which is going to be rejected. These headers can
| include Huffman-encoded data which is significantly
| more expensive for the receiver to decode than for an
| attacker to send.
| 
| Set a limit on the amount of excess header frames we
| will process before closing a connection.
| 
| Thanks to Bartek Nowotarski (https://nowotarski.info/)
| for reporting this issue.
| 
| This is CVE-2023-45288 and Go issue
| https://go.dev/issue/65051.
| 
| View the release notes for more information:
| https://go.dev/doc/devel/release#go1.22.2
| 
| You can download binary and source distributions from
| the Go website:
| https://go.dev/dl/
| 
| To compile from source using a Git clone, update to
| the release with
| git checkout go1.22.2 and build as usual.
| 
| Thanks to everyone who contributed to the releases.
