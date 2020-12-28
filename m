X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2082" "Monday" "28" "December" "2020" "16:14:59" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XMVKLjFtBRR_9Gie7tOpxpMjdd8ESqgfbt_OwfG58i9PA@mail.gmail.com>" "73" "Re: [oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" nil nil nil "12" "2020122808:14:59" "[oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" (number mark "U       butterflyhua Dec 28   73/2082  " thread-indent "\"Re: [oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree\"\n") "<CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>" ("<CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-27815 Linux kernel: jfs: array-index-out-of-bounds in dbAdjTree" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3315 invoked by uid 550); 28 Dec 2020 10:03:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5971 invoked from network); 28 Dec 2020 08:15:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Zyh0HDrINa8CQsOawgdd1T8OccTvdCUM+E8PwTgR6E8=;
        b=BwyBee06VEpLIDd5aCDW+s8it0HTGmbTfSvVEgo2uYkLqpfyy2EWjWjzxxtIrs8PZy
         JNREVaaUM+bFq8gCLfo98/gmfX+oAFthQD7J+OrZ6IEmw+ox06JJ8o9uaJvB/lPuJrra
         hjgZUDlMZ7ggoU+Th1GYgEt9ArndzW+dEWgcwNtDOsoCVGNQJ5N9+7H100G25wotPBzI
         TAjEOYgWUdmYKgMNlojSxOxhpKl0t1uLXfy2AEoq2pOFpwAii4QhVbMYG2i/f93QVhjB
         IjQrImJfq0RXChuPJTNnXxZHVB0Jij/h59zAGms1PuqtsoO0ca7lZ54+JXZfTAZOwwfd
         rJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Zyh0HDrINa8CQsOawgdd1T8OccTvdCUM+E8PwTgR6E8=;
        b=EXl27d8sdAGgD7CApvx3NzL1eqojKN20GoW6Pvd2ms4n+HW4ydIYQqVJiDfcvE0IeQ
         3qvRSP6VPtjTrdDL+IOqnzo2llGEojuQVArvReKHp0gMuu46mNcDAEcNo81HEueZQJIc
         3YWSf/aS2dRBWZfmRF+BoRCJckNfm3/ZEasKcD1LHQ2vfRaODsyQnHBCWjqLfFP5eGj+
         IX3Mc7e/tIlDsZG13OmpEIXgwvBcrD5EVUQ6kM299Gz7EpHfAV4BG8S8LZTaZbx2rOEx
         En2lzxOS6130JN+jNs5Px/Wm2vL2OUjy7ogomrowkuYBQSHbBL5Vo2FX+4Va3rLB21Al
         IN/w==
X-Gm-Message-State: AOAM532vImrvOOBTg0Y5V03Hrdgyjv05m1FGDx2Dm87RhnlbzwfsobIP
	UP6WWxQl9RsUhyvTg9BvU12Svfr3rRt6AuvVYPFhAtdv1jyiIQ==
X-Google-Smtp-Source: ABdhPJyzVhPhNR6TBMOKNC0rLn9Rd0VGdtM21zUe2IwofBIo5M0YH5YrTxa9MMG01F1o2CJG3tqWg7bgfm/Sg7iMx1c=
X-Received: by 2002:a25:7c43:: with SMTP id x64mr66279946ybc.267.1609143310116;
 Mon, 28 Dec 2020 00:15:10 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>
In-Reply-To: <CAFcO6XMCxbHjiHFWUoFW5jcwfOrgz3atyW_MfHaQ4Akv6XF4jw@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Mon, 28 Dec 2020 16:14:59 +0800
Message-ID: <CAFcO6XMVKLjFtBRR_9Gie7tOpxpMjdd8ESqgfbt_OwfG58i9PA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006469e305b781dfcf"
Subject: Re: [oss-security] CVE-2020-27815 Linux kernel: jfs:
 array-index-out-of-bounds in dbAdjTree

--0000000000006469e305b781dfcf
Content-Type: text/plain; charset="UTF-8"

Patch for this issue :

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c61b3e4839007668360ed8b87d7da96d2e59fc6c

Regards.
 butt3rflyh4ck.


On Tue, Dec 1, 2020 at 1:50 AM butt3rflyh4ck <butterflyhuangxx@gmail.com>
wrote:

> Hello,
>
> I report an array-index-out-of-bounds bugs in fs/jfs/jfs_dmap.c in
> dbAdjTree and reproduce it in Linux kernel 5.9.6 version.
>
> Description:
>
> In the Linux kernel through 5.9.6, there is a
> array-index-out-of-bounds in fs/jfs/jfs_dmap.c in dbAdjTree and it may
> cause out of bounds read and Denial of Service.
>
> Root Cause:
>
> the dmtree_t is that
>  typedef union dmtree {
>  struct dmaptree t1;
>  struct dmapctl t2;
> } dmtree_t;
>
>  the dmaptree is that
>   struct dmaptree {
>   __le32 nleafs; /* 4: number of tree leafs */
>   __le32 l2nleafs; /* 4: l2 number of tree leafs */
>   __le32 leafidx; /* 4: index of first tree leaf */
>   __le32 height; /* 4: height of the tree */
>   s8 budmin; /* 1: min l2 tree leaf value to combine */
>   s8 stree[TREESIZE]; /* TREESIZE: tree */
>   u8 pad[2]; /* 2: pad to word boundary */
>  };the TREESIZE is totally 341.
>
> the dmapctl is that:
> struct dmapctl {
> __le32 nleafs; /* 4: number of tree leafs */
> __le32 l2nleafs; /* 4: l2 number of tree leafs */
> __le32 leafidx; /* 4: index of the first tree leaf */
> __le32 height; /* 4: height of tree */
> s8 budmin; /* 1: minimum l2 tree leaf value */
> s8 stree[CTLTREESIZE]; /* CTLTREESIZE: dmapctl tree */
> u8 pad[2714]; /* 2714: pad to 4096 */
> }; /* - 4096 - */
> the CTLTREESIZE is totally 1365.
> The dmt_stree was used in dbAdjTree. Since dmt_stree can refer to the
> stree in both structures dmaptree and dmapctl. the stree size is not
> consistent, may it cause index out of range.
>
> CVE assigned :
> CVE-2020-27815
>
> Patch:
> It's in linux-next now, not available in upstream.
>
> Credit:
> This issue was discovered by the ADLab of venustech.
>
> Regards.
>  butt3rflyh4ck.
>

--0000000000006469e305b781dfcf--
