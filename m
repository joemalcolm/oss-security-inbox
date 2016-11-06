X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1768" "Sunday" "6" "November" "2016" "21:50:35" "+0200" "Eyal Itkin" "eyal.itkin@gmail.com" "<CAA=iMUKJ2gz4iAWTSGqmi4Smai+PH7GEG6zaYzFvDSiLyRZE+w@mail.gmail.com>" "61" "[oss-security] Re: [engineering.redhat.com #426293] CVE Request - firewire driver RCE - linux 4.8" nil nil nil "11" "2016110619:50:35" "[oss-security] Re: [engineering.redhat.com #426293] CVE Request - firewire driver RCE - linux 4.8" (number mark "U       eyal.itkin@g Nov  6   61/1768  " thread-indent "\"[oss-security] Re: [engineering.redhat.com #426293] CVE Request - firewire driver RCE - linux 4.8\"\n") "<rt-4.0.13-10592-1478170987-1523.426293-5-0@engineering.redhat.com>" ("<RT-Ticket-426293@engineering.redhat.com>" "<CAA=iMUKO8wUKDPcnYD3HS3eB3r7bLd5Mca-dDwOVGrXjT8jjMQ@mail.gmail.com>" "<rt-4.0.13-10592-1478170987-1523.426293-5-0@engineering.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5692 invoked by uid 550); 6 Nov 2016 20:02:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31964 invoked from network); 6 Nov 2016 19:50:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rbTeP2c1Rd+dSROVKinKByGzlB1aiY7ZsLeh87QUtyg=;
        b=TBnduaPJAzJDZin++CA+ch+xtFQ+XUht9ymglcNugFGVcSmhRLdxKc5sh1AzQQJvLN
         oxFd8NbguWJdJqCC7gmVTFWLOicHBu/5CPiloz8h4KyF9+p6NK9gj9HO9TSwLKNWXAmX
         W39tqKUUewB+Qc5toZXpL7T4cGJ6+xSoAY0vm7kvRIJMOa672TacO63brSaH5SFZ4t7Y
         ZzeNL0dcOUM9waVThaAX8VzDETdIeO/uqZlR0IUyBExMupeYnXD7ZU8lMi3XripTeVBl
         75R8uQe8ERzuI/pMc+LfsARm39zIYJ+0FNzcyX0K5b/5xszjW+7HdbG/cRKFUr/ZZcPH
         DwtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rbTeP2c1Rd+dSROVKinKByGzlB1aiY7ZsLeh87QUtyg=;
        b=Yo9bpnQo0Wr4aBrrRe6QiGeE2LiumR3fxF7Omb0gzXMmxf6XQHKqZlUoqFI32X0quL
         xIp3hBjuzcvdHP/TwCww/vBp2THHUIbdLF5AOih6onH9N5DQXwrLq39jUIi3YSiHI9zh
         ZwD2wPDdo0+5pq+4w0cJ7b+2kUFABlM/bkeXzFw9XmdoHaFYJAq8pAhOAFcVuz4deEJY
         OlXG+2KJvPp/QfMErsqFXF+F2muOI6O7GeGhBJlvMS0VTTnsZBAQvmNdM1KKt40e0aYZ
         gU6CPBoP9MpddMGyR6xClLeCRsw1uRNRiigqFhzczUiImcvcDN7O96ojjMZSSzSwTet0
         IBWA==
X-Gm-Message-State: ABUngveBYfuzzznirxeQryfemeuIBaER4758ybpzK0i8Rr9KyGjm7vxqDfAAM87jxSeoclDydBP86E2MUscnIA==
X-Received: by 10.25.154.142 with SMTP id c136mr1613754lfe.71.1478461835840;
 Sun, 06 Nov 2016 11:50:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <rt-4.0.13-10592-1478170987-1523.426293-5-0@engineering.redhat.com>
References: <RT-Ticket-426293@engineering.redhat.com> <CAA=iMUKO8wUKDPcnYD3HS3eB3r7bLd5Mca-dDwOVGrXjT8jjMQ@mail.gmail.com>
 <rt-4.0.13-10592-1478170987-1523.426293-5-0@engineering.redhat.com>
From: Eyal Itkin <eyal.itkin@gmail.com>
Date: Sun, 6 Nov 2016 21:50:35 +0200
Message-ID: <CAA=iMUKJ2gz4iAWTSGqmi4Smai+PH7GEG6zaYzFvDSiLyRZE+w@mail.gmail.com>
To: secalert@redhat.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11401be08a11e30540a73818
Subject: [oss-security] Re: [engineering.redhat.com #426293] CVE Request - firewire driver
 RCE - linux 4.8

--001a11401be08a11e30540a73818
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

The security patch was deployed yesterday in the official git repository of
linux, after the fix was reviewed and approved by me.
Therefore, CVE 2016-8633 can now be publicly disclosed.

Commit id of the fix:
    667121ace9dbafb368618dbabcf07901c962ddac
    https://git.kernel.org/linus/667121ace9db

Commit id of the mainline merge:
    03daa36f089f31002a2d0fb22088d3ebe3e28d98
    https://git.kernel.org/linus/03daa36f089f

Public disclosure details in my security blog:
    https://eyalitkin.wordpress.com/2016/11/06/cve-
publication-cve-2016-8633/

P.S. I CCed oss-security since in a second CVE (not public yet) I was told
by your colleague to send the publication request to oss-security.

Thanks for your help,
Eyal Itkin.

On Thu, Nov 3, 2016 at 1:03 PM, Red Hat Product Security <
secalert@redhat.com> wrote:

> On Wed Nov 02 22:41:25 2016, eyal.itkin@gmail.com wrote:
> > Hello,
> >
> > In a short security audit i made to the firewire driver in the linux
> > kernel, version 4.8, I found severe security vulnerabilities.
> >
> > After contacting security@kernel.org, the driver's contributors have
> > confirmed my findings and have written a patch that fixes the
> > vulnerability:
> >
> > http://git.kernel.org/cgit/linux/kernel/git/ieee1394/
> > linux1394.git/commit/?h=3Dtesting&id=3Dff89027279ec57d69797cbae7c6816
> 72f1dbea71
> >
> > [...]
>
> Hello Eyal,
>
> Thank you for reporting this issue and for your extensive analysis.
> Please, use
> CVE-2016-8633 for this issue. We'll treat this issue as embargoed for now.
>
> Best Regards,
>
> --
> Adam Mari=C5=A1 / Red Hat Product Security
>
>

--001a11401be08a11e30540a73818--
