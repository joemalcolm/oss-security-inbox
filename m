X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1383" "Monday" "11" "July" "2016" "13:32:18" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>" "50" "Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" nil nil nil "7" "2016071111:32:18" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" (number mark "U       cbuissar@red Jul 11   50/1383  " thread-indent "\"Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS\"\n") "<20160711125157.7ed792f4@pc1>" ("<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>" "<20160711125157.7ed792f4@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3280 invoked by uid 550); 11 Jul 2016 11:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3256 invoked from network); 11 Jul 2016 11:32:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=63w3uQlXOTu2iehkL6Bo+7C+ImSTcZEEZJWh6UMGB/o=;
        b=H3pDVb/WJR39Gbsx44MtNrbUGISO8sGPCCDAW8ybqubXbaXxRkU7m5BUvyDql2n9/8
         xqtDx/KIwoaSUsIql/7/dEMlbT+PT3giLgAtE0Pf4J+iFnXN/S9TWPo/3r26JWfO0j9R
         OIFR4qQh9Qsgie0N9ClbPYPKKBxX41Z8Io5ItFh9Kl4p82xZfIobh0DLgDHJkZ2nU/kf
         z6MD1fpLTrou4ueSSozQT15UvLrdpn4YNL5rr41ul/Xp6xpVrO62sZmigLDdgnLkNMDd
         uS4YFGxgHa1o9I7Im2fMwobBAO690OydmVcCrAuzOIgMtOKHl+WhZxyDHEAkFuPgiHar
         F09g==
X-Gm-Message-State: ALyK8tJJvuaNWf/Bk+Hyl/fQORj7oLkLERNeKhzG6fKGhKbGmb5+TaDxkj8+kT/+cVAdqviY6zoTMlfv/8jZJbRH
X-Received: by 10.66.43.7 with SMTP id s7mr34634382pal.27.1468236739377; Mon,
 11 Jul 2016 04:32:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160711125157.7ed792f4@pc1>
References: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
 <20160711125157.7ed792f4@pc1>
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 11 Jul 2016 13:32:18 +0200
Message-ID: <CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>
To: =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=bcaec5304bc74c0f3b05375a81c5
Subject: Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop
 in MBR partition table leads to DoS

--bcaec5304bc74c0f3b05375a81c5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2016 at 12:51 PM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> On Mon, 11 Jul 2016 12:11:43 +0200
> Cedric Buissart <cbuissar@redhat.com> wrote:
>
> > CVE-2016-5011: util-linux: Extended partition loop in MBR partition
> > table leads to DoS
>
> Have you discovered this bug or do you know how it was discovered?
>
It was reported to us by Michael Gruhn & Christian Moch

>
> Was it found with fuzzing or code inspection?
>
I do not know, there was no info on the discovery method in the report.

>
> I have done fuzzing on partitioning tools before, however I hadn't
> found anything, this bug indicates I haven't looked enough :-)
>
I looked at other projects to see what is being done to prevent this
particular loop from happening. Until now, tools I checked are protected
either by detecting the loop (i.e.: actively searching for a relative
offset of 0 for the next EBR, as done by this util-linux patch; partprobe
and fdisk are doing that), or enforcing a limit on the maximum number of
partitions for a device (Linux kernel, kpartx & other tools I currently
checked)

>
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: BBB51E42
>



--=20
Cedric Buissart,
Product Security

--bcaec5304bc74c0f3b05375a81c5--
