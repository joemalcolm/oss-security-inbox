Received: (qmail 22460 invoked by uid 550); 29 Sep 2023 14:35:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22439 invoked from network); 29 Sep 2023 14:35:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998114; x=1696602914; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGKrvKsVeWvCQJacI8JCGoKiUQfjIJc/bdohHEGI2MY=;
        b=Doiakpq/0sE2HQWZ3AiCw0OkGn6HKZnhGMMRFwt7dsAl3GTa+A65MyrjldR/fAEYRG
         fPRHo6MD5I9YKeBRZMnFpyP6aj241667yPoRdcsLEs4x7iB0M31YzEcZ3E+tmYpCI0ME
         I6V/weuILV9CMM6rtnjXG5ACyDAjZ34FbZG6QMwM+/iFp1GYjRBfHbObvhzx6IDXWYB/
         yFoP2bNQLN4yC9Kailm6Pdc125fb3pwtJt9BUlJB2bpIAT9Nyqw4ZuovHdKV5vAb7pcC
         5YUCnl1lJSviiLPa17I4VqyqcaCGSVPJ4HLpUfvElgmdOtDa3YtfykYnEOg5Te7KbFTb
         aXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998114; x=1696602914;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eGKrvKsVeWvCQJacI8JCGoKiUQfjIJc/bdohHEGI2MY=;
        b=Hbp19Sugh5rCw7WGFC9KXmJrmUBQDV0kyQ3kW6PytvyPJdwO0BSSl7KxEBTtLrjymv
         rB/rrYRxMJzRXMj290c8KOzZrr0jIJsElL7eX2xQ3nMaQVqzxJcGJXNsnPWL8pl03tlm
         yK+4bjSoob/TW66g1IL35+Xd2sSzQ7vRKXoRSbrerzCkM1FPBTX2mI9eeZtUFZ9auLw0
         +TNJAnnwLkZLh8fD2Vy85KdrKT2i+HnjG9DBuc5zWfOtggu2YsN7HnpnMV8zgFTfNzWi
         r7YRYeG2zDr+X2bAYdeAmEYr6j9seUe+PKEuVkDMc3oS/nCp+IMgkcfCITg2/JlSRtV0
         1eZw==
X-Gm-Message-State: AOJu0YwmD9R3/BBJUKbkO1BrRHHAn9rOFKfG7qbTtSkKif/+ggb0ce+6
	J6Qce2kOhEHWpGReMj9ZAZGO9QsnIT0ZXvID4h321/m7
X-Google-Smtp-Source: AGHT+IHHrbhkarfuhgTjwfUeJ+o6AsJnPtKkvcCKTHdmkM9tJi67CDAkT95m7sT7NYjGx7wommZ55rmpFbd+jIYdUmk=
X-Received: by 2002:a05:6358:590d:b0:14a:ddb8:9a12 with SMTP id
 g13-20020a056358590d00b0014addb89a12mr4750703rwf.6.1695998114055; Fri, 29 Sep
 2023 07:35:14 -0700 (PDT)
MIME-Version: 1.0
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
In-Reply-To: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 29 Sep 2023 10:35:02 -0400
Message-ID: <CAFRnB2ULCAXn6y0b5jGKqf+G11iX+CYCrH8DfraPRQfRAfCtxA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Multiple Exim4 Zero Days

Do I understand correctly that none of these are fixed upstream?

Alex

PS: I'd be remiss if I did not note that it appears that 5/6 of these
vulnerabilities have "C is not a memory safe language" as a proximate
cause.

On Fri, Sep 29, 2023 at 10:27=E2=80=AFAM Markus Gschwendt
<office+osssecurity@runout.at> wrote:
>
> I bring this up as I have not yet seen any information here about
> several CVEs related to Exim Mailserver which were published by ZDI on
> 2023-09-27 [1]:
>
> * CVE-2023-42114 [CVSS 3.7]
> * CVE-2023-42115 [CVSS 9.8]
> * CVE-2023-42116 [CVSS 8.1]
> * CVE-2023-42117 [CVSS 8.1]
> * CVE-2023-42118 [CVSS 7.5]
> * CVE-2023-42119 [CVSS 3.1]
>
> There also seem to be issues in Exim's bug tracker related to those:
> https://bugs.exim.org/show_bug.cgi?id=3D2999
> https://bugs.exim.org/show_bug.cgi?id=3D3000
> https://bugs.exim.org/show_bug.cgi?id=3D3001
> https://bugs.exim.org/show_bug.cgi?id=3D3002
> https://bugs.exim.org/show_bug.cgi?id=3D3003
>
> According to ZDI the original reports were sent in June 2022.
>
> I'm wondering if somebody knows anything about mitigations and/or why
> there are still no fixes for these issues after more than a year.
>
> Markus
>
> [1] https://www.zerodayinitiative.com/advisories/published/
>     search for exim
>


--=20
All that is necessary for evil to succeed is for good people to do nothing.
