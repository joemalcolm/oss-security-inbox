Received: (qmail 9856 invoked by uid 550); 20 Apr 2026 15:52:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15461 invoked from network); 20 Apr 2026 12:58:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776689871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8/qtFPRMrwDMdBjeAdH7Ve2yUhRD7cyVXPjE7uxWw68=;
	b=FeXaSKhMKQbgo1ppooRT6ums8dM2BVbEqDwhb9R/KQYQlVmk29awv2MA+YztM3kafTJrAE
	K2/9OA11aOiqYi+8wCqTUiMWMU+YEMAdU5Ve7ftQCeOIHrkzKCnFglf5eIpkPeaODsDEHL
	MFJY8XqJcJrBxGvCQBgebenxDPrhqRE=
X-MC-Unique: BshO4TebNk-isTsMYpQt9Q-1
X-Mimecast-MFC-AGG-ID: BshO4TebNk-isTsMYpQt9Q_1776689869
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776689869; x=1777294669;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/qtFPRMrwDMdBjeAdH7Ve2yUhRD7cyVXPjE7uxWw68=;
        b=T3UQtCvS1KErRxZB2syxalav7fkRfYCJV6Cse6Hibv4ARd4VwLY1eXm+piCEvmoZcs
         r4KgE9mvMo7Yl6jRwJveRyqWT9h+q3SPTTebVagEK3JNrt6zcZ9iWCOfIBftczQLoRRH
         2J3BcGlmoJarNJjmiYycbO7HJR23Ne0hp6Fm5vQMc3/MTkDbkGGkiTwk87I+HGbjLZJs
         VRTLTJnmvxbYjphLsNIDW1GFKiL7R01kOyT0esuleqZrKmybNVjNZkXmvFtNcj6QeG2A
         q42jmhUR++PUf36gY/kfN16iJo9KU9ZvnH7xbbbmq7Pu+TkM/a3XFH2fvOkwsMq5SQnl
         vsvA==
X-Forwarded-Encrypted: i=1; AFNElJ9a11tHMlIlG3nmXDmyYTwuIVi3u0a6cITDO+KYCDqSdp6I70N3zpv7OWl/SDWp7DrA33cQYw+Y7u4f350=@lists.openwall.com
X-Gm-Message-State: AOJu0YwhZCSckAV5DYEICEdy02OazowBkrTBXhfYOHq0Go7AHgesAcD+
	oVqIGfodqGxxHgNxnBJCtAmN01CWo1GfcRgGsg39dO79WoN6ys9pAEcX6x+9GcI9hYIElfk11Qr
	vFUG/n5UvRnGAn0KPAH7JOcqcfVT2Mah5th+Tb6Ytk8P4Oqtrekt/3ex/ho5RoRoXSSaRJJA8Sg
	yJmHBQzlu5cFhsUOf6mvGdWmQd8ALSQYCvYjvtfyUVutz3wX6oXBZqS8o=
X-Gm-Gg: AeBDiesfM3jFbOrpbbnwSy9k7Jvbmiu2wK0+WjbqKbcNiEayiLdDIIyvHhLeuXPoqLj
	kc9u4zfYRLZDMNQLI6bSE83AFn+83b1vZ/ojiMdutj0jVZFAxhXH3fsoSurdv25B/ijHRNEmHUV
	GcpDMgsHXGsZB6jchFuWBCp3yBP4TJxLos1ZZaThTUkRsmC0xgVlzyaM5xe6WbmPEuPVRbfvgTo
	uyMpIWt8BFBgx2zGXIdcrtrPWi3UhrTrODan8A4ZAcuW3/qLfzoSUFv5gYwTYylKQYcXxOBX2gv
	lJdYmyjyza4FiFRozfx9suUvEzZJCwy7xxZG1V9iMWTGePVbvk/bCC6s7uNA8IG4WVljSzBh7Md
	/jOqBWaGFASdWONvb+/WHgXc2KuXQFa9DhL5ip5UG8T+HwPEt23CmYacXEg==
