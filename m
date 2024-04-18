Received: (qmail 1167 invoked by uid 550); 18 Apr 2024 00:11:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1128 invoked from network); 18 Apr 2024 00:11:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1713399084;
	bh=wR0NiR0bUP7YXsUYH5pfSLQMR3WAvCSzdLX3d2fHTag=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=YGGGFLaW3xp4V+FuGY2YuXKYJOpRzJDof4RDj5j4t8JAiUQs6WMhP/puZYaATmbbX
	 tra6KPAqH5smVRJY+qwl90iBgt1hIuYBu6pnqyr4pyr04EIFUo/bYYvgQu6Rr9IQJ6
	 gCKP83nVXUmD2iy3h7FUIxS4TZYJZHdqG96zAi6Y=
Authentication-Results: OpenDMARC; dmarc=pass (p=none dis=none) header.from=ucc.asn.au
Authentication-Results: OpenDMARC; spf=pass smtp.mailfrom=ucc.asn.au
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1713399084;
	bh=wR0NiR0bUP7YXsUYH5pfSLQMR3WAvCSzdLX3d2fHTag=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=YGGGFLaW3xp4V+FuGY2YuXKYJOpRzJDof4RDj5j4t8JAiUQs6WMhP/puZYaATmbbX
	 tra6KPAqH5smVRJY+qwl90iBgt1hIuYBu6pnqyr4pyr04EIFUo/bYYvgQu6Rr9IQJ6
	 gCKP83nVXUmD2iy3h7FUIxS4TZYJZHdqG96zAi6Y=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 18 Apr 2024 08:11:24 +0800
From: Matt Johnston <matt@ucc.asn.au>
To: oss-security@lists.openwall.com
In-Reply-To: <661F3331.3020408@gmail.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ed2715be-e7a0-4a7f-a3fd-7041f6c6fa49@fu-berlin.de>
 <Zgmn06K3C-nY83YH@codewreck.org> <20240331202502.GA21116@openwall.com>
 <20240416225900.GA23474@openwall.com> <661F3331.3020408@gmail.com>
Message-ID: <4eaf6a34fd8459284e1a6967c68db93f@ucc.asn.au>
X-Sender: matt@ucc.asn.au
User-Agent: Roundcube Webmail/1.3.17
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On 2024-04-17 10:25 am, Jacob Bachmeyer wrote:

> see that particular slowdown?  (Not the backdoor initialization making
> sshd take longer to start up---a running sshd taking longer to reject
> a session for a nonexistent account, unless Andres Freund forgot to
> tell us that he was running sshd from inetd and thereby including sshd
> startup latency in his measurements.)

Recent OpenSSH always re-execs for each incoming connection (for fresh 
ASLR) so it's always similar to inetd startup.

Cheers,
Matt
