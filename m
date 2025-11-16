Received: (qmail 12242 invoked by uid 550); 16 Nov 2025 20:05:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12214 invoked from network); 16 Nov 2025 20:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763323528; x=1763928328; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fuTZT7cMNCL79lmG5QYjzykszDHesFbCBK2f0VzMl6Q=;
        b=l7wf5v0Jip2KSLzO28O7VTnux8GIuXdiFk8C6ts//R1sk2XQjliQvk8ZhOBvZAy7Zf
         qRgabcJig3/nBXNenp9yot1/TkcgphdnB3dO4C3pbAKo902k72M6EHatXcR2Kap3qs7q
         /of0emLup21kPgebt24rgXQmznuHYxBcNDp+Xta3Cf+qq4oKLrC1NH96EUKaLCc93MC2
         jcv/MY7S8GrYfKg4zDuUTl9ZOYTMt1G9omRklhFXZ+xR87IRy163lGocqEUgM1XQXhfb
         bAaA8ZXaGtgSVRCRujK6XAaVrli/4O4inpiaQHAv4Pn4dS/dK2BQlFUDRebhDzvdkFuS
         gs1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763323528; x=1763928328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fuTZT7cMNCL79lmG5QYjzykszDHesFbCBK2f0VzMl6Q=;
        b=B2dgjh6sPhoiqlLOUINZh3sH5Bek7REnwkQHtrjFYTwUZn8TRafiaa2vi2Jb5rTHYs
         z1Tr39TivdCOrgFNICVHvFRm0TQHxTfZB5LnYJS9MDxVxmzuqPwvPw5GzSBjF9WP0wen
         +q/mR4dIUBV0YluKYL6ddm2O8FkE9sv3rrd7FwIHclgUiNnm7YZ39JxYqMxIW31kiH1m
         IRhn3rLPclR7u9UjdqJkaMUdtrsjnxuhTMEbJA25mv2tE8ppetxjzwWO4u6TvMgHuRYe
         FTdapyYmjXlHhLebDtBvBPnB4s0upg82fMcAjAQytkwF33X6o0b82s5m4ae75HcQQmIS
         ATTg==
X-Gm-Message-State: AOJu0Yw5Hv1i81xa3i/Tj3WIwPLhOlPUVRgDn+V0C9EZY3YgM+H/2uh2
	JgN6vxM8T25D68j+5N3Ga5VMbkQHq4ONS7BZalLR5yt8OGMsBvbw2UIfI5k8H2l6
X-Gm-Gg: ASbGncttom5m0HqKn4tdEK0GWU7L0Y6bo53BZlSKMw7Ium59h4vW3cUO7jjUz8K1A4x
	8LVpvrmLwJl6jPf+5xTeXYNktULcRW8o/OjBdFVgZt3f0taw5O0m2lXITowxwfjmxMfmbG/5bbF
	zFS1I8DIwqqLWRiCDFb7I6erkXcnHPnAUIW1eVzgPtGBfvcvPxfskLkyA6IaBT2QKaJAvDzkr3K
	AiuDPMtnjFu9OvVnrxDvjmRKkq3UqVU+Fi9YOFhvSwDTbYkcsSfNcXHjsL3PNZHZBCUZtQiLTBF
	temsYPpOf/EaH6ATKqxnD/KxrLOsiXS6jeTBIgnef1xWH7ZKRZINrS4R2t1VCMZcsXvkQT6/Z4D
	oBOp9wAHzTrDuDB27WYrbtP4TPOIb1ihEYDSPfioQTHe1czDGVPz7XhUx0xvoyvfX/1RPlm91qA
	toRYnFuxSJBjw6WYYBTYYUTgOgMXiggc2djtbT4uLL5usH
X-Google-Smtp-Source: AGHT+IFIQqy3BxKN9PWhVehHn4ZjnAI8aroUzBstFzroPr65M4avfo04KfvGTRPXYD2baziDCQsc5A==
X-Received: by 2002:a05:6000:401f:b0:42b:3220:941e with SMTP id ffacd0b85a97d-42b5934de4bmr8715875f8f.19.1763323527962;
        Sun, 16 Nov 2025 12:05:27 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 16 Nov 2025 21:05:22 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aRougshWykMOeEbb@eldamar.lan>
References: <aQoVOMxbrWQ7JzCV@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQoVOMxbrWQ7JzCV@yuggoth.org>
Subject: Re: [oss-security] [OSSA-2025-002] OpenStack Keystone:
 Unauthenticated access to EC2/S3 token endpoints can grant Keystone
 authorization (CVE PENDING)

Hi,

On Tue, Nov 04, 2025 at 03:01:12PM +0000, Jeremy Stanley wrote:
> =========================================================================
> OSSA-2025-002: Unauthenticated access to EC2/S3 token endpoints can grant
>                Keystone authorization
> =========================================================================
[...]
> Notes
> ~~~~~
[...]
> - MITRE CVE Request 1930434 has been awaiting assignment since
>   2025-09-24, but once completed will result in an errata revision to
>   this advisory reflecting the correct CVE ID. If any other CNA has
>   assigned a CVE themselves in the meantime, please reject it so that we
>   don't end up with duplicates.

Have you ever heard back since then for a CVE assignment? I guess it
felt through the cracks?

Regards,
Salvatore
