X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3194" "Tuesday" "5" "May" "2020" "12:36:48" "-0700" "Igor Seletskiy" "i@cloudlinux.com" "<CA+-XxSFDRagnDGM=kdJJnBzemiiw6XSz2RgZZV3_=K=Fa9C1Yg@mail.gmail.com>" "85" "Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" "^Date:" nil nil "5" "2020050519:36:48" "[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" (number mark "        i@cloudlinux May  5   85/3194  " thread-indent "\"Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities\"\n") "<20200505192458.GA8312@openwall.com>" ("<CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>" "<20200505192458.GA8312@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10025 invoked by uid 550); 6 May 2020 09:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9795 invoked from network); 5 May 2020 19:37:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=zWFAo9I3xRPi259eeMVGhfe3Wp3eXiHbiA1e1EMktuM=;
        b=BVs7dutk03bzUrf44GUm3uv6MTFpkuYWRXok1QD+7R5/XqlX+mUKqAGzm8YzOfEgVG
         AjEcVZ5+Cw/+2fwBCbJQRND/Fe7bHbhcL9PXtGsyO+SBJ9r2eEiGODXWQizv0sMOQS0M
         CUAn7B5e2C0T6FpwP5QAeeNZ5lMQYLy+qHqSiIxnwbXrPXtzbCUMHt1jBfqQbTBQYYv7
         bTrueVxQGhiG1g0UmvFfUMmoy3gcznXEOJSRjPURtv6OWek5xpYjz8tnZduphYRdnaB7
         hVZFqfb+P7XrQX5STL97+XcMuSoV3Tsis2ZMBuR04qwksj02gqTM2NzW0aNzUQ9xmEg0
         4rmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=zWFAo9I3xRPi259eeMVGhfe3Wp3eXiHbiA1e1EMktuM=;
        b=X4qN9ICxeYTBUihQkhXAbhKhlG53i4bgnaZLGpG0h9rAHzxPklVacgYGpdKB9+8HQQ
         8DwEM0NhgNcpdpcDUd6XeTA2wFznSqcUTK+jJUafrpCxLlkdbDYsR1ptwSCDUwcNzxC3
         P87tJcoDFZA/nu8zNpMH4BY2T52031Kz8S1sAukkrSTen5F6CXYd1R/XJ88y0W4f/yUS
         kaIDyku6GvzeEVsXk8zFvLrjYlx3hT5FdGq/rdNlBoeStnvwCJ7dsb4KtzjudZi/t88P
         xQDa14L/VTnbX4PNIJDWDEeL7EJqb6KD+DX8d7mMrsAx3DxP7juLhxNJrWKO+LSNr1/6
         wI4w==
X-Gm-Message-State: AGi0PuZu4IKgOZPRCuLzLnvrL1TQD7kQdau7av68tZIreHlNDjRwJtj+
	PWZ2UV8ogFWKyCaddw9nW8QaTBHXwSP0FcQ+Hczduqjq
X-Google-Smtp-Source: APiQypJJ6p+7S8rS39/8emsm6AR+a024z7fwCW8mu+bZCFzXY+ulx0JyeTWPP1oOxnY3t8FmpxrMJnomblfQt3mzzqg=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr2604726ljm.165.1588707444777;
 Tue, 05 May 2020 12:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>
 <20200505192458.GA8312@openwall.com>
In-Reply-To: <20200505192458.GA8312@openwall.com>
Message-ID: <CA+-XxSFDRagnDGM=kdJJnBzemiiw6XSz2RgZZV3_=K=Fa9C1Yg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e603e905a4ebc608"
Date: Tue, 5 May 2020 12:36:48 -0700
From: Igor Seletskiy <i@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS leaving distros/linux-distros on May 26,
 handing off responsibilities
To: oss-security@lists.openwall.com

--000000000000e603e905a4ebc608
Content-Type: text/plain; charset="UTF-8"

Ok with CloudLinux to start acting as primary asap.


Regards,
Igor Seletskiy |  CEO
CloudLinux OS <https://cloudlinux.com/cloudlinuxos>   |   KernelCare
<https://www.cloudlinux.com/kernelcare>   |   Imunify360
<http://imunify360.com/>

Get 24/7 free, exceptionally good support at cloudlinux.zendesk.com
Follow us on twitter for technical updates: @CloudLinuxOS
<https://twitter.com/cloudlinuxos>


On Tue, May 5, 2020 at 12:25 PM Solar Designer <solar@openwall.com> wrote:

> Hi,
>
> Thank you Benjamin, Igor, John for agreeing on this between yourselves
> and for all of your contributions to running these lists smoothly.
>
> On Tue, Mar 03, 2020 at 12:07:29AM -0500, Benjamin Gilbert wrote:
> > Red Hat recently announced [1] that CoreOS Container Linux will reach
> > end-of-life on May 26.  The Container Linux team will be leaving the
> > distros lists on that date,
>
> I assume you'll remind me about that on that date.
>
> > and will need to hand off our maintenance
> > responsibilities to other distros.  We're currently handling [2]:
> >
> > Administrative-1: Promptly review new issue reports for meeting the
> > list's requirements and confirm receipt of the report and, when
> > necessary, inform the reporter of any issues with their report (e.g.,
> > obviously not actionable by the distros) and request and/or propose
> > any required yet missing information (most notably, a tentative public
> > disclosure date/time) - primary: CoreOS, backup: Oracle
> >
> > Administrative-2: If the proposed public disclosure date is not within
> > list policy, insist on getting this corrected and propose a suitable
> > earlier date - primary: CoreOS, backup: CloudLinux
> >
> > Administrative-6: If multiple issues are reported at once, see if any
> > of them can reasonably be made public sooner than the rest, and if so
> > help untangle them and stay on top of their disclosure process -
> > primary: CoreOS, backup: CloudLinux
> >
> >
> > Oracle isn't signed up for any other tasks, so it seems natural for
> > them to move up to primary on #1.  In addition to being backup on #2
> > and #6, CloudLinux is primary on Administrative-3 (evaluate if the
> > issue is already public).  In my experience it makes sense to handle
> > #1 and #2 together, so: Oracle, would you be willing to take primary
> > on #1 and #2, and CloudLinux, what would you think of moving up to
> > primary on #6?
>
> I've just edited the wiki accordingly.
>
> > It'd also be good to get volunteers for the backup slots.  Any takers?
>
> I second this request.
>
> > We plan to continue executing our current responsibilities until May
> > 26, but if other distros want to take over our roles sooner for ease
> > of bookkeeping, we're open to that.
>
> I suggest that Oracle and CloudLinux already start to act as primary for
> their respective tasks, and CoreOS as backup until you leave on May 26.
>
> > Best,
> > --Benjamin Gilbert
> >
> > [1]: https://coreos.com/os/eol/
> > [2]:
> https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
>
> Thanks again,
>
> Alexander
>

--000000000000e603e905a4ebc608--
