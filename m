Received: (qmail 22084 invoked by uid 550); 13 Apr 2025 19:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3319 invoked from network); 13 Apr 2025 19:32:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1744572752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NyNABuKJ7+uVTWIv0SbDHwrwyvtCsSyF/BFPLpwYRvg=;
	b=FQU99Cl26s1Bj3Xa+8MV9dQfJWFsyt3Z0SK/JzKiw5j3MkToEArkDqKy09WUTG+5h7Qtke
	JjpxAbBHnsb9GJCijjm6+d+rehiSGlZITWR0ekw8DsQmEbWW5AosvjYkFyXX0V+JCGeI9a
	fkX7MKYG70SpfoTQf2wtbbn85nq9OnXmmz/ESYSux87vOhtQc/LKAhbOGqB9nhP8ma6xT3
	68NdogkVMgDsLD0e4TRDvnhr/+LFOnYbnB0nZHVCdf95RBVeA/IVQRRLhhA3BcaZCR6DMh
	9fmRrjT4jRJdwXKUIus88P80GfG2OOjTuOCK5lkzTwZsg5oqTl2aT/d/kbWJUg==
Date: Sun, 13 Apr 2025 21:32:31 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Message-ID: <ra5dq7grenapn6i4u4wjdogxpxaqhqpbhwu3hhj4bovr42pad6@zta4tml47irw>
References: <gawci7t5wtkbk3kj3d3wjqqyy6jshli6mnyimynu5cngjvtm72@chxdlvz3vhsi>
 <20250413144759.GA18912@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250413144759.GA18912@openwall.com>
Subject: Re: [oss-security] CVE-2024-56406: Perl 5.34, 5.36, 5.38 and 5.40
 are vulnerable to a heap buffer overflow when transliterating non-ASCII
 bytes

On 2025-04-13 16:47, Solar Designer wrote:
[..]
> As it was mentioned in the advance notification to distros, the issue
> was introduced in:
> 
> https://github.com/Perl/perl5/commit/a311ee08b6781f83a7785f578a26bbc21a7ae457
> 
> which is part of tags v5.33.1 to v5.41.10, so I guess those versions are
> also affected.  The fix commit is effectively a revert of the bug commit.

Hi Alexander,

Thank you for the feedback. We only considered release branches for the
affected versions.

To fix this, the CVE record has been updated to take into account
development versions and release candidates:

      Versions:  from 5.41.0 through 5.41.10
                 from 5.39.0 before 5.40.2-RC1
                 from 5.33.1 before 5.38.4-RC1

Best,
-- 
Stig Palmquist
