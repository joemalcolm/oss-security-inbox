Received: (qmail 5548 invoked by uid 550); 18 Jan 2025 20:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5530 invoked from network); 18 Jan 2025 20:02:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737230542; x=1737835342; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9nPmMQ8ct3IBdhlKUoLM+qDZ3JU2RPYn6okCI3Hbfw=;
        b=drvyrR/joHyS9rdCl8HYReCmKZ43U5cEvkluu90Ua2R7l6o9KbNiurci6gh5yuIGyJ
         T01ijuQY+a8CAOyfq6HRIYE5dJv1Cg6E/7ZxV1Kew8RH69cixpxHrhD4vNi5uy4ld82j
         TS7F++ZmTKyH9NxnwBqXDreORxs4wUGGF5j6ACgPQzYwVgIWGIP+gxsVnAXtJQ7QQud0
         5rNolyRZtlBkYrD8Lms1D6YXNwCPsJUXHhF94KMqJfOYnJVAjo61J4qWC4ZzlkX7AqcK
         aW8+yhGyO24TrKtsxjLVr3+KRqWDTHCI8S2O6PKLB0v/uM5bYQjoR0H/DDaR4lparBSf
         J4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737230542; x=1737835342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a9nPmMQ8ct3IBdhlKUoLM+qDZ3JU2RPYn6okCI3Hbfw=;
        b=Tr6uN/MfKnrEl6wzW73W0xc8Xt2O/WLEL47HJyGg68xKy0LWdPffiitDQ5/cxN6WYv
         ZtQmIjEmCmdSLh7dBp948pvmvOjYWBAYgxK3yNsxMZtFtWnqr/aenbIYkY3Z08Mso9S0
         gkAaTanHtiX/zpdQx3AfW7iNECv+e9bGMsGhdFjn9L6pAhLxxXQgVUw+rmSgWvuw9qvY
         dALuPEnlxiw1fNvhk1Nbw0wD92eZaCHugg1hDCAJVBZzo2k2y8RstphwnA+a8RsNloMR
         KZG34JqoWrcCxRAQpLe6g+YYAMAOq0YoRwedISpea5C3qrU7MyBPjD0VAwA0pUZg6gEo
         djug==
X-Gm-Message-State: AOJu0YxrC7alf5MODAArrz1zW/JZpeHuOsjWt6Xec+QNdpUCrRUQasFa
	W8AbPdjXuKPmHTuGc51eMGQ3nCGukhRn/C0PL1GeRhWZiZfFcxLxvbqehPZG
X-Gm-Gg: ASbGncuJw0/+70w9blCxF0K1jPSJtxLRJzanFj4cYzrkRcmaqSeXBTIvAAFYQ4kSR/t
	7Afu5ollLfPFvSqtnjBXZJQxN5Fi+JqylS6OLa+86/hMU97eFHEQ7ZNKmRL0BKYgHdwPFQ06p6Y
	ogcBt5gSOFfe7xpF+KIVECQmeGOulBRB4doUPALjYrDubjlH/bUPAZgGLVrNFNSHylu0c0UV8Ry
	74kB2TtL+gBLt96IlorMZ91Wz0DYnackXHqgE9MYFbNThT+sa4l2cBzYiayJiiypjKetvzafWFn
	pPHTw7uqrQHdDXoEr7xfADrXVYg=
X-Google-Smtp-Source: AGHT+IFFI3of6RumNSiKBTnhXtFOC9utbMguYHwEIEpC9XpPpv2Ac6iu+6mDqg6uW/GB+jUFZzQUPw==
X-Received: by 2002:a17:906:c154:b0:aa6:834b:d136 with SMTP id a640c23a62f3a-ab38b165f91mr738936866b.33.1737230541974;
        Sat, 18 Jan 2025 12:02:21 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 18 Jan 2025 21:02:20 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Z4wIzDp5HFrLvOpK@eldamar.lan>
References: <a1fe6b3c-a51b-01e4-a65a-2a416fdcc1e7@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a1fe6b3c-a51b-01e4-a65a-2a416fdcc1e7@gmx.de>
Subject: Re: [oss-security] git: 2 vulnerabilities fixed

Hi,

On Tue, Jan 14, 2025 at 07:02:40PM +0100, Johannes Schindelin wrote:
> Team,
> 
> The Git project released new security bug-fix versions today, January
> 14th, 2025: v2.48.1, v2.47.1, v2.46.3, v2.45.3, v2.44.3, v2.43.6, v2.42.4,
> v2.41.3, and v2.40.4.

Small heads-up here: I think in the above version listing it should be
v2.47.2 instead. The other versions are correct.

Regards,
Salvatore
