Received: (qmail 15647 invoked by uid 550); 3 Aug 2024 19:23:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15599 invoked from network); 3 Aug 2024 19:23:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722713022; x=1723317822; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+mo0fXpdFTofeDUWol/PHjeogZRKDnuKDzaEun+jEnU=;
        b=Rs5YmJlvqb7nB+YGvhHhY+NFfLvx5J94qSu33ZWFORgpWlbf+nk14b6olM0KYUxnuA
         sFpBOnKl56Nv6PXRoUqKqETTvR1ZArEpEg1R71J6bnPKYY3/oVmUzgdC51Ff1GAajQcv
         il/xrPlGtVAK6KXaig5OiCJcHJsJ/Q9DZLfFF7nBVvTOuZOnWiY4LztNuxM8jSMjbAio
         J7swImH6GBVuYAT/W1Jd7jzNdlgwFo5a0gQEYXmMAGrOXjaUOhft7KnlAyo69Vk39abd
         jdRMavdyoGPhwrdghb2oNLxsMg2igtTKF7UtXLRMZCIolyToaqpopY04YLUCVVRopkRg
         leQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722713022; x=1723317822;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mo0fXpdFTofeDUWol/PHjeogZRKDnuKDzaEun+jEnU=;
        b=RjtaLW0oAnTKesRgkRIyYU+GXV1a4OQH3va1ozyG3papKvLg42payjORmHTKXb0tlA
         qdioGw71LNHkF/wMEPwRPx0G2T+E1DrIMluY8TXNtlJN4Ni182b0MK9yL6XxuL4jACay
         kVjyzvI27PuVvia5rhUaKImaBgfiJPzhGIQdX3sELRLb5hj1Z3cRoTaEe7LnizJEN+KW
         y9Uw4Gb4bng7wR70o6/3y39phjjmB9id3y3l194ZC4kxldybM/ZnQqKkVl1caEUOPPXA
         HERwe0nX6OxF2tYFeLk2GYPRt6cobAU0jh06BA+fGiGQmG6ZeJUMiEtBYUG/U+sm7h5y
         vmzw==
X-Forwarded-Encrypted: i=1; AJvYcCVebxfNgHeSqc+cb207pzRH5VgcthUblaz6Fgq3/umnZRIZCnpYXgd3IbFnGJduH/rx+teNxND9rxXvZ6H406M6mnepQgamrUSTNjbQPEbW
X-Gm-Message-State: AOJu0YxTLkVcqGHoyc8ewwjcvXDw8dFe9POP2IsgmUnN2Un8Z6mOX+C2
	pUCoCL409uKDaeRiD2pYqPBuG+pQHEzc/vB6PwuHYoOFlLgHcvNH
X-Google-Smtp-Source: AGHT+IEelEZRT6dtds/CG3xAGYX54VwyRNlgwb1+MXqxieBg0ei8NVpSZFXGHd1Twfgozz4xL7O5aA==
X-Received: by 2002:a17:907:1b0d:b0:a6f:dd93:7ffb with SMTP id a640c23a62f3a-a7dbcb8f6ccmr751046266b.1.1722713021879;
        Sat, 03 Aug 2024 12:23:41 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 3 Aug 2024 21:23:40 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Dane Bouchie <dbouchie@iradimed.com>
Cc: Solar Designer <solar@openwall.com>, Andri Yngvason <andri@yngvason.is>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Travis Wise <travis@wavesquared.com>,
	"security@raspberrypi.com" <security@raspberrypi.com>,
	Simon Long <simon@raspberrypi.com>,
	Moritz M??hlenhoff <jmm@inutil.org>
Message-ID: <Zq6DvMRVDEMv4ZLk@eldamar.lan>
References: <6ef58613-e37a-4ad4-b5a2-e99f664b1404@email.android.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ef58613-e37a-4ad4-b5a2-e99f664b1404@email.android.com>
Subject: Re: [oss-security] Neat VNC Security Vulnerability

Hi,

On Fri, Aug 02, 2024 at 02:46:48PM +0000, Dane Bouchie wrote:
> This issue is basically CVE-2006-2369
> 
> On Aug 2, 2024 10:41 AM, Dane Bouchie <dbouchie@iradimed.com> wrote:
> The client chooses the security type, so they can pass in "None" to the switch statement. is_allowed_security_type() now prevents that.

FTR, this issue has the following CVE assigned:

https://www.cve.org/CVERecord?id=CVE-2024-42458

Regards,
Salvatore
