Received: (qmail 5344 invoked by uid 550); 20 Apr 2026 15:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5582 invoked from network); 20 Apr 2026 09:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776675691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=o5gSLxB8jk/OL6/ApSL8kKT/wwy05qAhsSQPQT31f6g=;
	b=L0UMsxeIOlSCGUfAu7r42KuDmBxAjft1WktugJ0rivfxv+okSqlW2EEMm2o8Qsv71gqCpr
	ndhFb7+22exTKYskA84uMJXh1ewMubnSwgHbXem4y/EF/jjR7zcayMmynOtjgDM7TTkrcG
	kUi8uvXDxVmabKEhMDXsvBIw2051gaM=
X-MC-Unique: vHpsOOn9N56w1ohruYTKvw-1
X-Mimecast-MFC-AGG-ID: vHpsOOn9N56w1ohruYTKvw_1776675687
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776675687; x=1777280487;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o5gSLxB8jk/OL6/ApSL8kKT/wwy05qAhsSQPQT31f6g=;
        b=PCV6ViBdBlfpJPyIWlXcv/04Jcg4FxUZzt/OQdTKqLHiqyBas2EWKdoCvKL0bR2BrM
         w0TSQQecysjq3SbaZu9JeHd7pd5nESbztTO+EtZf951h7Ii3v/x4/sUEtlRBnlkNTMnW
         0dHAnzXeKw6nLCuTAA3RPAHdb4dKxMxM4sedOfLk0zC93SEb8bye7xE4uu0r6ts1i/sA
         cUyVzOdsgHtQhEOw1qMArW1cQkWgz1tjU4TohT7EwP9Lst4B1MRv5vdTkE00akmvlayq
         YYJ8Fx5bz/FZhAo8gd4Px9ddZiSo08NoebVlmqMViTerKLkiPX8MJrbKr+lrJtvOlWwo
         MR3g==
X-Forwarded-Encrypted: i=1; AFNElJ8QDBvFBs6BridR+FuY/dBxbD+2BZYHDJ12HOg9p0dFktjmAbGV+9b+eegJ5XEO/qyIEWcJot/xagA/K9I=@lists.openwall.com
X-Gm-Message-State: AOJu0YySs3MvetBWM8MSIuY5dhTD7af8/SHIiYLKY67BpFm9KFI7AhXM
	5q2LaazZTHTOVxvmSo2ENODHc33F8BQcz04VZcoMvzFOCb6vW4KyzRyhTf3BrH53BB/4992htZd
	rI3oH1zMNyYyOMx9cfPilzpDY+FzWDAHtvDSY5OszHwDVtnVH8/ljqkorRFHdP8kDMU4s6pO8Cd
	4lnrHL9nwjqCeVpbRjoATWwX7ujKDxDFVr2JzmApXksMY3
X-Gm-Gg: AeBDiesobyhci3GwmO6J562+1a53eC4OAra5SR+20MXcrQyWU3nxRAeU3smou0x6k/z
	5ZgrG7JvMashXqCLK9RL7pTYRueq7UMFRIx6q1ffrg92oXzw48gdPEOmBBGlk9qjA60FEGi50Fz
	uH1nU9aQF0wUvVXEfh8JVQJXkujR3/Ryve/Cf41AmG3BlSfYp97as/5O/aJd2dr7/hpTfiQl2yn
	5P4/gJIRQlaJPCSaGwk6Eb6hH7g6t+Hu+2dw9GS4/pT2BB19IdGnn/1HHxNwiAzAK3zNEXZjhBS
	BxdCvRaF5ig26T7kjK3Tg8VgKJ12FB5fz+Cuyfvit6Lxau9Ked7YGX/dCsf4FiRVrq5DBVuIu+Q
	bBJvyPeGXFWeNK5jsObv1HUes0sM/QwKMGCMGzgPKDSeNmF5RZXaOKL+J
