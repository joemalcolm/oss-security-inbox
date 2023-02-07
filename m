Received: (qmail 7547 invoked by uid 550); 7 Feb 2023 19:26:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3909 invoked from network); 7 Feb 2023 18:29:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675794539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eo7Nmx/HpbyZt70ufBPk7q1ZBKvjPlj943ncR/fQffQ=;
	b=MOuVIO4bUjVsC8oyg+zaTDhwEUnq0CiRtMc5VNUIuVvS4bs0JZpFxOz5fJeV+D0XGpJtfW
	12h6aic1789iw16CAw6F40T01q9KAXWLS6jXZDLx17RcnY+YGv+/Hpik0pa54A2n5JMnrt
	RhDzSGjs7bOn0Jxa7bG3fThvVHR3El0=
X-MC-Unique: vOQ9IufINoqBvgwOV2hzsw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eo7Nmx/HpbyZt70ufBPk7q1ZBKvjPlj943ncR/fQffQ=;
        b=BzWDApu5b2oEMtTpfYPBs4RA7bkGsAQeIO/v5DQTnBCIbI45rubjVO+Cq9GoPRU8Xt
         39ZBCnD9zqSYsZIr9tfkzTKqyQJS0imHbVPTJii4UO+jEd8oiatK+taorfIgnURsNfb3
         ikiIRFOqgWLWKLkLt82bSlJmUUuCY6rb0ePq4R7s4nyTFS+O2JscnyMFvVROrDjWc9bP
         slY54T7p9KPIQvM4+DazCst97JF3C2yOELV/SobavDnT7K7/LF323tD7rHyQ+8HHLpSl
         5PUC+KjHi2TNKtRRJQTN+TEnLoggTl0rFy+dQFs2gqtHJGHFZo1igjDJ19nMk/MbYxly
         dpzA==
X-Gm-Message-State: AO0yUKX3gz6M08KEYL7axzUUnbQ0A2WbB01iYqWaPcD2sWKVWAfaGluX
	7YNtPvXTQke5jmzO0tJCQyt/4w/ZLRotVM7wcW2tZvg1prvgJqROk8afx3wfpfI6L/QDttEH+0r
	RbRoy1u8TC3h/6DCRZufbgXxsC6Ojv+e+JBAzqMDc3qPIjP2QGQ==
X-Received: by 2002:a50:8a8c:0:b0:4a2:b97:adc7 with SMTP id j12-20020a508a8c000000b004a20b97adc7mr1150455edj.27.1675794536258;
        Tue, 07 Feb 2023 10:28:56 -0800 (PST)
X-Google-Smtp-Source: AK7set8SR1mRV2y3Vy8+QLkc09KjSvV1F2F9H/oq+XIY7/WYo1qsLq4vP41Y3ZX4/UKuVnx5WuuclsmJ1j/aFr5TQqE=
X-Received: by 2002:a50:8a8c:0:b0:4a2:b97:adc7 with SMTP id
 j12-20020a508a8c000000b004a20b97adc7mr1150450edj.27.1675794535998; Tue, 07
 Feb 2023 10:28:55 -0800 (PST)
MIME-Version: 1.0
References: <9c37357f-5735-4162-8d81-8d47ce09036bn@googlegroups.com> <c4382a1b-b195-458e-a6f5-3e2f86ec1324n@googlegroups.com>
In-Reply-To: <c4382a1b-b195-458e-a6f5-3e2f86ec1324n@googlegroups.com>
From: Michael Dawson <midawson@redhat.com>
Date: Tue, 7 Feb 2023 13:28:43 -0500
Message-ID: <CAH0iFcYFkYr=QkM1QN3x5CxWWw_zkh1GpoZnDEw5_trg_oszRw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000008f5d605f420522e"
Subject: [oss-security] Fwd: Node.js security upates for all active release lines, February 2023

--00000000000008f5d605f420522e
Content-Type: text/plain; charset="UTF-8"

FYI

---------- Forwarded message ---------
From: midawson <midawson@redhat.com>
Date: Tue, Feb 7, 2023 at 1:27 PM
Subject: Re: Node.js security upates for all active release lines, February
2023
To: nodejs-sec <nodejs-sec@googlegroups.com>


Sorry I managed to mess up the link in the original update, it should be
 https://nodejs.org/en/blog/vulnerability/february-2023-security-releases/
<https://nodejs.org/en/blog/vulnerability/february-2023-security-releases/>

On Tuesday, February 7, 2023 at 1:11:54 PM UTC-5 midawson wrote:

> The Node.js project will release new versions of all supported release
> lines on or shortly after Tuesday February 14th 2023. For more information
> see:
> https://nodejs.org/en/blog/vulnerability/february-2023-security-releases/
> <https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/>
>

--00000000000008f5d605f420522e--

