X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["556" "Monday" "13" "July" "2015" "07:01:49" "-0700" "Xi Wang" "xi.wang@gmail.com" "<CAKU6vyZ7dDpDdT0CFk5fZYAJCVH58VYegm4oaQC1A1+Bqv-=0g@mail.gmail.com>" "15" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015071314:01:49" "[oss-security] How serious is undefined behavior?" (number mark "        xi.wang@gmai Jul 13   15/556   " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21728 invoked by uid 550); 13 Jul 2015 14:02:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21707 invoked from network); 13 Jul 2015 14:02:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=8kUb/IqIfVeTqLNkpIdo2m27/NzscBVt8VN6xoeb8gY=;
        b=QMV+wTbA5hasdIxCJUW6RFSGucs4kIt3i7I+6Hgg1makt1CnNIOavdAJT69858awIA
         6LPUOsbKofWdA6gRiPvoWY4K739MWkkgOnouoFvRVf9MadWYqjiERA4pkfSqCxShtuor
         QS+2r1+ZTufxrYJMdEzItaPF3/2pfVpt+TKqo2SLaaoCej3meclWP0yVL23XGZYJA1UF
         u9UTZ0wD4bhTe8gZfFLhiOO0wfMzO4WMFLjXF86Ty2Z2SyB/AL37IJQ3l37ymOxVGwW5
         Hvvza1P0mhUlvm1uAWWDd8eF8AtPLsdv6n0FDKPwCoBi3dOxD2cVBQPAt/D9seCMVplY
         hfMQ==
X-Received: by 10.140.98.207 with SMTP id o73mr20792986qge.12.1436796148973;
 Mon, 13 Jul 2015 07:02:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150706181734.2b0288ca@pc1>
References: <20150706181734.2b0288ca@pc1>
Message-ID: <CAKU6vyZ7dDpDdT0CFk5fZYAJCVH58VYegm4oaQC1A1+Bqv-=0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2015 07:01:49 -0700
From: Xi Wang <xi.wang@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

On Mon, Jul 6, 2015 at 9:17 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> However I wonder how practically relevant these issues are and also
> how much focus should be given to them. Do people have good examples
> where e.g. an invalid shift operation caused a real, severe security
> issue?

One interesting case with shift (not necessarily a security issue) was:

http://blog.regehr.org/archives/767

You may also find more examples in the two papers:

http://pdos.csail.mit.edu/papers/ub:apsys12.pdf

http://pdos.csail.mit.edu/papers/stack:sosp13.pdf
