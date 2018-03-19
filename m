X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2266" "Sunday" "18" "March" "2018" "21:36:45" "-0700" "Fernando Perez" "Fernando.Perez@berkeley.edu" "<CAFFEDumqMVU0RAi42pg-=25-dJOsngZvxyA4NHzisBzH_3vAEA@mail.gmail.com>" "83" "Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter" nil nil nil "3" "2018031904:36:45" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" (number mark "U       Fernando.Per Mar 18   83/2266  " thread-indent "\"Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter\"\n") "<CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>" ("<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>" "<20180317140214.GB8389@eldamar.local>" "<CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23766 invoked by uid 550); 19 Mar 2018 10:13:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18229 invoked from network); 19 Mar 2018 04:37:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Ep2A92kzNSlT3iYjA3NUp+mGrBl+2UxaAv4POa2MKH8=;
        b=J0gQABcIe5eZsiN3S33OS8x9yKYL2LVNA5i7xPxWI666JGlg8eJzOQQQXvIwmOlkh4
         9zaYNQvx1psF39FA2XSUZRtg8iW9uB5rfryn22SSN5GxWhNQJ9TaNUPNGnaAGW5A6gKE
         JmFl9s+v6CDCsEPRz1k7qs1SVL2AjJjOUYOBwyPoErZHrfxyK5gmb+opdMCToox8zbMx
         /qnlKswNL4k6pwXY+dzQ2CXiETyHeyROeNRFSjQ8QjBCfOZJlJBtSoA6OVyX4xKYKQqy
         cKCLsrf21keSZgpVB7liQwrGyElp/nQK4DaejCQ0p1gn2Rdxhu4QvagbtS0n0gBvng6Q
         R3MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=berkeley-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Ep2A92kzNSlT3iYjA3NUp+mGrBl+2UxaAv4POa2MKH8=;
        b=b3+T8eEcJyZ3ftaAXHrh9zlf9ZmRFAkDtNsfLTS91iNKcbvzTooesKqLankm+LHtJ+
         NmB+dAimZh1P7MKmOx8uhJseYIPyOvp7lTtE5FsGwfqzEB6QzxcAUsvJWJ2hTnbfggvw
         9XzS4CiUHpaMRdfNXprdgMnpBGrS8+rEPP4ZQqvRS3zELs2qG8q8umwvqMHGHuRLpwO1
         vyqY/DeDmFPw5Z/maoMzwbRso07AijolhUuq6OXBx6Z2+0NYBjhDDolc04vm2akwuwB9
         TX9KHNWTJUJpNBXDqGCT2PbTMnA2lW6PCcPWRSqJVVRoFgrc/TtyT74brBqxpRef51c6
         75gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=Ep2A92kzNSlT3iYjA3NUp+mGrBl+2UxaAv4POa2MKH8=;
        b=cHnMaPDWdB4DI82M7EHdnmQx3AHmNkGh2BrhkV3XFidtp1RsVmOJCu9OvsJbmpB62L
         SAf3y8L04E7QFpCV/MyIVmZ44Z/oJHXdmgjcWTFLq+wz4Db9fpxAP+jdOP8El7DU33JN
         xbPumtYNCdIhAPkPZFkH5JzY4E3Yr6njMiz+HGX3HnKoL2LjOmARZGQRjEynuHA3+utC
         nNlNBqoQ2/albfm9TxuZzDEF++nQIbmnjn/nnoAz0vsUcEe3MshfpMC9XqV+QesLJxtl
         D7R8jQtN1xSeG4EEtomSzxjVabHcuqkdAISgsPaBbN4w9uN1Lnl1/wWf5VQW2EzQkDoE
         H4JQ==
X-Gm-Message-State: AElRT7HMbeyLjGWLV5dsny0gsrO7aNSx6BTmZ1kVHSdv4pJv/8+v155L
	tY9d8v0mvNrUDjPcf3ufGXvatQXnAFAeIpm/c6Y=
X-Google-Smtp-Source: AG47ELsuEjHkzAYP6SR+/mEIAUKIOwgYYejsbjCT8Sp4z8lTqk80cmFhThi+2PHTK45gMvtRAu1M/bL1aXVQ7o4oE/Y=
X-Received: by 2002:a19:2ad5:: with SMTP id q82-v6mr6707806lfq.79.1521434236583;
 Sun, 18 Mar 2018 21:37:16 -0700 (PDT)
MIME-Version: 1.0
Sender: fdo.perez@gmail.com
In-Reply-To: <CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>
References: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
 <20180317140214.GB8389@eldamar.local> <CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>
From: Fernando Perez <Fernando.Perez@berkeley.edu>
Date: Sun, 18 Mar 2018 21:36:45 -0700
X-Google-Sender-Auth: -mmlkaLAuVi3sFvn0NmoeZX99s8
Message-ID: <CAFFEDumqMVU0RAi42pg-=25-dJOsngZvxyA4NHzisBzH_3vAEA@mail.gmail.com>
To: Thomas Kluyver <takowl@gmail.com>
Cc: Salvatore Bonaccorso <carnil@debian.org>, oss-security@lists.openwall.com, 
	security <security@ipython.org>, MinRK <benjaminrk@gmail.com>, jkamens@quantopian.com, 
	Scott Sanderson <ssanderson@quantopian.com>
Content-Type: multipart/alternative; boundary="00000000000038853e0567bc8300"
Subject: Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter

--00000000000038853e0567bc8300
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A huge thanks to the Quantopian team, Thomas and everyone else who worked
to bring this to a quick resolution.

I was really impressed by the response and quick collaboration from all
parties.

Best,

f

On Sun, Mar 18, 2018 at 12:59 AM, Thomas Kluyver <takowl@gmail.com> wrote:

> Thanks Salvatore. Devdatta Akhawe filled in the form on my behalf, and
> we've now been assigned CVE-2018-8768.
>
> I'm going to merge the fix now and start the release process for 5.4.1.
>
> Thomas
>
>
> On 17 March 2018 at 14:05, Salvatore Bonaccorso <carnil@debian.org> wrote:
>
>> Hi,
>>
>> On Thu, Mar 15, 2018 at 01:55:59PM +0000, Thomas Kluyver wrote:
>> > Email address of requester: security@ipython.org, thomas@kluyver.me.uk,
>> benjaminrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com
>> >
>> > Software name: Jupyter Notebook (formerly IPython Notebook)
>> > Type of vulnerability: Maliciously forged file
>> > Attack outcome: Possible remote execution
>> >
>> > Vulnerability: A maliciously forged notebook file can bypass
>> sanitization to execute Javascript in the notebook context. Specifically,
>> invalid HTML is 'fixed' by jQuery after sanitization, making it dangerou=
s.
>> >
>> > Affected versions:
>> >
>> > - notebook =E2=89=A4 5.4.0
>> >
>> > URI with issues:
>> >
>> > - GET /notebook/**
>> >
>> > Patches:  not yet finalised
>> >
>> > Mitigations:
>> >
>> > Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
>> > If using pip,
>> >
>> >     pip install --upgrade notebook
>> >
>> > For conda:
>> >
>> >     conda update conda
>> >     conda update notebook
>> >
>> > Vulnerability reported by vkgonka@mail.ru , via Jonathan Kamens at
>> Quantopian
>>
>> Thanks for the headsup.
>>
>> This reply is mainly for this other purpose: It looks you wanted to
>> have a CVE assigned trough this reply to the list. CVE's cannot
>> anymore be requested via the oss-security list. If you want to request
>> one please have a look at https://cveform.mitre.org/
>>
>> Once you have the CVE assigned, can you please loop back the
>> assignement in this thread?
>>
>> Regards,
>> Salvatore
>>
>
>

--00000000000038853e0567bc8300--
