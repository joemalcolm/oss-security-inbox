Received: (qmail 16178 invoked by uid 550); 1 Sep 2022 20:31:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16160 invoked from network); 1 Sep 2022 20:31:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Gz6WgEJgUlsENLnW2DxROPnpVCN0hRKmPwO3FbxVnNQ=; b=WZF5GQJbOvbe7iWYbcCm7Y7K8D
	0e3ImL+aFLdRLr2zCM+bgGD2Eit0rxMKv7uy2vfTCvcBN4OA1mVhn2lV1nTXinINIGEfGkwdNgeUr
	BUWK/T/pW/2uE+8U5WWj3dNdVwLlnm1sPxS2ipj847uw1KAuZc+xtjSDwHk3KrU2CN0M/gX+OGYS5
	nSLMSb2wmvJBnMMeiu6ByvBUtgWY5FUx8o1Y2c7snIiVVYZeOSE/cCV277uEfh510gghYpOp7Rdis
	+CVu1t1VylnsndkzJTCKFMYqvpDC0o6sVycZTigUv8o0eu///JQ4UuEveFpBha1A8f2Ge4SndNDmg
	lTtyjrnw==;
Message-ID: <e9e07db7-9456-4015-5241-8a7e6e80ab0a@igalia.com>
Date: Thu, 1 Sep 2022 22:31:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
 Demi Marie Obenour <demi@invisiblethingslab.com>,
 John Helmert III <ajak@gentoo.org>
References: <b2f4c0a2-695c-7744-2397-269a1e588c31@igalia.com>
 <YwhTtN8duEhxo1hY@gentoo.org>
 <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
 <Ywz/hDw3dwvhYlua@itl-email>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: oss-security@lists.openwall.com,
 Demi Marie Obenour <demi@invisiblethingslab.com>,
 John Helmert III <ajak@gentoo.org>
In-Reply-To: <Ywz/hDw3dwvhYlua@itl-email>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0008

On 29/08/2022 20:03, Demi Marie Obenour wrote:
>> We (maintainers of Linux WebKit ports) don't have access to the security
>> issues affecting Apple products until those issues are made public by them.
> That is unfortunate.  I thought you would have access to embargoed
> bugzilla tickets.
> 

We do have access to the tickets on WebKit bugzilla that are marked as
security-related and are hidden from other users by default.

However, we don't receive the information about which WebKit fixes will
be included in any Apple security update until those advisories are public.


>> So, we didn't knew until August 17th of this issue. Also you can see
>> that the bug report itself or the patch doesn't has any indication that
>> it fixes a security-related problem.
>>
>> Therefore, the time it took us to notice the issue, backport the fix and
>> do a new release was just 7-8 days (from 17th to 24-25th of August).
>> Which, honestely, it is quite good taking into account that: 1)
>> back-porting the fix was not straightforward since it required
>> back-porting also a few previous patches in order to be able to merge it
>> properly and that 2) we are in August and people is usually on holidays.
> Was backporting needed, as opposed to shipping a new minor version?
> 

It was. Fixes land in the master (main) branch. Those fixes don't
necessarely apply or work on the branch of the last webkitgtk-stable branch.

A new webkitgtk/stable branch is forked from master (main) each 6
months, and once forked it receives cherry-picks from the main branch,
but it is never rebased.

We release a new major stable version each 6 months (2.XX), and then we
backport fixes doing minor relases (2.XX.A) for 6 months until the next
major relaseis out (2.XY).

See:
https://trac.webkit.org/wiki/WebKitGTK/StableRelease
https://trac.webkit.org/wiki/WebKitGTK/2.36.x

