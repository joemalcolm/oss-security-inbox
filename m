X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Monday" "15" "August" "2016" "16:10:57" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>" "30" "Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" "^Cc:" nil nil "8" "2016081508:10:57" "[oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master" (number mark "        marco.gra@gm Aug 15   30/833   " thread-indent "\"Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master\"\n") "<20160815075453.GE6359@kroah.com>" ("<CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>" "<20160815075453.GE6359@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22133 invoked by uid 550); 15 Aug 2016 08:11:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22115 invoked from network); 15 Aug 2016 08:11:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/U6xJidGsvcReU+57DR5E8t+vcM1/ggnEVmXD8fidwY=;
        b=HcB+RIBpuEiTb5R33KOzPMwMziTmz9gXrln/ea8fs2eHUjmqUs2zSXc24lUKzZ1E9S
         2V/JWZmXDbONKAYbSFWNcmypKMEkiZcgYJjXI1mRrMYNC0YhrcntYal7ZGdiS3SpVsIE
         c3C8jnz+3k07DQlgz3JH+bCSmL5sWPs2dEQENE5Y1SmGN3Vn1vh6qBDhwn51JAuVKo75
         MHg4MevKvt/kkjzJdY94ZdX3v+OVnRfy4PfvTk724cJtn0838JI1DdCN5Zhsg3OZo4Mc
         3Qp6+Nb4VWM+FcoQmu9fe/ZsrE2Eez+YPZLmjYJGcOQQ3wv4TOXVXy2FacMbSRgq78JX
         Uj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/U6xJidGsvcReU+57DR5E8t+vcM1/ggnEVmXD8fidwY=;
        b=k+Lu/H73wH7rxWKrd4tywGlK1nys/DLYF2b1WwsMKe73pzRiehGp2Rl25qeXH7HWHx
         BD+6Qhn4+7/IkVodswpYC2hWuda2D9pjeSDpiuy4Kt9M3AlcFemxiGotv/f7/tjXr4m2
         K4L/W0thv9Cj8jNYAHwb4cKneq+0bRMIWOUwDWQvCkPM3ZzbueeitVW560Srnnbez0SZ
         dISQsrZg+VmD/8yfWlGeLwwTvUAbMWoMdycJpcXy9arU7f1OmWcbXV4uxXbddDQFYoT9
         qKC1Lzy1odx4Ivx+QBC/oumkwZNFjLjyLkk1G2kvkstVdRFc+u4DsoWwZGwzE1oxymSK
         sw9g==
X-Gm-Message-State: AEkooutk5rQwNrZ3tJJyJSaFNcYPKncnAqmn3Q1KD7PdcPmM0k8GAd2iG0yKJtgqCgAp4UihyPRjiBr0C2vBhQ==
X-Received: by 10.107.10.92 with SMTP id u89mr35363513ioi.152.1471248658191;
 Mon, 15 Aug 2016 01:10:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160815075453.GE6359@kroah.com>
References: <CAFkTriL_5WgBrDLLujB=83-RXNYFW3bhNxi6Dr99vKnob_M3Rg@mail.gmail.com>
 <20160815075453.GE6359@kroah.com>
Message-ID: <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f9b52a5e1ad053a17c504
Cc: cve-assign@mitre.org
Date: Mon, 15 Aug 2016 16:10:57 +0800
From: Marco Grassi <marco.gra@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux tcp_xmit_retransmit_queue use after free on
 4.8-rc1 / master
To: oss-security@lists.openwall.com

--001a113f9b52a5e1ad053a17c504
Content-Type: text/plain; charset=UTF-8

I just tried several times, but there is some filter that doesn't get along
well with the content or with my gmail.

The message keeps not getting delivered.

Marco

On Mon, Aug 15, 2016 at 3:54 PM, Greg KH <greg@kroah.com> wrote:

> On Mon, Aug 15, 2016 at 09:20:17AM +0800, Marco Grassi wrote:
> > Hello, this program will cause a use after free of read 4 in
> > tcp_xmit_retransmit_queue or other tcp_ functions, often in another
> totally
> > unrelated process.
> >
> > reproducer + KASAN report is provided, tested on master available at the
> > time of writing and on 4.8 rc1
>
> Did you send this to the netdev@vger.kernel.org mailing list so that it
> can get fixed?  I don't see it there :(
>
> thanks,
>
> greg k-h
>

--001a113f9b52a5e1ad053a17c504--
