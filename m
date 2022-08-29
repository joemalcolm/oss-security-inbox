Received: (qmail 32651 invoked by uid 550); 29 Aug 2022 18:19:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11514 invoked from network); 29 Aug 2022 18:12:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=monjalon.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661796741; x=1661883141; bh=kF8K0X8x2/
	OaHpASGVOnKLmguSc6Vd0qs1g5gDlzpbk=; b=OskCJYAsFOX0DOzD3mJuYIe44n
	ysAS2ZCzXZH72vwUufojcCWi1s3+yPlJOqolHuGHxEBM0Fvwk187iYSb/U5tJEdr
	DU22UXK4sVjpCqxzpf+rxPt2s2jVoNkf/i1Ub5WPhS/67JF62IxVWGYBA3udZOXz
	1sQKJQwXPSlrm4w9B0Fs1r2hsvBL6Vvr5StpTxR5LBu/a1KyUjczedRyZk/cQHS4
	v6joMILkg84KL/fHSKKGN/YWVavhPdGPzZeaJPAD0B+0QfP5wN6VAQPt6uJRMIdC
	1bXI/WkI4yPX0eBauurMNl41HjQENkIiXrt17GCrlhr7qn7oksYDjTShOj3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1661796741; x=1661883141; bh=kF8K0X8x2/OaH
	pASGVOnKLmguSc6Vd0qs1g5gDlzpbk=; b=2mCJ1zWU5ev8Gt5XBvIbEEQjZShI3
	iNdtsxBz9cuaPDehmPrw7qj/s0tl+NM1zWQYLve6OuIcTV2mU3mWizJlz3uQm/5t
	008nMyUOOpM4lnPctNcoivQVjtWMq0Bkxo+K/9eL7Txyht6YY50TzNdWE69Yei2m
	jRLTkXlOzD5ES/thq0NVXw1MKfrWrSNG+319FlnvFZ4yRwuHQiAv6oIRkCFpvhbI
	R7y0dCRXJajKfJTcU0KQCFCSX+b+MVQl+LukVCpb4m//ALVvohVX/vAeAxdBZh9E
	tGPfDs6NhS2tUJMmzMpkRQ4l/sMry6ourwf7idKXCwumTuQ3u1sR6Qv0w==
X-ME-Sender: <xms:hAENY-byvingvH7MWl5vfk_M96h60lf6K8vM1-J7jdKjLMN3QkpAXw>
    <xme:hAENYxYshvzj-oXPL-Bpf0bqEcMMM7WrwqZgQ5-bV5Se5pMXMHjj_tmInfKgLAm0F
    5Gd_WRPyMv0h2mxZg>
X-ME-Received: <xmr:hAENY4_hZMDo9hZuAbgUH7WxtfrlSFG7xff1RxdEx7vfWLo2ES2WyAUPlLD4T5CWN9hO_sveoq02LD0GjweQ852O-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekuddguddvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkggfgtgesthfure
    dttddtvdenucfhrhhomhepvfhhohhmrghsucfoohhnjhgrlhhonhcuoehthhhomhgrshes
    mhhonhhjrghlohhnrdhnvghtqeenucggtffrrghtthgvrhhnpeeuhedtudelvdekffekud
    duiefftdekhfelgffggeeifffhvdekvddvgffhteelffenucffohhmrghinhepughpughk
    rdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epthhhohhmrghssehmohhnjhgrlhhonhdrnhgvth
X-ME-Proxy: <xmx:hQENYwrwUcSwMDvs-a2RiiUFrfwd4WH0PTE1Zu4wKZ66v-TeQYwuiQ>
    <xmx:hQENY5r0B2aL5a7LlUKDjmPLjwxbl8BXsQyL1qCpNiEiaf5GrVfX9w>
    <xmx:hQENY-QdBCLLKsjcl7BfUUZ2U_pkU71uiqPH_Tv5TNDia4Q6Hq2saw>
    <xmx:hQENY6AybzWG0U4GSx2Z-KYVc-rSPWXwT5yxGpVaq__7pj28G-WMvw>
Feedback-ID: i47234305:Fastmail
From: Thomas Monjalon <thomas@monjalon.net>
To: announce@dpdk.org
Cc: security@dpdk.org, oss-security@lists.openwall.com
Date: Mon, 29 Aug 2022 20:12:18 +0200
Message-ID: <1705193.jNaZZp9DzI@thomas>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] CVE-2022-2132: DPDK copy_desc_to_mbuf() Vhost header vulnerability

A vulnerability was fixed in DPDK.
Some downstream stakeholders were warned in advance
in order to coordinate the release of fixes
and reduce the vulnerability window.

In copy_desc_to_mbuf() function,
the Vhost header was assumed not across more than two descriptors.

If a malicious guest send a packet
with the Vhost header crossing more than two descriptors,
the buf_avail will be a very large number near 4G.

All the mbufs will be allocated,
therefore other guests traffic will be blocked.
A malicious guest can cause denial of service
for the other guest running on the hypervisor.

CVE: CVE-2022-2132
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=1031
Severity: 8.6 (High)
CVSS scores: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:C/C:N/I:N/A:H

Commits per branch:
	main
	        https://git.dpdk.org/dpdk/commit/?id=71bd0cc536
	        https://git.dpdk.org/dpdk/commit/?id=dc1516e260
	21.11
	        https://git.dpdk.org/dpdk-stable/commit/?id=f167022606
	        https://git.dpdk.org/dpdk-stable/commit/?id=e12d415556
	20.11
	        https://git.dpdk.org/dpdk-stable/commit/?id=8fff8520f3
	        https://git.dpdk.org/dpdk-stable/commit/?id=089e01b375
	19.11
	        https://git.dpdk.org/dpdk-stable/commit/?id=5b3c25e6ee
	        https://git.dpdk.org/dpdk-stable/commit/?id=e73049ea26

LTS Releases:
	21.11 - http://fast.dpdk.org/rel/dpdk-21.11.2.tar.xz
	20.11 - http://fast.dpdk.org/rel/dpdk-20.11.6.tar.xz
	19.11 - http://fast.dpdk.org/rel/dpdk-19.11.13.tar.xz

CVE: CVE-2022-2132
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=1031
Severity: 8.6 (High)
CVSS scores: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:C/C:N/I:N/A:H


