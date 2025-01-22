Received: (qmail 26154 invoked by uid 550); 22 Jan 2025 19:15:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9716 invoked from network); 22 Jan 2025 18:56:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737572198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dS2wHG1LWKhdnC3vMORBN37MxaiWHBaAWO4DNgbFS4U=;
	b=YFdA3pMY4tFC/sySk+pP21e18SujSDW7rkPUpqpFdiNUuqKv66fvd1a0Oypu50k25CRBmU
	qcVrwGWkzoDUWqhmbprDXhI5opqPNFIxFzEFWAneDe1Y5y8vkVh9MhTlY5WW3YFMcU+wza
	CMBJw7VIggtC9DnCj7NF4MBDQp/ybO8=
X-MC-Unique: fG5shvRkPY2nQedml2e96Q-1
X-Mimecast-MFC-AGG-ID: fG5shvRkPY2nQedml2e96Q
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737572196; x=1738176996;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dS2wHG1LWKhdnC3vMORBN37MxaiWHBaAWO4DNgbFS4U=;
        b=dzlk1eSh1Ybxj1BoSVzevik2hTBeBB6vtVr9zA+rDCqgg++zXBonhPFdP2eQMpZpjq
         gf5NfbGRSNvmmXAv8vThjshRu7+PGGXxKb/H1xtfa8HucZQxSOcsS/R2CKJJv9BiFV19
         mHjCKGggiPX5zMpVenZx61Q1b/WvCdTemcwrYBAyYeDIr1ri+7MPwC+o84A2tJ5yGcxK
         7EPoaGwtojDUBLFkNFs48+7I+Lzo0zU1mBXBTwzepA+ZQBk0itJRUl2ff+neRETlaBHX
         LKyl7BlB8Ws9iaFvVaFigyOdiBC9jBpEmN9cfAWKb8oF8/aHg1cKPO8dsSZu43RbYNUg
         1C2A==
X-Gm-Message-State: AOJu0YwAzYawXaQTvw+mEdjZK1V5K/o2A8Vgkv0el1KCUlWpGKX/w1er
	duKHWX21XxiyQyCmbd//HUNlPfb1wOJkO2MRYpXOTBwRam37DUzAclPnfXnqn622BSELbCazVye
	ww+aMMtTk+0P+g0sOh7HtjF3t8sIIf50zdaXDiV1bCrUf5cywglePbJ3XidHPsFRcd6NZbR3TbI
	L5o3vFOiTPkInmcDRZNpK2mKwPbuWzoeMIKX86lFG5yrgCXYHV2Q==
X-Gm-Gg: ASbGncso0h0uz/eSJYHnOi0LQ+QKw3NEQGYLFe3891dYCktm5joYJZPPvqhJLWufm6Q
	6B2GWgFrM2JtS57qKdIfIWCLqqA2tp1Ue/BBeFdZg2AFiqPH+Bzd8eqqvf3dAzhOc03Kyg1TN0u
	pjg+HsYpwCxaSCPCpbVgXk9/nYvlANv2wogq/ItKsyTPAGT3Y7mYVQVYyfwvj6lsIt1CiO9xpJh
	Lww8ALJrJ1TK8fcOt849aSvSU3nEfL6KGjQ53EKyrPPx8vm4cGEqoKZVE5Qn8L1BG/g/TaeYg==
X-Received: by 2002:a05:690c:b82:b0:6ef:60db:5e8d with SMTP id 00721157ae682-6f6eb65894bmr155610687b3.4.1737572195701;
        Wed, 22 Jan 2025 10:56:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFKTg9Nr25iO/pkaCgPgFv0qmf6uQfkst8IrGcN1Sj49bTK9NNUzntDBUN+RdCgonaNhjWQjQ==
X-Received: by 2002:a05:690c:b82:b0:6ef:60db:5e8d with SMTP id 00721157ae682-6f6eb65894bmr155610307b3.4.1737572195091;
        Wed, 22 Jan 2025 10:56:35 -0800 (PST)
Message-ID: <90517d36-940a-42c3-904e-286bf2a0d98f@redhat.com>
Date: Wed, 22 Jan 2025 13:56:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Mark Michelson <mmichels@redhat.com>
To: oss-security@lists.openwall.com
References: <24e58df0-1efb-4832-b71c-a8548c4cdae0@redhat.com>
In-Reply-To: <24e58df0-1efb-4832-b71c-a8548c4cdae0@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AaAn5bFKqGRxzIVKSuLGBDbLVim14DBfhgPsmF4LZsA_1737572196
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: Open Virtual Network egress access control list bypass.

On 1/21/25 21:00, Mark Michelson wrote:
> Note: This release had to be fast-tracked because the security issue was 
> made public before an embargo could be lifted. We are awaiting a CVE 
> assignment and will update this advisory with the CVE number once it is 
> assigned.

