Received: (qmail 27970 invoked by uid 550); 22 May 2026 01:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32587 invoked from network); 22 May 2026 00:50:58 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779411050; cv=none;
        d=google.com; s=arc-20240605;
        b=LZ0tv4DrP2UOmFHS+arTsQzjICUZWWbtS2uOFLnF8NOjW4QOI5TOvOSbCNVmiskr8h
         sIUUIlHvpCCLqH7RSw7S/nvvZ4GpF3hLK2KEC/WYPDT2VUWRo4jg35jEWV4wC5TBQXvR
         NlMOu9QFsmZp9SPHGPoAnKN4j+m6dyfMkqp0U0ikFvOywkrXmJ3J07NbvDnNuAoutYDN
         PVMbjZ0xZFra0qKupa2zWLLi5eMwgGpOuSgDq9yiNW19qvrrFfXtVAveEB/Q7l1YwnZP
         VLRBLYhuGaHO2TNjHLqrneTMwKhlR9WifRE2s0UOGY1G2Jzy8TUGZzNWew8C6Z9yM2cM
         ea7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qyjqAY5T6Sd1miZ6C9//NOVMHRPrshUnJFI9pyJXPyI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Nlwg2BWLhITN9b2sWV04ITugGevCPpIxHvohuy825R5iopINNeOTA8kMF1+wSZCCpA
         4K79VYlfw6vBbWvLekKPyfQXuF7zq3NehXFW5aSNa9H2MyVksMBIqOt5/WSBUiwv6FCK
         KPGD41haVLbs+bqgqAIhc5YKade1UVoiPfgF7LzrxpXNtThe6OkMsw51zrO8wjioPbHS
         NQI6PCgtEv3avUGd1AMx/iSTLVYqDtFZ8P8eRXNeORoJGIQqFFoEMclHa1rPxUv8QGtV
         U2cBrbfg9s5Vvp2RpWnymgmjCYoJtF/BMYRhGc4v5IyQsnTZu3YKlDUSPAQg3rrsMoFv
         0tmQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779411050; x=1780015850; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyjqAY5T6Sd1miZ6C9//NOVMHRPrshUnJFI9pyJXPyI=;
        b=NvBTQavGuQ87hMio8J6PTRC16ld+miLCuUODltq4iu0h+3Mhqss3uecL/pv5gYvyIf
         g1zcCcrOyyRUY81gLt95a0VKwjO3bkjXVH1OBXNuGUtqnAlNiiNQ8LI6WhbUmkfMc3fK
         nfBgtuoA2o3pIir47BYPW4PANdltVrgM1Ku+oiKfMF1BddTE7NoPVmvbMPGQFF0CLTHm
         MN6ky6bAi/YQMxkMIEZbkArovUaODv0QOob/aMrkUb/W6Qqb6Pid62hQ+uAdQ0+1sYIR
         hYkRQm5r4L2Wd/jVde7zYweEJb1FYlW/1AhTiTG2G7mAz2IMq8Ajm4hB+mSGPIJzHOtU
         61CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779411050; x=1780015850;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qyjqAY5T6Sd1miZ6C9//NOVMHRPrshUnJFI9pyJXPyI=;
        b=jg6kgXAV4tFibJyZxzfRu9OOiAGO8+gtUN91vNIr/L65SJ4VsdAMR8GG/iof/OnnDe
         zlDkHJyT9xkQ1LTPFDEbBC4Bzcagp9lCz5tfq5PHK3rz8ElxG2EPkiZrYbsgO3G4Lxvo
         qbekuYC3YuJn8jEi92qCbF/iZW+OMjHVgzdkZAoZB+EEUMsdbGIv9M+3fQvHmEnKPuUu
         sUG0w2SllUXGuNGq1ioJc1+lgyhh0rexxqqB5uaI1PETFXu2mn6is/SunICTXVlDeiFX
         BdD+DCiw8iVZrx4+hH+50+dNe3lJaGhoi8N5vaZbCr02z3Jcbv3B5jG5c2VprjKBmz+A
         20XA==
