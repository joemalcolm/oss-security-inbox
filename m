Received: (qmail 1348 invoked by uid 550); 16 Jan 2024 16:11:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1324 invoked from network); 16 Jan 2024 16:11:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/jw/LPvbXJgDkAv4CA2gwQdqWo7aaQs8hP8VVp2ocBo=; t=1705421624; x=1706069624; 
	b=sue24zjyAmEcK+21b96zmyc/15VGVW/w4M6k2PaSG0tmcPZAZg2GhuaiEzPUPtgKd00yT9M5IKd
	I6lWstcayYt646IEv6XiMi/0CCr7XrMYxch12NcrBR4gkze3MFGDkEMnYEmCVryYLQs/gba5u3VQK
	7p2g/7Ajfqbm76p7EEqGKnzvZ2fJeSnXMMJt2tUlITx3xXgszsGNjmNZOyCbBaQ1D+Oc1rdxlUiVt
	PyilZC/f+JlUUjvpQQyz73Jl2wM0D3nBzYUIeESz/QRxSWnUgRnLhEWZ1YnJ/MQ4b6PKI9kuxroSr
	xYCBDHjyDYiIBf9xGY3/zTKFa9FjbH8Pmrzg==;
Date: Tue, 16 Jan 2024 18:13:27 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <sobqqcafukr63hmp5gnjp7ncoc3xa5b275g3yfnppthnbtwdu3@g6yax7ir4tiv>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20231006-6-ca2e93
Subject: [oss-security] CVE-2023-45229 and others: Multiple vulnerabilities in EDK II UEFI
 stack (PixieFAIL)

(Not associated with Quarkslab or Tianocore.)

Quarkslab has published an advisory concerning multiple
vulnerabilities in the network boot (PXE) component of Tianocore EDK
II, the open-source UEFI reference implementation. They title this
series of vulnerabilities "PixieFAIL":
<https://blog.quarkslab.com/pixiefail-nine-vulnerabilities-in-tianocores-edk-ii-ipv6-network-stack.html>

The introduction states:

  In order to provide [the] network booting feature, UEFI implements a
  full IP stack at the DXE phase, opening the door to attacks from the
  local network during this early stage of the boot process.
  […]
  The EDK II UEFI reference implementation provides both IPv4- and
  IPv6-based PXE. In the latest available specification (UEFI 2.10) as
  of this writing, IPv6-based PXE is described in section "24.3.18 -
  Netboot6".

  We performed a cursory inspection of NetworkPkg, Tianocore's EDK II
  PXE implementation, and identified nine vulnerabilities that can be
  exploited by unauthenticated remote attackers on the same local
  network, and in some cases, by attackers on remote networks. The
  impact of these vulnerabilities includes denial of service,
  information leakage, remote code execution, DNS cache poisoning, and
  network session hijacking.

The specific vulnerabilities included in the advisory largely, though
not exclusively, concern the IPv6 side of the network stack:

CVE-2023-45229: Integer underflow when processing IA_NA/IA_TA options
in a DHCPv6 Advertise message

CVE-2023-45230: Buffer overflow in the DHCPv6 client via a long Server
ID option

CVE-2023-45231: Out of Bounds read when handling a ND Redirect message
with truncated options

CVE-2023-45232: Infinite loop when parsing unknown options in the
Destination Options header

CVE-2023-45233: Infinite loop when parsing a PadN option in the
Destination Options header

CVE-2023-45234: Buffer overflow when processing DNS Servers option in
a DHCPv6 Advertise message

CVE-2023-45235: Buffer overflow when handling Server ID option from a
DHCPv6 proxy Advertise message

CVE-2023-45236: Predictable TCP Initial Sequence Numbers

CVE-2023-45237: Use of a Weak PseudoRandom Number Generator

Based on the Quarkslab advisory and a separate Microsoft advisory
linked therein, many ISVs that use EDK II as the base for their
proprietary BIOSes have admitted vulnerabilities. Specific PC vendors
are mostly listed as "unknown", but seems likely that the proprietary
BIOSes shipped by many of them are vulnerable.

I would guess (but have no specific knowledge) that downstream
open-source projects that use EDK II code, potentially including the
OVMF builds of it commonly used with qemu VMs, will also in many cases
be vulnerable if they are built with network boot support enabled.

 -Valtteri
 
