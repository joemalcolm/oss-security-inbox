Received: (qmail 1639 invoked by uid 550); 21 Dec 2024 16:58:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7205 invoked from network); 21 Dec 2024 14:29:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734791375; x=1735396175; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ujGrHTP82LfZhLO5gWEuna/p5fhCQYWNN7MpjpEcXPQ=;
        b=J0fav13NI/8H9eeppyvi6zDqLXzHfAhiHnheRfYUr35WlU3FVrxF0IwL08ZikJApX5
         70nmrxFtlyhzmRjXccmGADCVCeZ90oXSKGDF6BRHC9fZz7uGdPvP+Kv2GbvD/0/rVICI
         gullAg10Ojed9pelg68mXOAtgz4XXUrktd5Anl5wcst41xzKdmammqnLFbkCak7ImJph
         79HLHIzQ5siDedEp1UYSEugPfXGoQvJ3NAkikfetKURJnqk5RS0ByMsy6jHy+x/tNtVF
         eO2LJepOrm05Zm3NDRuvbixoOLKkKo4YKXIvyr7OrjO5I66PKzW15bLtHA/5cj91a/L+
         K+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734791375; x=1735396175;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ujGrHTP82LfZhLO5gWEuna/p5fhCQYWNN7MpjpEcXPQ=;
        b=lfJxuDIQYOfpou5Kx41NNGorRk7O6k4FENFMzAAj9QsJyzgGcIfGJgFqRLkxxvjTAK
         aeYgG52i0oPXSNMAwBoAM8XsMB2fadbAFHHM8EVoanA4uF9Y+L0Z7LWgDsemfJrKikJv
         KkpmBrnO4MIeOuAZ3OqLYGEdy9ZgZGnA8nTEs/SVnEfGq09LfqQxhZilGfzMh0DiRvR4
         wEnSYQCSNjHR0/VKhq32j1HoM3GScULFH7id6KBuV7GHLuaNQSfax5Pfa0Uuyan9s7Dw
         yYexWRgNoTBMs7m1wjkh4b2q8dLk+rJQajI+66bXuYHrrOSoE6EfYo0C9hiccoP6y1+Z
         E5BA==
X-Gm-Message-State: AOJu0Yzq/KoxfQncI2smeT/POlzc5ZnTikkWZtpq/Kg+hzxDQ3wg5hp9
	3ms9sBk1rhF/RHEPQnJxqRLkiRwx4qGaqfS1IynOXPuwH9NB1yoGFD0AKcZ+wjLDNDOLVC9Doho
	r3bn+m/BMtTGXVKWj8mj9WjKNOS4IcI93
X-Gm-Gg: ASbGnctt1cDXVPfbYRiyswb9rgGGElov1LfO0TwMIsJHnu9B7MGkfkCwOHjkS8i/LhE
	++fHn3JnhZSrJR72cMJF+kr+/MzNkyjBhAOLurUw=
X-Google-Smtp-Source: AGHT+IGO4xvTGDpVKxdtCx1Ygtw/KvMXfXhMxaks9mkf0JjJOYwYsjpba+RavyBbsDH1k2FB2gtWDhDDD/iha8LUbyI=
X-Received: by 2002:a05:6402:5193:b0:5d0:b455:36ad with SMTP id
 4fb4d7f45d1cf-5d81ddf7fc1mr6603842a12.27.1734791374398; Sat, 21 Dec 2024
 06:29:34 -0800 (PST)
MIME-Version: 1.0
From: Yuri Gribov <tetra2005@gmail.com>
Date: Sat, 21 Dec 2024 17:29:23 +0300
Message-ID: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
In-Reply-To: <20240625121358.GA4177@localhost.localdomain>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>, Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: Out-of-bounds read & write in the glibc's qsort()

Hi colleagues,

I've recently come across discussion of invalid qsort comparators (and
unpleasant consequences which they may have) at
https://www.openwall.com/lists/oss-security/2024/01/30/7 and
https://www.openwall.com/lists/oss-security/2024/06/24/3

I myself have run into similar issues in the past and ended up
developing a dynamic checker to detect them automatically:
https://github.com/yugr/sortcheck (and its C++ analog at
https://github.com/yugr/sortcheckxx for std::sort and other relevant
STL APIs).

Even with very basic setup (semi-automatic testing of Debian packages,
no fuzzing) the tool was able to find numerous bugs in open-source
programs (see e.g.
https://github.com/yugr/sortcheck?tab=3Dreadme-ov-file#what-are-current-res=
ults).
I believe many (10x) more bugs are still out there, waiting for more
patient testers.

Please let me know if someone is interested in applying these tools to
their programs/distros.

Best regards,
Yury "yugr" Gribov

PS: In case anyone wants more background on comparators, here is a
presentation with some general theory, most popular errors and
overview of existing tooling:
https://github.com/yugr/CppRussia/blob/master/2023/EN.pdf

<https://www.avast.com/sig-email?utm_medium=3Demail&utm_source=3Dlink&utm_c=
ampaign=3Dsig-email&utm_content=3Dwebmail>
=D0=9D=D0=B8=D0=BA=D0=B0=D0=BA=D0=B8=D1=85 =D0=B2=D0=B8=D1=80=D1=83=D1=81=
=D0=BE=D0=B2.www.avast.com
<https://www.avast.com/sig-email?utm_medium=3Demail&utm_source=3Dlink&utm_c=
ampaign=3Dsig-email&utm_content=3Dwebmail>
<#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>
