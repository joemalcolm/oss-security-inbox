Received: (qmail 28241 invoked by uid 550); 3 Nov 2022 19:19:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22160 invoked from network); 3 Nov 2022 16:32:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FQofclfn1gKK6ebvetFjopFHZI8qpUCqfT/oGjwJxyo=;
        b=UJX43ScnP1xid0TOif/Et+TkWOmewM/1AOQztdudKOnVmxHq+KyOzi/uqvU/P4p+aT
         uXo7dKkkPA7bsqx7kdLkaeW3ZdQJ7kGJMsii6ChkvEQgjEDhVYFM5qp6q346O2ZXt9AY
         UoxvmlO4ClbgwNzzo0lzAVyfCEEJjpsF4BfE/RIG85xn/Xyav86aGNh4cuwEKQY2Cxsc
         6+Svb0DQ5wTUXOgvGf+xsd7fpcyxIW83YSmKIhyqQ0uTzLGE+Qk00tZz/dK+3zCNyua7
         vUYuzQ/1WCNeU+gfMpKpCIbZyQeg4bFegILDK/33hke+kC2sHozYv5Dxj6EM5CEJ5iya
         s99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FQofclfn1gKK6ebvetFjopFHZI8qpUCqfT/oGjwJxyo=;
        b=VXk2wD9TQXtZwyiQxrH6+rbwuRZGeD30B23pMBcOMy5uaNo6+RddkjcOdZVPcp1/4a
         7Gyn9+yGbjdruOSZVVOFuOrMr/MuFwwBh/8gSqdG1L0pDjEZNf9WTA/8/3VxbpsUuNsS
         QvzCBVNCNBJqapmPui9DwMq3tXdf4DZn1BMw1l1mIQHUZbns35v1n0SBsmZ6JOkQxqxu
         5UKtAeuKqgR5XTA3GPzbr4knK4+4T/7mPWpwzS6TvZb+dy9wV1+oFrppJpZgZHUEg4Ab
         tBtLuIUPvMZ2BvtvbvsprQq7m3qcmoF4RBfpe5atPiMcUfydfgD170zxbHythnttYQSB
         CIlQ==
X-Gm-Message-State: ACrzQf1ny3o88kUb8RDZevJkTYHOzFzUVqpKDi1xAp5kUUELOIcO2jiB
	kpWTYrXW9bp06jxLUWQlO3Bimsqb1sA9eb/oCV+pB5eUJ2U=
X-Google-Smtp-Source: AMsMyM5R2rFqF1t2ujePRRHdrVRhzTTfMHdRayZ29F3/IJbR+A1oAnO2zHmm4HyFzySpz8oWvr54uz5DiA8FWNime7g=
X-Received: by 2002:a1f:ad49:0:b0:3b6:d5d4:99dc with SMTP id
 w70-20020a1fad49000000b003b6d5d499dcmr17989943vke.37.1667493155652; Thu, 03
 Nov 2022 09:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <20221101170833.GA10470@openwall.com> <20221102150921.3ab3f2d0@computer>
 <Y2K1yOB7748iGI2P@wopr> <tk0n6j$10pr$1@ciao.gmane.io>
In-Reply-To: <tk0n6j$10pr$1@ciao.gmane.io>
From: Nicola Tuveri <nic.tuv@gmail.com>
Date: Thu, 3 Nov 2022 18:32:22 +0200
Message-ID: <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)

I can also add that at least this member of the OpenSSL Technical
Committee is following the discussion, and I believe I am not the only
one.

The feedback shared here on oss-security is read and carefully
considered, and I know it will be discussed within OTC to continue the
ongoing process of improving the OpenSSL project and its procedures.

I totally concur with Tavis Ormandy:
> this is active prolific opensource security researchers discussing their opensource security work on the opensource security mailing list :)

Personally, I'd like to thank you all for the feedback so far, as it
is in itself a contribution to the project, even when it is harsh and
reminds us of our mistakes.
As long as it is kept polite and constructive, as it has been so far
here, all feedback is very welcome and valuable.

Cheers,

Nicola Tuveri
