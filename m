Received: (qmail 7394 invoked by uid 550); 23 Jan 2026 19:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7360 invoked from network); 23 Jan 2026 19:21:39 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1769196090; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=qRsvW8u4LmTgVq7YPWBMkcOndx2wXuk7XrTqRfFy22I=;
	b=K4FIw55uHHw2PgewophTUavg5MBRbdu5jUJI3ajx30uyaHGp19pAhV0/b/Sg7CfzY5dHbo
	Porrmbrm9fXPnMCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1769196090; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=qRsvW8u4LmTgVq7YPWBMkcOndx2wXuk7XrTqRfFy22I=;
	b=Wzm+w1AisIDpDnaaYOBAiJ7hUdFgsey4ZUYeAED5ue9sogGGJ1B/kajsFDSR3Lfxt3fgsE
	dcxAjI1lTNFgbJ09LmrD2ZoJZd9M++0uVRLv+A+C30X1ofkIOHnG3hg5FqPefcs8liUBha
	IMFvEPNE0/ANXOExH+d81ow278fgtTyaQ3h4isq/o4+JMCHM9G5zecKsPHUk3qehnOegVy
	nmlWhIEFbelkjGE36+pMsyDUOMWFUlYQlXBfRR5KED2EBZ8Aobn9gIxGOCZAqy/DnjsFHA
	Zw7aU4cIcS19jycY67pLZxjeaHXJBo99CCcyOi8OBB7J+RF4J8A0zISlMAwwvw==
Date: Fri, 23 Jan 2026 19:21:30 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <aXPKOvcPCd_ARqpQ@symphytum.spacehopper.org>
References: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
Subject: Re: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

On 2026/01/23 11:06, Alan Coopersmith wrote:
> Of note, https://github.com/dabeaz/ply now bears a banner:
> "This repository was archived by the owner on Dec 21, 2025. It is now read-only."

And the most recent commit added to the readme:

    "After 25 years, I've decided to abandon the PLY project.  No further
    maintenance is expected.  At this point, there are many high-quality
    parsing libraries that you might consider using instead.  Or you could
    continue to use PLY by copying it into your project. Or you could write
    a hand-rolled recursive descent parser.  I don't really have a
    specific recommendation (although writing a parser by hand can be
    a fun challenge)."

