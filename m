X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2357" "Tuesday" "22" "February" "2022" "07:35:10" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "41" "Re: [oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4" nil nil nil "2" nil nil (number mark "U       carnil@debia Feb 22   41/2357  " thread-indent "\"Re: [oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30665 invoked by uid 550); 22 Feb 2022 06:35:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30642 invoked from network); 22 Feb 2022 06:35:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=zdmPPS7z5G7xME8QdVSe1LCf1w/MxLCoe1p96lRPJk4=;
        b=JxVqhfD+Lvbq6756+414b0Xxw8rF//lNtLFelZkpYf48FJZM5FCT/92TcLwQuyt+RE
         BI2aweKashYrG5W7kHThkt3p873HGMp2ulYpHjEM6mPVlVJt0CGH05nxVQpbk52SiiwL
         I6fTP+RoLq+w07zqUqSchEITDMHc6JP6rU0Hs4G69UUZ3hysVXSYuZO95m5WevixsHtR
         S3j/8+ptIDnQQSGndhc7LWug3F6CIGcxhgXQIkU7GaLVBYCMBBrnZJaZyjKJ3zNkuFtz
         US/AONMcqm0ps1Fj90grANdPcHwV2RYZt8Hjaq75VdgmwCN39z0mIbRR9zOJexej/SW4
         73VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=zdmPPS7z5G7xME8QdVSe1LCf1w/MxLCoe1p96lRPJk4=;
        b=mmzBnCsdxnBmd/UHEGnsiLGcIf1k2/1yXrBSxfuAyQ09GjtbwpMp7G2ndCnWRe5KsB
         Pb3ZKy0XB7B/b4RbOfzo5NsYCMQIDQUIRc51pFnMVlvGOGRG4/HGy9mm4FPVFmr3SgBn
         expVtuUPswA4mj1ysyoFtwQTnmfY5TwuBSsaeOJ7Vr1paU6MmtgS+lJKlFYVFsUaON+W
         V2eBMpUH8ti4ACFfk/oR6ESKUzYT4EMdhlAC7pN7R0g0lenlbBo4VoBQ8PYH7ZFAfyXv
         kTVjjmW2PhDwWXd7SIlc/Vqlo2IITqrxEVvd/FI4slQ8dWAXoGeMEfiHiB2zdBMbQ+ag
         X3FA==
X-Gm-Message-State: AOAM530GqpqhmI3g6HMPYrWtAJKunqIJdSnMUYt6d4hHs55d9sXsRQ4J
	v/EnGWa+2FcNiwK0H3UwG5u1VXeOCXS8jw==
X-Google-Smtp-Source: ABdhPJzWwQh4ysRVqubcPSth4Yjr/afZMMQnuJI+OrTfRC2H3IvRw5xzw7EJ90Y8OFD10E7zLyaWjg==
X-Received: by 2002:a05:600c:12d2:b0:380:8041:cf0f with SMTP id v18-20020a05600c12d200b003808041cf0fmr1947878wmd.91.1645511713232;
        Mon, 21 Feb 2022 22:35:13 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 22 Feb 2022 07:35:10 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YhSEHmSudhT0ig/f@eldamar.lan>
References: <07A9630F-EFEE-4232-BD58-523C27D0D535@sophos.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <07A9630F-EFEE-4232-BD58-523C27D0D535@sophos.com>
Subject: Re: [oss-security] Linux kernel: heap out of bounds write in
 nf_dup_netdev.c since 5.4

Hi,

On Mon, Feb 21, 2022 at 08:38:23PM +0000, Nick Gregory wrote:
> There is a heap out of bounds write in the function nft_fwd_dup_netdev_of=
fload (nf_dup_netdev.c). This was introduced in 5.4-rc1 by https://git.kern=
el.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Dbe2861dc36d=
77ff3778979b9c3c79ada4affa131, and is fixed by https://git.kernel.org/pub/s=
cm/linux/kernel/git/netfilter/nf.git/commit/?id=3Db1a5983f56e371046dcf164f9=
0bfaf704d2b89f6. I have created a sample LPE targeting Ubuntu 21.10 with KA=
SLR disabled.
>=20
> In nft_fwd_dup_netdev_offload, ctx->num_actions++ is used to offset into =
the flow->rule->action.entries array (nf_dup_netdev.c:67) when setting up d=
up or fwd flow rules on a chain with hardware offload enabled. However ther=
e is a mismatch between the number of times the increment is called vs. the=
 number of allocated entries. The allocated array size is based on the numb=
er of nftables expressions that have expr.offload_flags&NFT_OFFLOAD_F_ACTIO=
N (nf_tables_offload.c:97), but only the immediate expression type has this=
 (not dup or fwd). It's possible to manually create a rule with dup/fwd exp=
ressions that don't have a corresponding/preceding immediate, leading to an=
 undersized entries array, and an arbitrary number of out of bounds array w=
rites. Despite being in code dealing with hardware offload, this is reachab=
le when targeting network devices that don't have offload functionality (e.=
g. lo) as the bug is triggered before the rule creation fails. Additionally=
, while nftables requires CAP_NET_ADMIN, we can unshare into a new network =
namespace to get this as a (normally) unprivileged user. The reproducer cod=
e below demonstrates all of this, and will likely immediately panic the sys=
tem.
>=20
> This can be turned into kernel ROP/local privilege escalation without too=
 much difficulty, as one of the values that is written out of bounds is con=
veniently a pointer to a net_device structure. There are many opportunities=
 for one of the OOB writes to land in another heap allocated structure whic=
h then misuses it (type confusion, freeing it, etc.). Additionally, an OOB =
write could be landed in a buffer returned to userland, leaking the address=
 of the net_device allocation out.

This isse seems to have CVE-2022-25636 assigned.

Regards,
Salvatore
