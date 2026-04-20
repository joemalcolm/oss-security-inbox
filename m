Received: (qmail 7410 invoked by uid 550); 20 Apr 2026 15:52:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5624 invoked from network); 20 Apr 2026 09:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776675692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=emF8nWXRKzeprduR9MR1OIcdRqQgEob3j+1n/aOxECI=;
	b=F+Gjt1k6TkgQGa6ofqw0VAiAHI6xkkB9casjZMWCvBzMU6RFFWIoqMV4S7GXDPHoupfgYm
	1aST4pjKS8fHE2w68DEllJVAh9C5u0VoA4SjFO6XejcgzBdh+s5Cn1ezr//No7XWkTdzcK
	DSrfc7jmmkrHotMaW/XdZSP9FQqYwbE=
X-MC-Unique: sq0Z5axvP6WDWlMdEcDPVA-1
X-Mimecast-MFC-AGG-ID: sq0Z5axvP6WDWlMdEcDPVA_1776675689
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776675689; x=1777280489;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=emF8nWXRKzeprduR9MR1OIcdRqQgEob3j+1n/aOxECI=;
        b=M1yfU7yqwiFdilB/VprjmjjNxotDUVoTu30f/QdxABX87HlLYa1fRsD8fbDmfaLok4
         JM1gURzQgf/lShSNPo+LvmE3cW7LOYQwueIE9UTbs30LlpOjWC9HdgjA+Tnqc+y3q6ni
         fVnGfGeUyUGDoNouASC4WDE7tr+pN2r9gJ+sLmvGIRa/fSnp7wCEPKfQP2MLdXUBO9I4
         VV1IgdT5VI0jbJaUkgivPt043n7b9KbdBor170Zt3TIUGWqDncRYCID2F4MBisobghjk
         F0zR6kAEyrOgykvpcrbJWB5NnZU2D8MpV92f1PZ/l0VWG6EI2heuMgVkvYeXkSfhcgDW
         7dyA==
X-Forwarded-Encrypted: i=1; AFNElJ/ovxKITMVV+QxpMChcW/8uuC6juMrlUhdEPISvzNXevbYwkCl3HSSoWSkToj7rhW2tBRs0eNw/8fPfXWA=@lists.openwall.com
X-Gm-Message-State: AOJu0YzKMcX5wVCDL3JLN/ipnAG+Np5ERAWYgmNkeLGSIAgmHBSl63mO
	mK0jzZgVC7k6E/HF/SViZrTQE8EtkMbTTP36OLbrm/akYMEwYiH/eIAxtb7mzSxwshgAxRiVVDf
	rbId6j+GtOsyGvv8FAE0HPGw7ITcyacEs8GpbF144Y2kdUns5hQ8LWS1RIqxNVX4QVtwPpSnLZy
	pRuRJodWtjAWMzOJVVWGwD0Y5M8eG3qua9o3xYET2YkLpts6rii4j025U=
X-Gm-Gg: AeBDieuDzPLhuRaTlBimg7DMlvtJQTGL0qMivSZvUwkYAHdzria00mgsHzYHB0gbbG4
	NueULa8e2vU2ZoxLwwhLcS7XHUyxNTQXWzR59x4APQ6hfcUyPVghh76yg/+mN2XAWP4pWpQO7DQ
	pPPJ4sD59yk9AYavQXoPVU5WEIrUWZshMk2MQZD5Xl1ynPFAIQzeORyCLEqFTnUN8vkUJIr4NRj
	XUBnmj3XwF4vXDRr2Yuz3rJV2F1eo3M8Mg41zVeZQdS1LorKT0xUVGZCMqBEhoJplxX6CG32F+i
	ZPvcOeezGTmDjwmchiAkFu87KziFxgaO7Pf8IkPc0TiLyBKD6rcxpbCgF52s6d9R0G1cUtx8tg6
	STxq78q+7OJ2lcIEcFAwuhEszxuvd3DM+LdTni4ehA2nvuEECTF0Kcf37
X-Received: by 2002:a05:690e:d56:b0:650:18fc:f557 with SMTP id 956f58d0204a3-65310a82f1dmr9963580d50.56.1776675688612;
        Mon, 20 Apr 2026 02:01:28 -0700 (PDT)
X-Received: by 2002:a05:690e:d56:b0:650:18fc:f557 with SMTP id
 956f58d0204a3-65310a82f1dmr9963560d50.56.1776675688131; Mon, 20 Apr 2026
 02:01:28 -0700 (PDT)
MIME-Version: 1.0
From: Ales Musil <amusil@redhat.com>
Date: Mon, 20 Apr 2026 11:01:16 +0200
X-Gm-Features: AQROBzCEu0M-QGjXZjdnqXOtF5OwADSwRAdJ49gBzq60IkdMJxflziEFo4pmNF0
Message-ID: <CALVEqe4=vz3wuJvn6T2=6As+1gh-qd+Ze_m+UXBVFAmyVy8ykA@mail.gmail.com>
To: ovs-announce@openvswitch.org, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3HJDYS6dhRBMpY-PnL6dz9o928Q_yhAe6mUKPY_ME58_1776675689
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000045c1bc064fe08b54"
Subject: [oss-security] [ADVISORY] CVE-2026-5367: Heap over-read in OVN DHCPv6 Client ID processing

--00000000000045c1bc064fe08b54
Content-Type: text/plain; charset="UTF-8"

Description
===========

Multiple versions of OVN (Open Virtual Network) are vulnerable to
crafted DHCPv6 packets that could potentially read out-of-bounds,
leaking adjacent info stored on the heap.

OVN supports configuring DHCPv6 options for Logical Switch Ports.
When configured we allow handling of DHCPv6 requests in a userspace
thread called pinctrl. The thread accesses user-controlled packet data
and copies some of it in the process of creating a reply packet.

When building a DHCPv6 ADVERTISE reply, the handler echoes the
Client ID option using the option's self-declared length without
validating it against the actual packet bounds. A workload can send
a crafted DHCPv6 SOLICIT with an inflated Client ID length field,
causing ovn-controller to copy heap memory beyond the valid packet
data into the reply. The reply is then delivered back to the
attacker's VM port.

The Common Vulnerabilities and Exposures project (cve.mitre.org) has
assigned the CVE-2026-5367 identifier to this issue.

A way to determine if any LSP has DHCPv6 options configured:

  $ ovn-nbctl --columns name,dhcpv6_options list logical_switch_port

If the above command returns at least one dhcpv6_option, the Logical
Switch Port is configured to respond to DHCPv6 SOLICIT messages.

Mitigation
==========

The only potential mitigation is to disable the DHCPv6 feature for
workloads attached to OVN logical ports, e.g.:

ovn-nbctl clear logical_switch_port <workload-port> dhcpv6_options.

We do not recommend mitigating the vulnerability this way because it
will also disable legitimate DHCPv6 traffic originating from
workloads connected to logical switch ports.

Fix
===

Patches to fix this vulnerability in OVN 24.03 and newer are
applied to the appropriate branches.

Recommendation
==============

We recommend that users of OVN apply the patches, or upgrade to
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

--00000000000045c1bc064fe08b54--

