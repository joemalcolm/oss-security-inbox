Received: (qmail 30266 invoked by uid 550); 20 Mar 2024 14:42:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9257 invoked from network); 20 Mar 2024 00:28:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
	t=1710894746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T8X+BJP1l844ahPE8bVYYJx+YsFzMCU/N0F3Gv1ACOM=;
	b=vDrH3pvteOKU+F3GVlpb9J5FnCeof4o/XGKq+rDTR14730nNyLoOWTjO5xFAFVJ8503BI8
	5aeLlrTnepTikppSVj/HkhB0ZKLJ7oKxVaRLAyFbVzk3TcBhYs118Y+yz8k+ymNY7kLs2B
	JOVDjxg7LYEkRQeT8WIplh9AGbmJeRMVAV2dI8P1Kvx4mW7IMhuV6SW0Hmo3BCXHfJ/oYl
	E/XlPN0Pnx3ak+y73gv/lFGsID7ix3rxi45Yn5JdLDsRDcTdZfI/8qe2aiH+fsmd7oiGPl
	3ZQ/xBfbrkNTr4wb+B3lYIgcbJBo4S2JQV6oSEMF7ib1zT7aHIVyFcAnxW6ZZQ==
Message-ID: <8e716095-2a6c-4e39-bb3a-064a3c482f2a@hauke-m.de>
Date: Wed, 20 Mar 2024 01:32:25 +0100
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com,
 "Alexander E. Patrakov" <patrakov@gmail.com>
References: <425c87ae-3998-49f0-8403-fe953f7d08a5@x17.eu>
 <CAN_LGv1HwD5t9PSDfy779voo6oOiUoBu+UmD+nJg0QhE1oAi+w@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <CAN_LGv1HwD5t9PSDfy779voo6oOiUoBu+UmD+nJg0QhE1oAi+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] 5 Linux kernel ksmbd vulnerabilities

On 3/19/24 04:30, Alexander E. Patrakov wrote:
> On Tue, Mar 19, 2024 at 6:11 AM daniel <sd@x17.eu> wrote:
>>
>> Recently two batches of Linux kernel ksmbd vulnerabilities became public.
>>
>> Please find here an overview, the attached ZDI information and the
>> corresponding links to the Linux kernel cve announce messages with
>> further information.
> 
> I am personally worried about the situation with OpenWrt which would
> need a new stable release to address this. However, they use a manual
> backport of this to the 5.15.x kernel.
> 
Hi,

OpenWrt 23.05 uses kernel 5.15 and the ksmbd implementation found in 
this upstream kernel version. OpenWrt plans to do a new service release 
23.05.3 in the next days anyway with kernel 5.15.150. This should 
contain all needed fixes.

OpenWrt 22.03 uses ksmbd from https://github.com/cifsd-team/ksmbd in 
version 3.4.7. This is probably affected by these problems.
Maybe we will update this to 3.4.9 or backport the patches fixing 
security problems. OpenWrt 22.03 will be EoL in April 2024 anyway.

Hauke
