Received: (qmail 21880 invoked by uid 550); 25 Jan 2025 15:21:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13869 invoked from network); 25 Jan 2025 13:43:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737812620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pt/3nFtExHqV2oZY8Fpph5Y8GziyNhw9er6jqE4cPkU=;
	b=DQZinZ7ZzZUZINjNUUDuOdFrnINhhS9m6qcun8pF4Ae+UBStN+XPdoiJ44HgltwtAnJpb8
	PhxQaiJMt7ocZCnVkkbj+dDXtvfTv5ZPuLTXrdJMoQIXUt+ey86acA2WfMhL8PGxBbRHPl
	bcClNceTybQ5rBKcLVDXToK+LSsxRYw=
X-MC-Unique: 7r2oKe58PYKORbLTSMThjA-1
X-Mimecast-MFC-AGG-ID: 7r2oKe58PYKORbLTSMThjA
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737812617; x=1738417417;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pt/3nFtExHqV2oZY8Fpph5Y8GziyNhw9er6jqE4cPkU=;
        b=kbhbuNn5Oigq9hHV1GmeehZ5fzBRCQzUmlp8bHPMhzC77DjCpzBSriH2AWgR4+un4O
         4nlfXBnaDFadkanpXDkI2W1xEX7fVJdukqsUqPUtwSv6X1Un5OmBEf2qM2nHUmrFrXvD
         jc95xXyJbGJU0SodbgF5zyoPVgRtZgi3KwZENp5wIsTnhobozU+keuZLO5Zr8rm8NgSb
         eBEacsAvdlIgjlJKIkUIbjU0ZiWBuJ70JT/4G0MQZSif33TVvxWZCCt3qmJOnD1iERZC
         DJVyluesffKc798HoujK7TcMXpG6jCJLS1eyZlPkGeVD66pfclAReaLljnoTYJRVOPUT
         NuDA==
X-Gm-Message-State: AOJu0YyZKMo4yviyNBqsrm46bpRFDmCzd4YYWKnPSj4MckEo4O9/D3qx
	5QoNN4YI2b+QdjwBwLH26cvylgIDstdALsDgkhOdAygUUteH4fT3AFyng/r1V8wxc/sU+jCdxAi
	i+IrGDrt15BTlDQJU7SwNtkhbbqlWy2QDlXo96P1OlGc+z1/kcBmb9VnBI5MsoYjHyRFNNvNgpN
	1p9umdJiGal3HE5Ck6ToZB6zmJEcXYk/iH89xfz1RkpHGmeSlx
X-Gm-Gg: ASbGncuR4KLnAzkQSbOZFM6kZMvo7jA2gUX5dyK+cxsZtSa1lxbCaobBTIXvKGWDaL3
	6J0YBxTTFfSaw6omlBGj/g/JghT+RIrBc41QlKXQQGkh/bZBSLZIQA2jHqi30dfc=
X-Received: by 2002:a05:6870:4e0d:b0:29e:27bd:69ef with SMTP id 586e51a60fabf-2b1c0b4eb3bmr20192700fac.30.1737812616860;
        Sat, 25 Jan 2025 05:43:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjMdRt/K8t6PCCsH5AjnbCTtPB7l3mv9hj3f/TKMZxZy3gVav+FdggbqvfT3KOr0FYfIlD2BPj69c2xkyHmd8=
X-Received: by 2002:a05:6870:4e0d:b0:29e:27bd:69ef with SMTP id
 586e51a60fabf-2b1c0b4eb3bmr20192686fac.30.1737812616365; Sat, 25 Jan 2025
 05:43:36 -0800 (PST)
MIME-Version: 1.0
References: <Z4__rJ3_SmmtEIsG@netmeister.org> <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
 <2025012512-likely-strainer-4e6d@gregkh>
In-Reply-To: <2025012512-likely-strainer-4e6d@gregkh>
From: Pete Allor <pallor@redhat.com>
Date: Sat, 25 Jan 2025 08:43:25 -0500
X-Gm-Features: AWEUYZk25KiQl2b5BIzNtExxprZkRA0Q-Dxriru5Dl56cALQNXx9dF99TAdykSQ
Message-ID: <CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: v3WzNeEM0_8nruV8vnGK9KGqYQDeE-WVe-5qHry1haE_1737812617
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000af6c88062c8807d6"
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087, CVE-2025-23088, CVE-2025-23089

--000000000000af6c88062c8807d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Assigning a CVE for EOL is actually outside the normal practice (there is
another standard for that underway) and is not in line with Rule 4.1 as
part of the CVE program.

I do agree with Greg K-H that open source projects should become CNAs.
 But do want to note that missing elements of the CVE when submitting
allows CISA-ADP to 'vulnrich' your data.  Here is where
misinterpretation and/or lack of understanding by CISA confuses downstream
users and once you gain that 'critical' stigma in the system, you have to
be persistent to get that changed.

Is that a problem?   I think so and so do a number of PSIRTs so now we have
to contend with CISA-ADP and NVD to adjust their scores when the CNA is
'the authoritative source' within the CVE Program.

Pete

On Sat, Jan 25, 2025 at 2:02=E2=80=AFAM Greg KH <greg@kroah.com> wrote:

> On Fri, Jan 24, 2025 at 10:55:39AM -0800, Alan Coopersmith wrote:
> > Their reasons for this are detailed on the blog post at:
> > https://nodejs.org/en/blog/vulnerability/upcoming-cve-for-eol-versions
> > including getting CVE scanners to report EOL versions as vulnerable even
> > if no existing CVE specifically says that they are.
> >
> > While I can understand their reasoning, I can just imagine the noise if
> > every project started issuing CVE's for every version that reaches EOL.
>
> I think that's a great idea for projects to start doing (especially ones
> that are a CNA which I recommend all open source projects become.)
>
> And as for "noise", I think that will just be a "drop in the bucket" of
> the overall CVE assignment numbers these days as just how many different
> software versions are going EOL each month?
>
> thanks,
>
> greg k-h
>
>

--000000000000af6c88062c8807d6--

