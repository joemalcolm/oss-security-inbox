Received: (qmail 3305 invoked by uid 550); 13 Mar 2026 13:20:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3260 invoked from network); 13 Mar 2026 13:19:59 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1773407989; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=MEx5tS1JdyecTpALE7sOCBZCD4R4jgQeNej+HPkBG9U=;
	b=HOUEDUDwfLLEmVX95DNgFu/iUIRniyVxJghN7g9UZTdAJktkSPzcZwxjQ5UmoqnA7sdokI
	gqT6A3/f57JTtwCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1773407989; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=MEx5tS1JdyecTpALE7sOCBZCD4R4jgQeNej+HPkBG9U=;
	b=bUerAXOdjk1+bQ6jCdXvJCc6bQwDFmHxAu+G4xDO0K0aGZyhn9yl+RsaQWYCm0QojkGe9M
	InF8RTELW2w6k3kqNDilpgDKEcCY0L05SlLPvDxPzmSd89Bj909EmevmyS+QtqbvfbUaC0
	n9A6IzStG0Mu/qoaFYHCUnuqdpuuez/M4s9gkdXMGzkTIn9QkqvqpD6VPKyKBajWu5A4/1
	QLjB3nHuxJsBBkH/Kv10wduAC/hcdK14MlIntDxVS+cBcN+sMT5dbqFc4MrkksTNvxzFSJ
	ci3vJyeNMD8UZSs75sWcE3BnWr0Nlf9mLrWVCuvxTVv5JuWaJagQoA7Ep90JDg==
Date: Fri, 13 Mar 2026 13:19:49 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <abQO9W_P5gstPcXT@symphytum.spacehopper.org>
References: <20260313043738.8600-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313043738.8600-1-justin.swartz@risingedge.co.za>
Subject: Re: [oss-security] Some telnet clients leak environment variables

On 2026/03/13 06:37, Justin Swartz wrote:
>   OpenBSD 7.8 [PARTIAL LEAKAGE]
>   
>   The client blocks most variables which have not been explicitly
>   exported, but potentially sensitive variables such as DISPLAY,
>   XAUTHORITY and PRINTER are leaked without prior export.

ha, we've had that for a long time.

---------------------
Date: 2005/02/27 15:46:42
Author: otto
Branch: HEAD
Tag: OPENBSD_3_7_BASE
Log:
- only send exported vars (based on a diff from Solar Designer)
- fix some buffer overflows (also some Solar Designer input)

ok deraadt@ cloder@

Members:
        authenc.c:1.6->1.7
        commands.c:1.47->1.48
        externs.h:1.13->1.14
        telnet.c:1.18->1.19
---------------------

