Received: (qmail 7905 invoked by uid 550); 20 Apr 2026 15:52:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11412 invoked from network); 20 Apr 2026 12:57:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776689855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=w2uRAJSy4ynB5oV88Hsb7yDvFYTjDrgmtczhBmyHFMk=;
	b=VIDATc38O378tE3OZRStLGdG0dBRX3xxlqwIkgvKmebiw0MWk+rA4pswTcooP6M4lOB+P7
	U8MRSZj/iONogYhWeMp7VsIwp9eSRyWM+4JTS210jlU4VCWU0dezxw9vCDAI6uGSe/9CSU
	nNY2xqaidtavcjXX0qSFnYXPD/cuaPk=
X-MC-Unique: KkfoPayANwun8_0gN-bfng-1
X-Mimecast-MFC-AGG-ID: KkfoPayANwun8_0gN-bfng_1776689853
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776689853; x=1777294653;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w2uRAJSy4ynB5oV88Hsb7yDvFYTjDrgmtczhBmyHFMk=;
        b=JRh0c1jLcHNJblxSkcnY2oK6djIQVe+/vesJCnm//r3lrtTNweaHtOpgy8u6OFABGF
         ZxdTfE5SIhej6wjZvtDyXtKSP+anYAqX6XEfL7aCrjoq8vERfVTfAEJmw7uDIKgfD/lR
         /IS1Hye8AQAD3i3JCUS+rMkBz9uo9Azyqadg3qXK1DQYlwev1TdI+EKcuNc9iOAGOtQY
         rRt04I7RdpEHUnKtVfGkai0dpNCMtZ9cQAXmwr8NdFMhksgGcB1zSADSXfPhnHaEJxF3
         6/CU+QPPVU9O1dhd8Y9R3NrP+JMpGWDOPvnzOVW1myU3HraUQZDtECVtOlS5u9hJvg5D
         lAug==
X-Forwarded-Encrypted: i=1; AFNElJ9Zcec+RrMAUtbHpMbcnsAKEJvuhGQNTlka5EPSkrqRyABmJuKdJn+Iy1mjLY77+VcsOsJg8goHfTwH/Ps=@lists.openwall.com
X-Gm-Message-State: AOJu0YwWB9BNM6TplJ4ES6ahCVNsqLXJk5/DRZ0kHwgt+5nVkj46rY6t
	GIdDJ4jBJHpm9sR0R31AtJg1wl/29S+pxPoYwxQRmFesMTRypln5PHTcphhzZx225p92UviNrsC
	qMlXth296DW7oUz1LpO6LxxOZQ7Ij0FlOoGvyRZQKWL/2MoyDiH/2K+b5vydMltpDur29SnJ/TU
	qw8zDxB+H3BqajtcVxbPmcne6aA+RdrCYuOkCHVS5ggH2o
X-Gm-Gg: AeBDievD5wVrru1j/juuw8gsC7krCFDd22SKzI5rT0j9ZcHgqtsVM1MSwWpCX4l8XkI
	7HoTnA2Adp1qz0iyHEoNUW1sNd/ydXGQBuOnvv90xG5+6Fc4OR7URXS9dY0HNptk7B9fQ1mauBO
	wpKzp6TClHYp5FlzEERO3Jz/TQb5PEOhcrwdvJRpUI+4QqzTnRxtlKrr95GZq5mwE1UXm62rWIp
	WmHtD1HzpfHGsAIbNkgq4xLd/vf3bkXxRM/kb+Sh2cOZ1i4JFKig0eREPS0J4lbyoY+X0d52vjP
	J/YMh2NqsIGa2k3ErR5YWyanrxnqH8AD1F7gb7fWSF3Rkav4gidID+ecL5JDazAUbYQZMNO35F8
	BX0DOYSBnCVQas8YrVzUC6QuadzccX4JXINWuUZr3hXIxeRtIJhtHkWs/Fw==