X-Received: by 2002:a53:ad4b:0:b0:651:bb0b:700f with SMTP id 956f58d0204a3-65310a6d20emr9612686d50.47.1776689869188;
        Mon, 20 Apr 2026 05:57:49 -0700 (PDT)
X-Received: by 2002:a53:ad4b:0:b0:651:bb0b:700f with SMTP id
 956f58d0204a3-65310a6d20emr9612666d50.47.1776689868785; Mon, 20 Apr 2026
 05:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <CALVEqe4=vz3wuJvn6T2=6As+1gh-qd+Ze_m+UXBVFAmyVy8ykA@mail.gmail.com>
In-Reply-To: <CALVEqe4=vz3wuJvn6T2=6As+1gh-qd+Ze_m+UXBVFAmyVy8ykA@mail.gmail.com>
From: Ales Musil <amusil@redhat.com>
Date: Mon, 20 Apr 2026 14:57:38 +0200
X-Gm-Features: AQROBzCIkL9MWW9oTyQjIy0gT4qh7PpUXC3YakFMKy_u1AnMg3nncWFjKLH5AUQ
Message-ID: <CALVEqe5d0xdTi=aXpR9dBAQcwZTP3JjuF5johtPLy6CponFKNw@mail.gmail.com>
To: ovs-announce@openvswitch.org, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: S7Kn2eFvtItwKoHzhlfnEKFP4ud-MdNddVImR7H_xWU_1776689869
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008160bf064fe3d8a2"
Subject: [oss-security] Re: [ADVISORY] CVE-2026-5367: Heap over-read in OVN DHCPv6 Client ID processing

--0000000000008160bf064fe3d8a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2026 at 11:01=E2=80=AFAM Ales Musil <amusil@redhat.com> wro=
te:

> Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Multiple versions of OVN (Open Virtual Network) are vulnerable to
> crafted DHCPv6 packets that could potentially read out-of-bounds,
> leaking adjacent info stored on the heap.
>
> OVN supports configuring DHCPv6 options for Logical Switch Ports.
> When configured we allow handling of DHCPv6 requests in a userspace
> thread called pinctrl. The thread accesses user-controlled packet data
> and copies some of it in the process of creating a reply packet.
>
> When building a DHCPv6 ADVERTISE reply, the handler echoes the
> Client ID option using the option's self-declared length without
> validating it against the actual packet bounds. A workload can send
> a crafted DHCPv6 SOLICIT with an inflated Client ID length field,
> causing ovn-controller to copy heap memory beyond the valid packet
> data into the reply. The reply is then delivered back to the
> attacker's VM port.
>
> The Common Vulnerabilities and Exposures project (cve.mitre.org) has
> assigned the CVE-2026-5367 identifier to this issue.
>
> A way to determine if any LSP has DHCPv6 options configured:
>
>   $ ovn-nbctl --columns name,dhcpv6_options list logical_switch_port
>
> If the above command returns at least one dhcpv6_option, the Logical
> Switch Port is configured to respond to DHCPv6 SOLICIT messages.
>
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The only potential mitigation is to disable the DHCPv6 feature for
> workloads attached to OVN logical ports, e.g.:
>
> ovn-nbctl clear logical_switch_port <workload-port> dhcpv6_options.
>
> We do not recommend mitigating the vulnerability this way because it
> will also disable legitimate DHCPv6 traffic originating from
> workloads connected to logical switch ports.
>
> Fix
> =3D=3D=3D
>
> Patches to fix this vulnerability in OVN 24.03 and newer are
> applied to the appropriate branches.
>
> Recommendation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We recommend that users of OVN apply the patches, or upgrade to
> a known patched version of OVN.  These include:
>
>  * v24.03.8
>  * v24.09.4
>  * v25.03.3
>  * v25.09.3
>  * v26.03.1
>
> Acknowledgments
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The OVN team wishes to thank the reporter:
>
>   Seiji Sakurai <Seiji.Sakurai@outlook.com>
>
>
One small correction: the 24.09 release is not happening so for 24.09
please upgrade to the next available release.

--0000000000008160bf064fe3d8a2--

