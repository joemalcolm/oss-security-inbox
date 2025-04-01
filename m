Received: (qmail 14005 invoked by uid 550); 2 Apr 2025 00:42:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18039 invoked from network); 1 Apr 2025 23:32:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743550320; x=1744155120; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FurYCxlaV8jBbXs1U2drSe8zyTTYrNdTdf7WOitiZtM=;
        b=LfvMNU9CxWLy4lQ0YbFF6MuaIQNFEAy55qUViQbR9PkEeuhEaX4V2N2IMc8HeyOQYr
         lHEyRdt0s5DWJ2ub6l/Nku2ZjSiStZ8MIvCRcapi2Bm7GxxF9mNQU4x4YFK1PJRWGihU
         Rnc9tgVrUioPCbeqBHo+9+jUdnDK0qYnVw46s9WgvPQ9dcsjYT7v8o40eyJ1YtZn0JRK
         D22qTuhe+VqasocNuOeM34u2ckQbZbKAVyhknR8WvrmcneLTkFnzfSfTZmjkp6CU1bzi
         0BkllQOGlITWwzfRI07C3waEszRgk36FijxU3ghfOLfI++n4ATd8Wik3FtsyHo2dscfq
         7sCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743550320; x=1744155120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FurYCxlaV8jBbXs1U2drSe8zyTTYrNdTdf7WOitiZtM=;
        b=c2XFZniSdO1Q6pLe64sFaAqYJFmM70yMlIgPPMDgARrV0+Wt+EWlhiq0u615NTmbyg
         lSEXvBKeK8+QpUF0PaRHzIwtb2ebWLcA3w7zqM9iY8sSdcuAEYTo7U2IzRMLgwOtcNzZ
         tM+jQv+3orHBeu1B++NG5w2zSxO9+drdlsMUJ1ZhLuvjcPOINjc5ERMBl5bcoK2nFfdG
         N92OG1z/w2h0ABBsrUe3TNwkUcbTUGx5flqMVDL41Q9XC18eaqqP/zXZwxLH1f++mu64
         mc95Mwokaf8vlEIn6GrjaWxD0kWQVs8RqUnudKjhbGELxH5UG1Hcv/O274ri4/8qDYju
         3AlA==
X-Gm-Message-State: AOJu0Yzcxk9OsmCcp84v/BUJ5TIbYZLlmcHntk4ySBNNuNf8P++sppEA
	cOvQINTnkZwcmAkT+B56S5nj8s4ix+aDj2iPsX8yVwCDXEldwo7FIrwtUw==
X-Gm-Gg: ASbGnctpP6b8JTE/jTeb64ie2sOhS/mPf+XQErFyT/vrrKfO7C8adT95tC0TgrUsVRt
	wGUXTs9O/nLd1dpyugzs0vgr78kh66i9f7AcLoXe7ApQtgXW2ZYw0aJ30gVNmrAinoVpq5f3g8d
	fbnsf8tWVNtn2P+fIt3SlrZistb/ysomlp3rC3bh+M2OxTtRJR3a3+flm3Gm+E7Ez14zyvsECyB
	zwnxH8r0XhZ2yoU6TvO/TN2SdM2bt6zYORopleK0OMDuncScEsB+J+a+8S9o+0X5LfMBGoLwh2U
	jEtYHpxy4T9JSUX7BDdq92RoOABwiqMHPytnSSq/aQ==
X-Google-Smtp-Source: AGHT+IGyJRcG8M67P9csF7uu/bk1uVUWApBN8KWNmtHFNtVD/brVhp/A79Fa4BamABjjgoHOEts+Ag==
X-Received: by 2002:a05:6870:1493:b0:2a3:d9b3:3d01 with SMTP id 586e51a60fabf-2cbcf6c7fd3mr10303863fac.29.1743550320050;
        Tue, 01 Apr 2025 16:32:00 -0700 (PDT)
Message-ID: <2f4d59da-0ac3-4b1e-98f7-dae9c23ddeb9@gmail.com>
Date: Tue, 1 Apr 2025 18:31:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Enxin Xie <linkinstar@apache.org>
References: <429849a9-9c33-6734-470e-5dbee3555f96@apache.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <429849a9-9c33-6734-470e-5dbee3555f96@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-29868: Apache Answer: Using externally
 referenced images can leak user privacy.

On 3/31/25 21:44, Enxin Xie wrote:
> [...]
>
> Description:
>
> Private Data Structure Returned From A Public Method vulnerability in Apache Answer.
>
> This issue affects Apache Answer: through 1.4.2.
>
> If a user uses an externally referenced image, when a user accesses this image, the provider of the image may obtain private information about the ip address of that accessing user.
> Users are recommended to upgrade to version 1.4.5, which fixes the issue. In the new version, administrators can set whether external content can be displayed.

This hits two major pet peeves of mine:

First, only versions through 1.4.2 are vulnerable, but the issue was 
fixed in 1.4.5?  What about 1.4.3 and 1.4.4?

Second, the short description is *not* an accurate summary of the 
issue:  there is no public method that returns a private data structure 
here.  The possibility of planting a web bug (this is an ancient issue 
and the reason better email clients block references to remote media by 
default) is *different* from Apache Answer *itself* exposing a public 
method that leaks private data.

This issue is more akin to XSS, except that web bugs are older than 
JavaScript.  The "leaked" IP address originates from the *user's* 
machine making a connection to retrieve an untrusted resource.  Perhaps 
"same origin" should have been imposed on images, but it is not.


-- Jacob


