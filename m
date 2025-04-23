Received: (qmail 19476 invoked by uid 550); 23 Apr 2025 15:50:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7634 invoked from network); 23 Apr 2025 15:38:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1745422706; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=29K9eNgK2yQvKaJ9anC9VYsqPknYtseeuU2h06ASJVk=;
	b=yUJBqCRveLy7oARnAj6ADwt6Ns6rhsKSx5RZWUb0C74M1SD2VbQyoxGdcX+Z4JmGkwusYK
	PjzuUntWXVxq12wZJ0gm60/JGnRKGh7m2l/AC0iSeB8hXiU5DXCjKmBE0N5ur/dNt4ToXz
	k56/LRWFJj30YQ7AUgt3euZt+T6uCm4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1745422706;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=29K9eNgK2yQvKaJ9anC9VYsqPknYtseeuU2h06ASJVk=;
	b=ljVl8jAB+tTaGXtLkMKEzyOVP50gkCDB//J1HKfuYaNTKBdnHsRpUhlTUxW6NeUgGSQN5g
	nZTFaKtK3Mnil3Aw==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=yUJBqCRv;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=ljVl8jAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1745422706; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=29K9eNgK2yQvKaJ9anC9VYsqPknYtseeuU2h06ASJVk=;
	b=yUJBqCRveLy7oARnAj6ADwt6Ns6rhsKSx5RZWUb0C74M1SD2VbQyoxGdcX+Z4JmGkwusYK
	PjzuUntWXVxq12wZJ0gm60/JGnRKGh7m2l/AC0iSeB8hXiU5DXCjKmBE0N5ur/dNt4ToXz
	k56/LRWFJj30YQ7AUgt3euZt+T6uCm4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1745422706;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=29K9eNgK2yQvKaJ9anC9VYsqPknYtseeuU2h06ASJVk=;
	b=ljVl8jAB+tTaGXtLkMKEzyOVP50gkCDB//J1HKfuYaNTKBdnHsRpUhlTUxW6NeUgGSQN5g
	nZTFaKtK3Mnil3Aw==
Message-ID: <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de>
Date: Wed, 23 Apr 2025 17:38:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
Content-Language: en-US
From: Ricardo Branco <rbranco@suse.de>
In-Reply-To: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

I reported this one in busybox's netstat a year ago:

https://bugs.busybox.net/show_bug.cgi?id=15922


The whole code needs a security audit for ANSI escapes like this.


Best,

R


On 4/23/25 4:11 PM, Ian Norton wrote:
> https://bugs.busybox.net/show_bug.cgi?id=16018  (awaiting CVE)
>
> Busybox's cpio and tar tools will print un-escaped filenames when listing and unpacking
> cpio and tar files. Malicious files containing filenames with terminal escapes can be used
> to mask or modify earlier or later files in the archive from anyone running busybox tar or cpio
> from a terminal.
>
> see also https://lists.busybox.net/pipermail/busybox/2024-July/090806.html
>
>
> https://security-tracker.debian.org/tracker/CVE-2023-39810
>
> A unpacking a cpio archive can escape the working directory. Due to #16018 it is possible to
> mask these traversals from anyone using cpio to inspect a file before unpacking.
>
> see also https://lists.busybox.net/pipermail/busybox/2024-July/090851.html
>
>
>
>
> Any email and files/attachments transmitted with it are intended solely for the use of the individual or entity to whom they are addressed. If this message has been sent to you in error, you must not copy, distribute or disclose of the information it contains. Please notify Entrust immediately and delete the message from your system.
>
