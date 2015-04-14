X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["863" "Tuesday" "14" "April" "2015" "13:35:20" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "25" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041420:35:20" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 14   25/863   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<552D3A20.8040909@canonical.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15765 invoked by uid 550); 14 Apr 2015 20:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15744 invoked from network); 14 Apr 2015 20:36:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=M57Q8vtuRn1IpE3gLyHq3+gYD3QwjlFLXMfJid7D2zQ=;
        b=C7IRw4zWpRYJE8h3kRlAinUbZ582MoG4pCJnOUQRpuXzbu+HwWp5y/P5vppn+Cp5OB
         dUFEyn3YB3B6p9Isa6jq44lgy9RosuQF/gH8s+LK4BiYeUGySD1iKK6uLriHQ7zdaUo7
         fJaFQhVWCcppANcE452cNWfoCIS21/Y/9gG7JX7VPX4beuibjKhcrF+5TChLTEqI+6YR
         4WPb1/G/2jBQ7+jv6l24MQA0hBA293l0JfdGUJiddigRLqothiY2JOH7Ww8a2z2AkyyS
         SM3RdEnAXmkX/HD6I3TLM6ZolW+3L51aoq4k/2zTF3FEv+0rBddQdPw5xuQy2tX9Zvt3
         cOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=M57Q8vtuRn1IpE3gLyHq3+gYD3QwjlFLXMfJid7D2zQ=;
        b=WkWNFW509sOeK4cXti6NIoH0vAQ6yD0u8WA1ZpzB0odC/CGcSIqwr2Wu9/5tlipYRD
         cnVTKfoOnOHB6psuO8ZwQo7hbS8mugPz3FvIL+VXJN5dnqsYSmBYgp7wwJNJqmW1sc7Z
         5Zg7rCI2sy58dDozjy4S0KhfY9lSgY9iIpd9QA3bi4zyiXwCCBXcWg+VWokJN0dTuB61
         qaXg4qWd1LHztpI9IFJT+Svf40Pp/8Fz+wFpUJJnxKnVIr5HPV/wP3zY0KFELkGnt2Pz
         bGgwCoRhuGNWMOx9yB2I2VSBvynqJT1r0LDVWFdAkl7kdwDXOSvAXBhumUSHnPnzljkj
         mETA==
X-Gm-Message-State: ALoCoQku2Taea/8f1Jx0hL174V0WDptG41jM7xI5ajU+8483u+p/ZE+YM2fIiG0jko087Rz00C64
X-Received: by 10.55.21.139 with SMTP id 11mr44641520qkv.19.1429043741292;
 Tue, 14 Apr 2015 13:35:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <552D3A20.8040909@canonical.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org> <552D3A20.8040909@canonical.com>
Message-ID: <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Tue, 14 Apr 2015 13:35:20 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Tue, Apr 14, 2015 at 9:02 AM, Marc Deslauriers
<marc.deslauriers@canonical.com> wrote:
> Hi,
>
> On 2015-04-14 11:55 AM, cve-assign@mitre.org wrote:
>> This is mostly a question for the persons who assigned CVE-2015-1318
>> and CVE-2015-1862. Should these CVE assignments be interpreted to
>> mean:
>>
>>   CVE-2015-1318 - in Apport, an unprivileged user can use a
>>                   namespace-based attack because there is an execve by
>>                   root after a chroot into a user-specified directory
>
> Yes, I assigned CVE-2015-1318 to that specific issue in Apport.
>
> Marc.

It looks like this is the patch for Apport:

http://bazaar.launchpad.net/~apport-hackers/apport/trunk/revision/2943#data/apport

It's far more complicated than I expected, and not obviously correct.
It could probably use some review, I'll think about it today.

Tavis.
