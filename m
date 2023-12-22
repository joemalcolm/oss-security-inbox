Received: (qmail 10168 invoked by uid 550); 22 Dec 2023 22:35:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24154 invoked from network); 22 Dec 2023 21:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1703281485; bh=M0bZceip+tRghZvbhAjQRe7XOUyNO3/Zr/bBSRZ7EuA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=oteJ+3og9FLv4PCB0W8vZmMuL5OK6AuCxkCON0E8YbdSb/oPwaQf+MZYqkZK4Ujue
	 +PlLzgCU7XR0gLI0qn/r0SAt/zIwEUn6q67+odD4A+9r0eKOvSWbruvPHj6aHv0sfU
	 GW3jNxqdu6xWh1DJ5SpDW87KEMaFwaYiSZYjlMz/ONYhrQjTnUqbYjLLn9QbCejKEM
	 XAUSVEewYWd42fk4YTAQNgTDJXmBefbvWFx6OWXZnQnEbVSCZSF5aGJtw6duXyldte
	 0mTxvWzdDn3sY3y0ssI+g9gpIrzUb88q8z7jbhnJwkd65Zp/KLpc/Hu+seRESXXmIr
	 nv3i/l02dL3dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1703281484; bh=M0bZceip+tRghZvbhAjQRe7XOUyNO3/Zr/bBSRZ7EuA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=eejYaR1M20W6ROu0ol2E2HZYaQdsxWWklTMVv0qJmSQYEgYb1BjsAelK34UQswyVi
	 NE+DH2wtXIqKUftpIu8UVHDqYJPIdMFAYBoAFu3SJQHUL1iSCtOUTs+0dAIiPrONEc
	 idVLfjDdBc99jft8xIYUV1ejLrYof0mQITuqLFySa0ij+7mDadz40Gj5RQsr+Sq4DV
	 taNqSmTdALVjE+ofVGPD0zAPLB1RVJ0yW+DeSkWea6nNX6cJJCyyZEtkYFLuUq9fgd
	 LNwy4rmh+xF+Sud40m9rvxte1X1RA4RADvO8DUfCrcw0VfC/GM2ZrTfwZ8bMQmbUhN
	 JOiqAPkaJV81A==
Date: Sat, 23 Dec 2023 06:44:25 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: oss-security@lists.openwall.com
Message-ID: <ZYYDOSmzhWZu8OxS@codewreck.org>
References: <ZYTxUd61RYu91Sf2@hhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZYTxUd61RYu91Sf2@hhost>
Subject: Re: [oss-security] CVE-2023-6817: Linux kernel: use-after-free in
 nf_tables

Xingyuan Mo wrote on Fri, Dec 22, 2023 at 10:16:24AM +0800:
> I found a use-after-free vulnerability in the implementation of pipapo set
> in Linux kernel nf_tables, which can lead to DoS or local privilege
> escalation, with CAP_NET_ADMIN capability required. The bug is fixed in
> v6.7-rc5 kernel and the patch is:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=317eb9685095678f2c9f5a8189de698c5354316a

For anyone who'd do the same thing:
 - that commit marks Fixes 3c4287f62044 which was introduced in 5.6
 - it's already been backported to stable tree (5.10.204, 5.15.143,
 6.1.68 and 6.6.7)


Thanks,
-- 
Dominique
