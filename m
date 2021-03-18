X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Thursday" "18" "March" "2021" "14:33:21" "-0400" "Sasha Levin" "sashal@kernel.org" nil "32" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 18   32/1330  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5261 invoked by uid 550); 18 Mar 2021 18:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5243 invoked from network); 18 Mar 2021 18:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616092403;
	bh=39jXoyJbAY2wvDeJTJh8uJBXHrAY6Etg3E3FVK8HUD0=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=bivGPVMj1xAL8o4yj+lI6etGUpTPIzdUZjEY+bsbo4+4zm8IWUoaM9JWLb7fI1wdK
	 5wtk6Uyc7M6wVY9ETL3XA4LO/mwYX0HUNh3aJpDpCdDpORxANRB4sg4xLH+tcGCNQk
	 ldE4MACP6GbpNXgLjLSWVLKBzZdlXUspqnO8m4AeYwOLU7gO3//ElNJkVseeXnJzH2
	 IgHJXLst7rVmC9Rav7uJ0Szp/qRA01AhO2hM3EPqSYuAR9DrBe2o93bayHtiMyXvmW
	 0FD4OVryMTAkWfw7vSHoQtSj6OtNMpD2dRIkRoMk/5r7gIXWXWV6W3wN7CJTYZ/Zi/
	 bkYkbWjd0WDCg==
Date: Thu, 18 Mar 2021 14:33:21 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFOc8bhUAKOgjfVS@sashalap>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <YFOLo/QrlgIrFotJ@wopr>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Thu, Mar 18, 2021 at 10:19:31AM -0700, Kurt H Maier wrote:
>On Thu, Mar 18, 2021 at 01:08:21PM +0100, Greg KH wrote:
>>
>> But none of that takes into account for the backporting of commits into
>> the stable tree, you need a different tool for that, which many of us
>> have our own.  If you use that you will see that the above commit really
>> is in lots of fixed kernel trees:
>>
>> $ id_found_in 3d63b7e4ae0dc5e02d28ddd2fa1f945defc68d81
>> 3.16.61 3.18.115 4.4.140 4.9.112 4.14.54 4.17.5 4.18
>
>It's not really Red Hat's fault that there are six hundred "stable"
>kernel versions, which each change approximately weekly.  It's generally
>not worth tracking, and it would not be sane to expect Red Hat to seek
>or announce CVEs for git branches they don't maintain.

I think that this is an excellent point: RedHat shouldn't be reporting
issues for "Linux Kernel" then. Look at the subject of this mail:

	CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS

It doesn't say "Red Hat Linux kernel", it just says "Linux kernel",
right?

Red Hat runs on a forked version of the kernel that has it's own set of
backports, features, and bugs. As you pointed out I think it would make
a lot of sense if they would instead start assigning CVEs for "Red Hat
Linux Kernel".

-- 
Thanks,
Sasha