X-Received: by 2002:a53:d748:0:b0:64c:9ec3:d71a with SMTP id 956f58d0204a3-65310a737b1mr8785308d50.48.1776675687261;
        Mon, 20 Apr 2026 02:01:27 -0700 (PDT)
X-Received: by 2002:a53:d748:0:b0:64c:9ec3:d71a with SMTP id
 956f58d0204a3-65310a737b1mr8785282d50.48.1776675686705; Mon, 20 Apr 2026
 02:01:26 -0700 (PDT)
MIME-Version: 1.0
From: Ales Musil <amusil@redhat.com>
Date: Mon, 20 Apr 2026 11:01:15 +0200
X-Gm-Features: AQROBzAxi0lW2ojvpXspAEOWlb19dyTuN8zTQrJ6pMFGB_tpAhjgCMx_j3Ib0n8
Message-ID: <CALVEqe6a8yXmfG9R_v1rsBF0x_OSpJw_soxxk9-mSYUNHOMwjg@mail.gmail.com>
To: ovs-announce@openvswitch.org, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zelzXYV76tJTMK6zJVsRPaUiCBFygZmuH6e-ZokmjLc_1776675687
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000306b79064fe08b73"
Subject: [oss-security] [ADVISORY] CVE-2026-5265: Heap Over-Read in ICMP Error Response Generation

--000000000000306b79064fe08b73
Content-Type: text/plain; charset="UTF-8"

Description
===========

Multiple versions of OVN (Open Virtual Network) are vulnerable to
crafted IP packets that could potentially read out-of-bounds,
leaking adjacent info stored on the heap.

OVN supports sending ICMP error messages in multiple scenarios, e.g.
reject ACLs, PMTU discovery via Gateway MTU, Load Balancer without
any backends that are configured to reject a packet. The ICMP error
is generated in the userspace thread called pinctrl. The thread accesses
user-controlled packet data and copies some of it in the process of
creating a reply packet.

When generating an ICMP Destination Unreachable or Packet Too
Big response, the handler copies a portion of the original packet into
the ICMP error body using the IP header's self-declared total length
(ip_tot_len for IPv4, ip6_plen for IPv6) without validating it against
the actual packet buffer size. A VM can send a short packet with an
inflated IP length field that triggers an ICMP error (e.g., by hitting a
reject ACL), causing ovn-controller to read heap memory beyond the valid
packet data and include it in the ICMP response sent back to the workload.

The Common Vulnerabilities and Exposures project (cve.mitre.org) has
assigned the CVE-2026-5265 identifier to this issue.
A way to determine if any reject ACL is configured:

  $ ovn-nbctl --columns match,action find acl action=reject

If the command above returns at least one ACL, the Logical Switch
configured with that ACL rejects packets matching the condition.

A way to determine if a Gateway MTU is configured:

  $ ovn-nbctl --columns name,options list logical_router_port

If the output from the command above returns at least one Logical
Router Port with gateway_mtu in the options column, that port is
configured to perform the MTU check.

A way to determine if a Load Balancer has a reject action:
    $ ovn-nbctl --columns name,options list load_balancer

If the output from the command above returns at least one Load
Balancer with gateway_mtu in the options column, that Load Balancer
is configured to reject the traffic if it lacks any backends.

Mitigation
==========

The only potential mitigation is to remove or disable all affected ACLs,
Load Balancers or Gateway MTU settings on Logical Router Ports.

We do not recommend mitigating the vulnerability this way because it
will also affect legitimate traffic going through the cluster.

Fix
===

Patches to fix this vulnerability in OVN 24.03 and newer are
applied to the appropriate branches.

Recommendation
==============

We recommend that users of OVN apply tthe patches, or upgrade to
a known patched version of OVN.  These include:

 * v24.03.8
 * v24.09.4
 * v25.03.3
 * v25.09.3
 * v26.03.1

Acknowledgments
===============

The OVN team wishes to thank the reporter:

  Seiji Sakurai <Seiji.Sakurai@outlook.com>

--000000000000306b79064fe08b73--

