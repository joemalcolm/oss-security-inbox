X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Tuesday" "18" "June" "2019" "06:39:34" "-0400" "Nicholas Luedtke" "nicholas.luedtke@uwalumni.com" "<47D32179-6D58-4361-94DF-47229065BDF9@uwalumni.com>" "49" "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" "^Cc:" nil nil "6" "2019061810:39:34" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" (number mark "        nicholas.lue Jun 18   49/1697  " thread-indent "\"Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues\"\n") "<CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>" ("<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>" "<20190617182023.GA19768@kroah.com>" "<CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18288 invoked by uid 550); 18 Jun 2019 11:19:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13764 invoked from network); 18 Jun 2019 10:39:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=uwalumni.com; s=google;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=+uQ4NGV7O/gyhnr5H+lj8hBy0zu1dYZtB5EtPc3u4aM=;
        b=gQHKC4DmRDOZvh/dCrPoNayIrxOxpJMh325hwDBWWMwp9OY1TyIdyrQthnlX4d3VWV
         CccHVulMjF6uy2ZYlvSoT4u3WbF2aX3xzrX3cqa2pSOKjp+Y5by+R1dig/EjPcbWUXQF
         5+IdNBE7nnIshqhAhdlwo0ayvUKsKOJQWth+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=+uQ4NGV7O/gyhnr5H+lj8hBy0zu1dYZtB5EtPc3u4aM=;
        b=Q/4bRjBOlW732SgxgtUlKsDfFvFiLCscykKM6qNvm2qGV62bXjVZ9lXS6TBVzyvktt
         05BNceGU5uE7aS1HM6kqBxeupMKAF/eE5RA3+UCnYRZwt3Jw17Cg0+NzWrAAHm8+nuPK
         k+EcBCkNMo+ewtYt4j7g0pVPlx6RJBS0mhOjPx3U6NLi2KwD4JoZLgj3/yHZOFEsR1rX
         jC2pODZD6rIcP8QbbrqJTYQFG974qxL1CRhVC1V0vRjpHoOkEOM0uZn+wX7fPomjoFBc
         5iOoeF3fiXQkxcFJdAyLCf4KUAFE0ZWLG69D+DT7AenQpgzUUdwu36P8yRnf0PUZjY7K
         07YQ==
X-Gm-Message-State: APjAAAU0UwLYzGHlAWiCp8l0HUNFwyhTe56X4EJTIYbYtl/o1hGFf2Me
	U1O2cXJrDtAGwgZZBjUJBfgFHW0LjZ4=
X-Google-Smtp-Source: APXvYqzDnApqc2MqzwY/XyS0qFarDMN3tqTXmt5MCGiPIua3pKMbT4gIfG57NwVYASko29GHCgeGAg==
X-Received: by 2002:a05:6830:1249:: with SMTP id s9mr13556966otp.33.1560854377511;
        Tue, 18 Jun 2019 03:39:37 -0700 (PDT)
Message-Id: <47D32179-6D58-4361-94DF-47229065BDF9@uwalumni.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4C4757EA-74D8-4ACF-947E-FAD96E51D0DC"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
In-Reply-To: <CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>
References: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>
 <20190617182023.GA19768@kroah.com>
 <CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Cc: Security Report <security-report@saasmail.netflix.com>,
 security-report@netflix.com
Date: Tue, 18 Jun 2019 06:39:34 -0400
From: Nicholas Luedtke <nicholas.luedtke@uwalumni.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based
 remote denial of service issues
To: oss-security@lists.openwall.com

--Apple-Mail=_4C4757EA-74D8-4ACF-947E-FAD96E51D0DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mon, Jun 17, 2019 at 10:56 PM Greg KH <greg@kroah.com> wrote:
>=20
>> On Mon, Jun 17, 2019 at 10:33:38AM -0700, Security Report wrote:
>>> Netflix has identified several TCP networking vulnerabilities in FreeBSD
>>> and Linux kernels.
>>>=20
>>> The vulnerabilities specifically relate to the minimum segment size
>> (MSS)
>>> and TCP Selective Acknowledgement (SACK) capabilities. The most serious,
>>> dubbed =E2=80=9CSACK Panic,=E2=80=9D allows a remotely-triggered kernel=
 panic on recent
>>> Linux kernels.
>>>=20
>>> There are patches that address most of these vulnerabilities. If patches
>>> can not be applied, certain mitigations will be effective. We recommend
>>> that affected parties enact one of those described below, based on their
>>> environment.
>>=20
>> To answer all of the paniced emails I have already started to get, all
>> of these patches are now in the following Linux stable kernel releases
>> that just went out a few minutes ago:
>>        4.4.182
>>        4.9.182
>>        4.14.127
>>        4.19.52
>>        5.1.11
>>=20
>> Other than the 3.16.y kernel branch, all other kernel branches are
>> end-of-life, and will not be getting updates for these, or any other,
>> bugfixes.  I do not know when/if Ben will be doing a release for 3.16.y
>> with these fixes.
>>=20
>> thanks,
>>=20
>> greg k-h
>>=20


Now that the upstream commit appears on the git, these fixes now also appea=
r on https://www.linuxkernelcves.com <https://www.linuxkernelcves.com/>
-Nicholas=

--Apple-Mail=_4C4757EA-74D8-4ACF-947E-FAD96E51D0DC--