CVE-2025-0650 has been assigned to this vulnerability.

> 
> Description
> ===========
> Multiple versions of OVN (Open Virtual Network) are vulnerable to 
> allowing crafted UDP packets to bypass egress access control list (ACL) 
> rules. This can result in unauthorized access to virtual machines and 
> containers running on the OVN network.
> 
> OVN provides rudimentary DNS caching as an optional feature to speed up 
> lookups of frequently-used domains. When this feature is enabled, due to 
> the OpenFlow rules that OVN installs in Open vSwitch, it is possible for 
> an attacker to craft a UDP packet that can bypass egress ACL rules. 
> Egress ACL rules are those that have the "direction" set to "to-lport".
> 
> The OVN installation is vulnerable if a logical switch has DNS records 
> set on it AND if the same switch has any egress ACLs configured on it. 
> The switch is considered to have egress ACLs configured if the switch 
> has an egress ACL configured directly on it using the "acls" column of 
> the logical switch. A switch is also considered to have egress ACLs 
> configured if any of its logical switch ports are part of a port group 
> that has egress ACLs configured in its "acls" column.
> 
> A python script (vuln_test.py) is attached to this advisory and can be 
> used to determine if your installation is vulnerable. Run it in a 
> location where "ovn-nbctl" is installed and can access the northbound 
> database. The script will print to the console whether the installation 
> is vulnerable.
> 
> Mitigation
> ==========
> If the DNS records being used in OVN are accessible over the internet 
> without using the built-in cache, then DNS caching can be disabled in 
> OVN by clearing the "dns_records" column of all logical switches in the 
> northbound database. Here is a command that can be used to accomplish this:
> 
> $ for s in $(ovn-nbctl list logical_switch | grep uuid | cut -f 2 -d 
> ':') ; do ovn-nbctl clear logical_switch "$s" dns_records ; done
> 
> Doing this will incur a latency penalty for DNS lookups since the lookup 
> will be carried out over the internet instead of being looked up in a 
> local cache.
> 
> If OVN's DNS caching is required on the deployment, then a second 
> mitigation might be to adjust ACLs from being evaluated on egress to 
> being evaluated on ingress. ACLs whose "direction" column is set to 
> "to-lport" are evaluated on egress and are vulnerable to being bypassed 
> if OVN's DNS caching is enabled. ACLs whose "direction" column is set to 
> "from-lport" are evaluated on ingress and are not vulnerable to being 
> bypassed if OVN's DNS caching is enabled. An ACL can be evaluated on 
> ingress as long as it does not attempt to match on the "outport" field. 
> Ingress ACLs are capable of matching based on the results of load 
> balancing if "options:apply-after-lb" is set to "true".
> 
> There is no one-size fits all command line solution for changing egress 
> ACLs to ingress ACLs. Each ACL rule will need to be evaluated and 
> changed over if possible.
> 
> If DNS caching is required and egress ACLs are required, then the only 
> mitigation is to adjust the topology of the virtual network so that DNS 
> caching and egress ACLs are not on the same logical switch.
> 
> Fix
> ===
> Patches to fix this vulnerability in currently supported versions of OVN 
> are as follows:
> 
> * 22.03.x: 
> https://github.com/ovn-org/ovn/commit/f22a1ba9c127795bebcfbd41d772bb071f893a6d
> * 24.03.x: 
> https://github.com/ovn-org/ovn/commit/70618a65fd49f1d1d5498927c0bed63e296dafb7
> * 24.09.x: 
> https://github.com/ovn-org/ovn/commit/249c52ad011cacb4c182dc64e88977ac7c61f668
> 
> The original patch is located at:
> https://mail.openvswitch.org/pipermail/ovs-dev/2025-January/419993.html
> 
> Recommendation
> ==============
> We recommend that users of OVN apply the linked patches, or upgrade to a 
> known patched version of OVN. These include:
> 
> v22.03.8
> v24.03.5
> v24.09.2
> 
> Acknowledgments
> ===============
> 
> The OVN team wishes to thank the reporters:
> 
>       Marius Berntsberg - marius@redpill-linpro.com
>       Trygve Vea - tv@redpill-linpro.com
>       Tore Anderson - tore@redpill-linpro.com
>       Rodolfo Alonso - ralonsoh@redhat.com
>       Jay Faulkner (Openstack VMT) - jay@jvf.cc
>       Brian Haley (Openstack/Neutron) - haleyb.dev@gmail.com
> 
> In addition, a special acknowledgment is due to the Firewall 
> Misconfiguration security research team at the University of California, 
> Riverside - firewallresearch@ucr.edu - 
> https://firewall-research.cs.ucr.edu/misconfiguration/

