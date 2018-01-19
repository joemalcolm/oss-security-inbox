X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1767" "Friday" "19" "January" "2018" "06:04:11" "-0800" "Igor Seletskiy" "i@cloudlinux.com" "<CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>" "48" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011914:04:11" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        i@cloudlinux Jan 19   48/1767  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<20180119135837.GA1212@kroah.com>" ("<20180118220124.GA9185@openwall.com>" "<efa92101-facb-84ff-7582-78583e8c7381@hpe.com>" "<CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>" "<20180119135837.GA1212@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27805 invoked by uid 550); 19 Jan 2018 14:38:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30659 invoked from network); 19 Jan 2018 14:05:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=PLK3+c2SmLz34eO+UqYYdEli72zTVv66XWYWV2SsqOc=;
        b=QmNSFWhZ3TI6Gaa7lZ3kpWKQ0/6sJYe51sAOJZ+RrQUXOnlvPNWseiNCKF5nBT0iFe
         +3FUZAI/9lY2kBjwxu6cin7ocRo1ZN5NBK1EJSK4tJ5b5Iw+GQ5Pv/SdV5ZHqqyVhgmn
         f7TLWXJjgWSe72AzOCqIGNy1ONmkKCEHMOU3KFUm4MBuRkeKNWQhE696aYAbHI9xDVHv
         IQMSWc9zESM8VMNjQN2HYGoQXe9RFt976bHRlPGL1um0K5dGmdtB5TrO2DdOLbHZEOPn
         CAIZGgMutXIQbAvuwibrDbjAGrmfUrcYFn4GiTGUQLuKZ1dToLB51M4Poe0KDrInEGUO
         61wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=PLK3+c2SmLz34eO+UqYYdEli72zTVv66XWYWV2SsqOc=;
        b=maqjCDWJCwrnhtBUQoH4uySFJi5FM3DO6pmmpO0eA2h82ivYp2pR8qos3GllOh161o
         HpPJxBAUsaWqlsqK+J1kOXaLWfk+Q1L3NDEvt8srJxwWHpFLSfudbIWutXgKPPtLrQ7U
         YiRF4FrFGv7XAHcz1PqUoflD/WBiztC38hgaJk7jt7FcbVE2BJRBHKr32eHMGOv6YeIA
         4DGKnlqGEoohpk9MF+HbAZPXyygnG1O500ix+SkSavJy1GfY/iVUaRVptOcOpt9NhMD6
         b0KdLTGg1PE+1SgKE5EgqLWt298+C4D1ETnr1sK4tPIE7+uuBmlnnedgArGfrGLaDEaW
         xrwQ==
X-Gm-Message-State: AKwxytcUPgzjH+BwPR5oiRNpQBUssJFcGLkkhXKNLVt6qcv53GZ5oVMo
	3slm1GSlOLOWGfEF/fNEFEUrPIUn+hBzGO7Y08JTzA==
X-Google-Smtp-Source: ACJfBot7U/j/OsdSuGDLSz4VIRvedOaSjym/DDZ4YSbuBv0RZbxQghBpwcWTURNX/76B9MM6ebgo9qpZmH+7CraQpfA=
X-Received: by 10.107.112.15 with SMTP id l15mr18223693ioc.68.1516370691912;
 Fri, 19 Jan 2018 06:04:51 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180119135837.GA1212@kroah.com>
References: <20180118220124.GA9185@openwall.com> <efa92101-facb-84ff-7582-78583e8c7381@hpe.com>
 <CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com> <20180119135837.GA1212@kroah.com>
Message-ID: <CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="089e082ce200708cfc0563219014"
Date: Fri, 19 Jan 2018 06:04:11 -0800
From: Igor Seletskiy <i@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

--089e082ce200708cfc0563219014
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

I am sure you are right, as you were in the epicenter of it and saw things
happening. More than that -- I am really thankful to a group of people who
worked on fixing it for months to get us where we are. Don't get me wrong -
in no way, I am blaming anyone.

Yet, KAISER patch & especially patch from AMD to the mailing list created a
lot of rumors, that I believe forced earlier disclosure -- because things
got into 'semi-public' state.
I might be wrong, I don't have all the info, and I am sure that people who
were at the center of it have a better understanding of what & why happened.


Regards,
Igor Seletskiy |  CEO
CloudLinux OS <https://cloudlinux.com/cloudlinuxos>   |   KernelCare
<https://www.cloudlinux.com/kernelcare>   |   Imunify360
<http://imunify360.com/>

Get 24/7 free, exceptionally good support at cloudlinux.zendesk.com
Follow us on twitter for technical updates: @CloudLinuxOS
<https://twitter.com/cloudlinuxos>

On Fri, Jan 19, 2018 at 5:58 AM, Greg KH <greg@kroah.com> wrote:

> On Fri, Jan 19, 2018 at 05:22:58AM -0800, i@cloudlinux.com wrote:
> > We have seen "semi-public" with Meltdown -- I think it was dreadful. I
> > would prefer private to "semi-public" any day.
>
> Meltdown was not semi-public, it was private and siloed and a whole
> bunch of other horrible things.  If it were semi-public, we would have
> had it fixed sooner :)
>
> And yes, a number of us involved are probably going to be writing up a
> post-mortum of that whole horrid affair, feel free to let me know if
> anyone wants to help out with it.  I think it's a great example of what
> not to ever do in the future...
>
> thanks,
>
> greg k-h
>

--089e082ce200708cfc0563219014--