X-Gm-Message-State: AOJu0YwE4gdyvPMZ/r/n2SUqB8thPdq9n/el/lVgKQ8R1zQ8beoWuQDX
	kIhDmf63pAxIUahuM7dumqUteihXfzRl5NOXE7TqmtzI/yBKczp3UDlf9BPIORYDjeM6EKbB/D6
	ugLjaN65E6l/1SxjezXrEZxOq5qJ9Hu+5ZbLW
X-Gm-Gg: Acq92OHiTyFBWBpb8upTKZJTGWAM/EitdANOaLKmFRBOfq+1O9fbvXNYnLcm7MrX3mh
	AH1DIvAwew5tXT0gm72/8f4X1l2Yu46xFpWxt+PU60vBqe+giD0uwc825UsnqPOunhWwgNvuj1U
	CmFsvXT6uF0YoWJgBGSuA6z9/TvvFnrLAxmzich3sKIzzuXgBcl7NwBQBoXP5EMM9r5b0jTttxE
	JwNXrYbwrXHfBInZi68PLanFmbmjo9ldy7llDWIrrsZheMP0wWv/EyBet0+eMizGgQWYVibZgXD
	/VjkOb+7wLX9tJ9O9K7vjZsPQ3jwGwY2JeyRAyKUxs2FKD3E6Wc/p/vnJp4MYUdWbU4=
X-Received: by 2002:a2e:9a15:0:b0:38d:e744:8663 with SMTP id
 38308e7fff4ca-395d89f57eemr3492071fa.26.1779411049578; Thu, 21 May 2026
 17:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <agxXF1J53iSJIrP6@suse.de> <20260519151600.3ded0958@hboeck.de> <84Zg5p5I5P02YkgI@aceecat.org>
In-Reply-To: <84Zg5p5I5P02YkgI@aceecat.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 21 May 2026 20:50:12 -0400
X-Gm-Features: AVHnY4JZimEHXA8TR05HI7zXDEwrrUQWeyCvfgvFUplQgDSDmCrU7wr7kTVu2qs
Message-ID: <CAH8yC8miY2GTJex6rV+5XaE9O5uEf93on3v3pUqtbn4zShUOqQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Fixed: local root exploit in haveged, fixed in
 1.9.21, CVE-2026-41054

On Thu, May 21, 2026 at 4:28=E2=80=AFPM <nightmare.yeah27@aceecat.org> wrot=
e:
>
> On Tue, May 19, 2026 at 03:16:00PM +0200, Hanno B=C3=B6ck wrote:
>
> > You can also fix this by uninstalling it.
>
> > There's no need to have an "entropy daemon"... It adds needless
> > complexity and, as this issue shows, attack surface. There have been
> > many improvements in the Linux kernel's RNG (Jason Donenfeld, also
> > known as the Wireguard developer, did a lot of work on that) and I
> > am quite confident that there are no problems with the RNG on any
> > reasonably recent Linux kernel that an "entropy daemon" would help
> > with.
>
> Wasn't most of the problem on VPSes, where hardware reads are
> simulated by the host and thus to some degree predictable? AFAIR that
> was the primary target of haveged. And that's why places like hetzner
> still include it in their default cloud-init setup, according to my
> experience :-(

Virtual Machines usually cause headaches for two reasons.  First is
playback attacks, where a vm is restarted from a past and known state.
The vm will produce the same bitstream for a while.  Second is the vm
fork.  Two vms will produce the same bitstreams for a while.  Also see
"Random numbers and virtual-machine forks",
<https://lwn.net/Articles/887207/>.

In both cases, I believe Hedging Deployed Cryptography could have
mitigated the problems, but it was never adopted by the kernel folks.
Also see "When Virtual is Harder than Real: Resource Allocation
Challenges in Virtual Machine Based IT Environments,"
<http://static.usenix.org/event/hotos05/final_papers/full_papers/garfinkel/=
garfinkel.pdf>;
and "When Good Randomness Goes Bad: Virtual Machine Reset
Vulnerabilities and Hedging Deployed Cryptography,"
<http://www.isoc.org/isoc/conferences/ndss/10/pdf/15.pdf>.

In the past (circa 2010 or so), I recall a couple other problems, but
I don't remember all the details.  One had to do with the way the host
vm or hypervisor fed random data to the guest vm using the VirtIO
driver.  The second had to do with the way hosting providers symlink'd
/dev/random to something [wrong] to avoid entropy deletion.

Jeff
