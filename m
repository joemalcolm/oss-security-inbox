X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Sunday" "2" "December" "2018" "12:30:51" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>" "39" "Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Cc:" nil nil "12" "2018120207:00:51" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        mishra.dhira Dec  2   39/965   " thread-indent "\"Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") "<a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>" ("<20181123172208.GA16585@scapa.corsac.net>" "<20181123180914.GA10084@kroah.com>" "<e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org>" "<a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17768 invoked by uid 550); 2 Dec 2018 11:55:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9754 invoked from network); 2 Dec 2018 07:01:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QhZ4bMyeZExM464epECyDpMHQyyj/tvHD8dQCY5Gd4E=;
        b=FF2KYgUFrKj9MNYBdf2gXDyk9ezmMuBHgbmblAdqaZD9VpqaiQrZDiTOiZ32PGjG4e
         Y7iQIELx5yEW/oal8oDwA2c+FdMliw9Ox/gynbX9i3CavtrGBlfP9toC+EkwF+vL7USA
         qZhK4e/ZTTUOT737fuoWvDq3Q/plIZX4cZhOm8NalG50s0oIWodiCLB4J8TjrD2SMFVm
         6idgUEDwWHGMCIVM0rvBe9S4dl5zR1LA7Qj5djIcQIkzx1DOZ/U3dHmx2ysoqbITAeyy
         gTgyCBsSyBz+tQc9Yz2lclqva3uHWVxZ262ZgaE7bxIVBYSx426IizHTvx6j/JgN40Uh
         QKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QhZ4bMyeZExM464epECyDpMHQyyj/tvHD8dQCY5Gd4E=;
        b=iJQubqikHoocfEXMq0t5fzwC15fjZlQyWjaPrH58plvjahSqJcpNx4ylhkOyNTHOKo
         IFFlyDvo9LqxOfULA1LwfEkXh7grgYdZg+iq4qsUtMIVCQMAVNyZYTbWdpUkaML4spTA
         1xQ/RJ8jdbUFfKNUTJr9F6tDZsOKo6ZNxBdiKO19LKDTrJuVQTB/ooP4Zi5wnLcSa5+j
         TpD35+rLw78/NtTP0zsJXNDxEWdFZwllbDC18QIpoVHOCbduDRDi/mizIbRGLZST7IJc
         0/AuBEyqVfIXOz6xWu+Gfbg2oiXWrf14frPVgoJJu+4wUxgUAQcx8nurkMR0o595y7ab
         /wmA==
X-Gm-Message-State: AA+aEWa8WjZbulJXmo3QxXI3neXQl4wnfSAajFqSaKR4C2OZsGvBH8mv
	dxiAP6veDc/LMaz5E3FkU1LVcU/hzEdOYPVaQa+zkg==
X-Google-Smtp-Source: AFSGD/WVk0zT8wPZwwY+io/VlmtXQQzlrcGg80ULLjTwCw6/3G/gUwYdQcsEY/5uuGW7fdUAWRXaWdgqbPkdNiqilO4=
X-Received: by 2002:a17:902:4c85:: with SMTP id b5mr11035035ple.226.1543734063159;
 Sat, 01 Dec 2018 23:01:03 -0800 (PST)
MIME-Version: 1.0
References: <20181123172208.GA16585@scapa.corsac.net> <20181123180914.GA10084@kroah.com>
 <e34d421111a59b59ab7a09fc954ea71d701936f5.camel@debian.org> <a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>
In-Reply-To: <a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>
Message-ID: <CAG8b5tQFCzHRn5WY_DHN9prhKSqG2qVDQxbssTyfoBm3rZmH8A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000765d62057c049851"
Cc: ww9210@gmail.com
Date: Sun, 2 Dec 2018 12:30:51 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf
 leading to LPE (exploit provided)
To: oss-security@lists.openwall.com

--000000000000765d62057c049851
Content-Type: text/plain; charset="UTF-8"

Hey,

Just wanted to know is there any CVE assigned to this issue?



Thanks

On Sat, Nov 24, 2018 at 2:39 PM Yves-Alexis Perez <corsac@debian.org> wrote:

> On Fri, 2018-11-23 at 21:45 +0100, Yves-Alexis Perez wrote:
> > On Fri, 2018-11-23 at 19:09 +0100, Greg KH wrote:
> > > As was discussed further on one of the threads on this topic, it looks
> > > like this is a 4.20-rc issue only, and that 4.19 does not have this
> > > issue.  So it might not be relevant to any distro at all, but I suggest
> > > that people test themselves to be sure.
> >
> > Hi Greg, thanks for the precision.
>
> And considering no released kernel is vulnerable, here is the proof of
> concept
> code provided initially.
>
> Regards,
> --
> Yves-Alexis
>


-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--000000000000765d62057c049851--
