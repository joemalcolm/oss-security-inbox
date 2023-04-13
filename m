Received: (qmail 3115 invoked by uid 550); 13 Apr 2023 18:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8114 invoked from network); 13 Apr 2023 18:34:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681410838;
	bh=/ILgI30IHs1KxHXqEQ1bR75kI3rPuuojH0ygx5fpeF0=;
	h=Message-ID:Date:MIME-Version:To:References:From:Subject:
	 In-Reply-To:Content-Type;
	b=o/AUOV9WsLJSoaTpW8VjFWbOUxDehQil0O9E9sa2eAzdsu8rgppljceeWLg4LTXvq
	 3VpriUCKctgV9zDL+qUf81DCi4QexEThmDv4CFshG1RNo9DRtCKgibCfLH+E0RTCzQ
	 mo6Spl9DucpVD4d0r85OCXHkNvTM0hOQMTX4JaPW8wDb/c6Z63Yhg2kZniZf4M7b+5
	 B6IFJ53x1PXr8WaDNkXQ7F5lMzgqeaj5iB4E9t9//VghP4fiYoIrtdLN1SZRtuLQ6K
	 hOA+A9v7oJruo/2YtirCAPCdIxr5zLRve3v5mAWLz/dy3T8Eo58vRdxUVk1zfewsuG
	 Kv7OATr8HXyRw==
Message-ID: <cfaf0c49-2ca1-b7a1-76a2-f495d7f5f7b4@canonical.com>
Date: Thu, 13 Apr 2023 13:33:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
From: Mark Esler <mark.esler@canonical.com>
In-Reply-To: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] ncurses fixes upstream

On 4/12/23 15:40, Jonathan Bar Or (JBO) wrote:

> Hello oss-security,
>
> Our team has worked with the maintainer of the ncurses library (used by several software packages in Linux) to fix several memory corruption vulnerabilities.
> They are now fixed at commit 20230408 - see details here (https://invisible-island.net/ncurses/NEWS.html#index-t20230408)
> A CVE was assigned (CVE-2023-29491) - it's still under a "reserved" status.
>
> How can we ensure those fixes get deployed upstream, in major Linux distributions?

(distros maintain "downstream" versions of the ncurses "upstream")

Ideally, a security patch should only include security relevant changes. 
If a bunch of a documentation or miscellaneous changes are added, it 
makes backporting difficult (i.e., the non-security relevant changes may 
not be desired or cause the patch to not apply cleanly to old versions 
of ncurses). The upstream patch is already made, but that's what I'd 
recommend for future patches. If there's a regression as Alice suggests, 
that might be a good opportunity to redo the patch format.

http://ncurses.scripts.mit.edu/?p=ncurses.git;a=commit;h=eb51b1ea1f75a0ec17c9c5937cb28df1e8eeec56

When you publish the CVE json5, you can references the patch URL and 
relevant bug discussions to help downstream. Including the CVE number in 
the patch commit is also quite helpful.

Thank you!

> We've reached out to Arch, RedHat, Canonical and other popular distros independently.
Which email did you contact Canonical with? I cannot find anything 
recent for ncurses on security@ubuntu.com
>
> Thanks!
>                               JBO
>
>
