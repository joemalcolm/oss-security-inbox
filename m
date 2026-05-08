Received: (qmail 30239 invoked by uid 550); 8 May 2026 01:34:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20023 invoked from network); 8 May 2026 01:24:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benhays.org; s=MBO0001;
	t=1778203462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dLyHSi+AkVfiAWL7tR3TNaQdOn8+gsTltBEe1FOgHgo=;
	b=aczz9fTTgj5REe/M4vJOIEtBGI8YwfVUpvXVkRZuz644tc3ipeAkAl56eaH5NXNGYhcAcm
	AqKc6zSZxp9BwYzPVysU/cTlH7yZUlBBYWHWbfQddhHB1PcThzenwoF/oPymy5bzkSk2Ch
	eYwvUdDMo3A6q70Fy+thPI3dBnkyp0E9OTeNZ+moUVAA8NwBmSSXMWI1L1U9rDol7ygSbm
	7HJ3D4Cu2Gn3CAVG+8cpp0nYs+Se4KTkJ+3LNyrSvYC2hPOAqvvHROiH/eKD8oNIG0zrQl
	X6hSKxHFTDSpWr8+jx9opFnjwApLeG1SpeBpLNVx5k/uBGewwZ5sQrJV5f92pA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of ben@benhays.org designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=ben@benhays.org
Message-ID: <d9038011-c2e9-407c-b28b-8461e995df1f@benhays.org>
Date: Thu, 7 May 2026 21:24:18 -0400
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
 <20260507174811.GA4838@openwall.com>
 <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Content-Language: en-US
From: Benjamin Hays <ben@benhays.org>
Cc: axboe@kernel.dk
In-Reply-To: <6e6f95c6-3880-4b11-858b-82c47d991d3f@kernel.dk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE request: io_uring zcrx freelist OOB write

On 5/7/26 18:28, Jens Axboe wrote:
> I won't comment too much on this to avoid offending anyone, but I'm a
> bit puzzled by:
>
> "Once we have the address of modprobe_path (from KASLR step above), we
> write our script path via /proc/sys/kernel/modprobe: c
>
> int fd = open("/proc/sys/kernel/modprobe", O_WRONLY);
> write(fd, "/var/tmp/evil.sh", 16);
>
> This sysctl entry writes directly into modprobe_path in kernel memory
> and is writable with CAP_SYS_ADMIN, which we already have via
> CAP_NET_ADMIN on container configurations that grant both."
>
> as surely the point of a local exploit is, in fact, to gain root in the
> first place. If you already have CAP_SYS_ADMIN, what is the point?
>
> But hey, someone wrote a blog post about something that sounds
> dangerous.

I'm not the original author of the blog post, so I can't speak for their 
intent; however, I imagine the impact for the proposed scenario would a 
container escape of some kind? It's not exactly uncommon to see 
containers with lax permissions such as the above, given under the 
assumption that the underlying containerization technologies will 
provide a sufficient level of security.