X-Received: by 2002:a05:690e:134a:b0:652:e1f6:2437 with SMTP id 956f58d0204a3-65311884b2fmr9073134d50.1.1776689852691;
        Mon, 20 Apr 2026 05:57:32 -0700 (PDT)
X-Received: by 2002:a05:690e:134a:b0:652:e1f6:2437 with SMTP id
 956f58d0204a3-65311884b2fmr9073110d50.1.1776689852183; Mon, 20 Apr 2026
 05:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <CALVEqe6a8yXmfG9R_v1rsBF0x_OSpJw_soxxk9-mSYUNHOMwjg@mail.gmail.com>
In-Reply-To: <CALVEqe6a8yXmfG9R_v1rsBF0x_OSpJw_soxxk9-mSYUNHOMwjg@mail.gmail.com>
From: Ales Musil <amusil@redhat.com>
Date: Mon, 20 Apr 2026 14:57:21 +0200
X-Gm-Features: AQROBzB9pWKVLfkZo7XG2VlpSEmlYlx_JQI3z6qCjFACEBtFQq_HfSp04DrYg6c
Message-ID: <CALVEqe4VR=Ae7Cp8FVQV=n2U3rGQNR59w0XK13HrxYLVCRd_rg@mail.gmail.com>
To: ovs-announce@openvswitch.org, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NCD_KDk5AR2mQUI3N56VgD4AnWn3557oEHImg9wmcuo_1776689853
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008472d1064fe3d73b"
Subject: [oss-security] Re: [ADVISORY] CVE-2026-5265: Heap Over-Read in ICMP Error Response Generation

--0000000000008472d1064fe3d73b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2026 at 11:01=E2=80=AFAM Ales Musil <amusil@redhat.com> wro=
te:

> Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Multiple versions of OVN (Open Virtual Network) are vulnerable to
> crafted IP packets that could potentially read out-of-bounds,
> leaking adjacent info stored on the heap.
>
> OVN supports sending ICMP error messages in multiple scenarios, e.g.
> reject ACLs, PMTU discovery via Gateway MTU, Load Balancer without
> any backends that are configured to reject a packet. The ICMP error
> is generated in the userspace thread called pinctrl. The thread accesses
> user-controlled packet data and copies some of it in the process of
> creating a reply packet.
>
> When generating an ICMP Destination Unreachable or Packet Too
> Big response, the handler copies a portion of the original packet into
> the ICMP error body using the IP header's self-declared total length
> (ip_tot_len for IPv4, ip6_plen for IPv6) without validating it against
> the actual packet buffer size. A VM can send a short packet with an
> inflated IP length field that triggers an ICMP error (e.g., by hitting a
> reject ACL), causing ovn-controller to read heap memory beyond the valid
> packet data and include it in the ICMP response sent back to the workload.
>
> The Common Vulnerabilities and Exposures project (cve.mitre.org) has
> assigned the CVE-2026-5265 identifier to this issue.
> A way to determine if any reject ACL is configured:
>
>   $ ovn-nbctl --columns match,action find acl action=3Dreject
>
> If the command above returns at least one ACL, the Logical Switch
> configured with that ACL rejects packets matching the condition.
>
> A way to determine if a Gateway MTU is configured:
>
>   $ ovn-nbctl --columns name,options list logical_router_port
>
> If the output from the command above returns at least one Logical
> Router Port with gateway_mtu in the options column, that port is
> configured to perform the MTU check.
>
> A way to determine if a Load Balancer has a reject action:
>     $ ovn-nbctl --columns name,options list load_balancer
>
> If the output from the command above returns at least one Load
> Balancer with gateway_mtu in the options column, that Load Balancer
> is configured to reject the traffic if it lacks any backends.
>
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The only potential mitigation is to remove or disable all affected ACLs,
> Load Balancers or Gateway MTU settings on Logical Router Ports.
>
> We do not recommend mitigating the vulnerability this way because it
> will also affect legitimate traffic going through the cluster.
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
> We recommend that users of OVN apply tthe patches, or upgrade to
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

--0000000000008472d1064fe3d73b--

