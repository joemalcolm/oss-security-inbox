Received: (qmail 9714 invoked by uid 550); 17 Aug 2024 21:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9890 invoked from network); 17 Aug 2024 20:32:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723926762; x=1724531562; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kakMWravPfOZfx29CX+b00F4ALP7+7fpWbQB6VE3w6Q=;
        b=Ko8xZI67J8UN7tmYzaCsvfehBU2OQE8YXzqsVEJ22vXO+RHzVyE1xGKv0vSNNjNey8
         sgN2LnB6xkdnsn1vJjSdzsoPb/mU3eTSEVYqCgiIRC7yYCFO8AqC/WGMdtvMegVpMIgA
         Wx/6N4etb9+LjbNDMo+wrGmlPq/KwB9p9ah/AhoiK9Gv+oLVs12rtisPCCCR0sgelV4G
         W6VyoR71HN1FICfntEYtwkGP/c/bghdBpFtCxSzl6TPQK2k7nyoKw0Va8OMLr1jTkzpX
         APiJdHguocY3OGsOEnOqxui5bgxNU9hpxfK8NGjON2eApaLLxTNDVSt4/VlLtt6TbU5J
         rJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723926762; x=1724531562;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kakMWravPfOZfx29CX+b00F4ALP7+7fpWbQB6VE3w6Q=;
        b=Kdw63FaWRRm9g+lCWdEPwl0yfCWYzPFVkN7D5Z9auJmXvgZyTuyf8UbuiHQRFaePNU
         aCZtdKNDugAE0aRmSfI7i1DLWi1qOyGAbc8uDWHHpXzjChbVy+Ifkxsws5fECD+7rUjQ
         KWaqFrAKakYyfcakrtZx7uo33mw00HDi1DK2XNI72R4AgdVIf6cnyzX+hIpzcd53ZTYx
         /VNc13xnmIpqfHlfkOWr67Dt2LlI5ExJnzV8Dka+O1X/JaI92J1+XEGkAVezpKq53EcV
         1nVIMDwF32gdsFQuo4iqTc7howl/fql9NvOeOXHIePRlxU4lHQ2rO97TPMNVDG6/87yR
         0/zw==
X-Gm-Message-State: AOJu0YwBz+MhgSltC1N33q23NxJYmDr8Qsj1KYmx01uhaYwkV5ohzP6D
	L1ETgDHnC8GF8tYOFVigII3Y4c8QGNT7WrbaEIMwydfaJUlkm9bZ0oi6jueogajlGdzUOMmw6kM
	o65pd/LkL4xNK/mG1eI23WDglFnVwBwSG
X-Google-Smtp-Source: AGHT+IFoQhDvJ9Y3qKpkC5W1tK5gpB8qpJGB39A1Dyt9tPV+d0isMERsOwSb7wgHrfThwxS6geo445XwNRWQ4HUsarA=
X-Received: by 2002:a05:6902:e05:b0:e0b:d6aa:43e3 with SMTP id
 3f1490d57ef6-e13d0c7a3famr3795356276.17.1723926761813; Sat, 17 Aug 2024
 13:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <E0230074-77BD-4A07-9838-92BB263C598E@linuxfoundation.org> <24243143-1A4D-4B71-A6C4-C8140C09A1CE@dwheeler.com>
In-Reply-To: <24243143-1A4D-4B71-A6C4-C8140C09A1CE@dwheeler.com>
From: Alfredo Ortega <ortegaalfredo@gmail.com>
Date: Sat, 17 Aug 2024 17:32:30 -0300
Message-ID: <CAKfVa+kDOncGMgh+otnTQoToBtT2bqH3paTWD6ie9wZ6DLfRYw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] AI Cyber Challenge (AIxCC) semi-final results from
 DEF CON 32 (2024)

I found a real bug (OpenBSD IPv6 Multicast Forwarding Cache sysctl
kernel heap overflow) using Mistral-Medium almost 6 months ago:
https://github.com/ortegaalfredo/vulns-ai/blob/main/openbsd_mfc6_sysctl_ove=
rflow.txt

The simple tool that did it is also released as open-source here:

https://github.com/ortegaalfredo/autokaker

About to release the second version, and a vscode plugin, next week.


El vie, 16 ago 2024 a las 18:05, David A. Wheeler
(<dwheeler@dwheeler.com>) escribi=C3=B3:
>
> All, FYI:
>
> DARPA and ARPA-H are running a research competition called the "AI Cyber =
Challenge" (AIxCC).
> Its goal is to create automated tools that find and *fix* vulnerabilities=
 in software.
> General information is here: <https://aicyberchallenge.com/>
>
> The AIxCC semifinal competition was last week at DEF CON 32 (2024).
> All competitors were given an identical set of Challenge Projects, which =
were
> real-world OSS projects seeded with synthetic vulnerabilities.
> The projects were Jenkins, Linux kernel, Nginx, SQLite3, and Apache Tika.
> There were 7 winners; each winner received $2 million US as a reward, and=
 those
> teams will be allowed to compete in the finals at next year's DEF CON.
>
> An official summary is here: <https://www.darpa.mil/news-events/2024-08-1=
1>.
> Some other interesting links related to the semifinals include:
> <https://blog.trailofbits.com/2024/08/09/trail-of-bits-buttercup-heads-to=
-darpas-aixcc/>
> <https://www.youtube.com/watch?v=3DsQKGWZvuLko>
>
> One of the competing teams, Team Atlanta, even found a real-world bug in =
SQLite3.
> This was reported to SQLite through their usual process; it's fixed in tr=
unk. More info
> about that specifically is here:
> - <https://x.com/TeamAtlanta24/status/1822739301463130271>
> - <https://sqlite.org/forum/forumpost/81670d1056>
>
> The tools must be released by next year as open source software, with an =
OSI-approved license,
> as a condition for accepting prize money or competing in the final compet=
ition. Exact text is in the
> "Open-Source Requirement" section in its rules <https://aicyberchallenge.=
com/rules/>.
> The challenge problems were all based on real-world OSS, and the
> hope is that in the long term such tools can automatically find & fix vul=
nerabilities in all
> software including OSS.
>
> Full disclosure: I work for the Open Source Security Foundation (OpenSSF)=
 and I
> have been working with DARPA & ARPA-H supporting this. That said, I thoug=
ht others in this mailing
> list would want to know about it. No research is *guaranteed* to produce =
something
> leading to useful results, but I think this is a promising approach. We d=
efinitely could *use*
> tools that automatically find & fix vulnerabilities, if they're good enou=
gh!!
>
> --- David A. Wheeler
>
