Received: (qmail 15472 invoked by uid 550); 31 Dec 2025 00:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5813 invoked from network); 31 Dec 2025 00:07:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767139645; x=1767744445; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8CTIrnAUteIDJI5YHEcG/DQw1beMW4XzLCTUDFXqPg=;
        b=EZoNqU5jWhGR9pR8WmChnZgX2fbkbW58VyOqbbGbRyHZxuOr/u2LHPSMPRdEjHskJd
         O5ay/BbwgbAHu3Yg/4hRtcxgk6OFxKwXonr6ytJoUae4igkJimpLH0PgIDAfTAYvj2jZ
         nTQKZOsqXcgQCh2VtIvU1jym61pMMKhsCrSHt9eacSQeeSq4lVhVbEctKoNc8uLTBzpe
         rGFn4Uhg9R1DKW+1TandN4OivH2ipjs7wNCOF9vNKAV5SRz2iZ+1YxrjkokhFYE9WRCD
         Z0CcO64zkETaeD2ovgrlY9t/M95Oon9LkqFcHzPyX5AZ/iIm3utzkOfnuAI2dfpszWlI
         QbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767139645; x=1767744445;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q8CTIrnAUteIDJI5YHEcG/DQw1beMW4XzLCTUDFXqPg=;
        b=nDeQmSXb2LerBfdm2X6WEo2yoYr5AUnRNTLXTi/snYcUbWrfXWEpWtK9y9jDvw2qvn
         XTFUPZXchQmEjEM1uVP/lLxeb6WHjKayz0UGmmrV2VE3l4nK0wFF04x+RsWc7cInaRNd
         5jMxq+NcWrkFMbCqrpEUFsKRMgJzoGoM9Wd03Tt+FewOTJFLy1SKBo+6BMtQZIavrudO
         hPmoYoiJldUzG56STcMTcJjKABsmDu/tFqqshKczkisiZkO/xYLygiEZ9E3QB4URjiwz
         UNFAs8/GepbS2c6Q73AL1n0SlPZRKn1Ty4vP9gWdTRQBIOn66qkFj63cpI8vX4QfeGi2
         Cs/g==
X-Gm-Message-State: AOJu0Yxr1lRLmrSlMi4I5LmrGa7JEFrW6Obbe9ZLCl+3l+XBvNVglUxb
	Y9zGgS591qh/Kb2Vg38xt8ofwEyQefwyIomOLzIBaBV6vqmyl65L4j4SColAQw==
X-Gm-Gg: AY/fxX4ydRVJbVKyGakdu3iv4bzG8+0LZrq37sikUG75VRouRIYI3+uUYBAILSDx88N
	QgLfFk/wBJWL6Q36T+Xdr8UCzcX83pCKVdV4IReMzjThUFP2fG38X8jzIqIvpO7/zsFSScLRLha
	TUyP62iDyfnY81FtU3LiAPgXX6K9/EmrxE5bvVaHdqoMP6o9cypXY8adc5DmtOgI6l6uOGrlPje
	JPry5tiXkh2AFUuW5WA1oNbCMPL34AFc5K1IYLyK/gL+a+CybF81qV4RfVm93BKZraZOhKDsT//
	GiKBbTbl2rjhWKI3GUlUbHuNKwzk+wvSMYFZnq94Z53t8mFzTIxa5J0//7Gfl1wl/iLMxkDyBm+
	OB+JuAL844jMzwYoh6R8GvpcEvXc2y+xxLkjIRNl/FjH/pxZcIpal3/xb+nZErxG6ngunqunw5H
	0UDQM=
X-Google-Smtp-Source: AGHT+IFmU3VDsxk8LLOKnrtEwKBgo4tQ/ch8ig3tQQWCaIDpaUtRpCiMlUsvIXqCcvikfLm2Fl0cBA==
X-Received: by 2002:a05:6a00:3284:b0:7b8:d12f:90ae with SMTP id d2e1a72fcca58-7ff649e44fdmr31366658b3a.21.1767139644809;
        Tue, 30 Dec 2025 16:07:24 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Henrik Ahlgren <pablo@seestieto.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <87h5t7aa7r.fsf@noux.seestieto.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
	<SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
	<d46c3c34-0fa8-4b79-a624-b7ccc9662ce8@gmail.com>
	<SYCPR01MB3661EE9E2D62A122A271AE98EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
	<87h5t7aa7r.fsf@noux.seestieto.com>
Date: Tue, 30 Dec 2025 16:07:23 -0800
Message-ID: <87bjjfh5tw.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Henrik Ahlgren <pablo@seestieto.com> writes:

> Peter Gutmann <pgut001@cs.auckland.ac.nz> writes:
>
>> Does anything actually use the cobweb of trust, or do you just assume the key
>> you've got is good because doing anything else is too hard?
>
> Perhaps the Debian developer keyring would serve as a compelling
> example? They even organize actual key-signing parties, which many
> cryptography experts today appear to regard as "LARPing" or otherwise
> ridiculous.

Or the Linux kernel [1].

Collin

[1] https://www.kernel.org/doc/html/v6.19-rc2/process/maintainer-pgp-guide.html#using-the-kernel-org-web-of-trust-repository
