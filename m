X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Tuesday" "13" "August" "2019" "09:49:19" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7Eqdq8HpAqyBSBrAHUCrXnwWrhb3e8seQJZDYjNKeszw@mail.gmail.com>" "25" "Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" "^Date:" nil nil "8" "2019081307:49:19" "[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" (number mark "        cbuissar@red Aug 13   25/833   " thread-indent "\"Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1\"\n") "<alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>" ("<20190807065737.GA3930@cbuissar-ltop.localdomain>" "<20190812132515.GA4647@cbuissar-ltop.localdomain>" "<alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32635 invoked by uid 550); 13 Aug 2019 07:49:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32617 invoked from network); 13 Aug 2019 07:49:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=PHBtdtGoHaoOt0BIRBK2fsFgzO/AC+veUjI2GzRLzf0=;
        b=d6V5+rEFHVu3j8aZe5v10qp384rmR++GXgHPLZDRLqUAqX+yEJBHfrxXDEHraS2u1X
         hAgBcEkvFgSHc/rKnMJlniuWXsaYwIIeAHPa3HgGAK29PRS8PHtOlBLj6dUp0/VNRLWc
         VO1d3Xf3wRhHp3mC4uIRhXaa4z9QOiAY2b7d8XMG6lpemsDfaNBOIcse6Q1hBlJN9bDe
         k+ckablp3dru0fSlGrcVfnqbxwgPWbH21EaxHrkMn2O2YEYoWPC8YEuQTYmPo0CBzTV7
         LBhW5NtlvZAyghMjbubgRH/XFDeoA2pppEtWlvGe/JYFqstmiSHwBU/wZlO2Igfk4Mgo
         j4uw==
X-Gm-Message-State: APjAAAUFSxZguHSdUEhcQfzVJ+bNunErhiS+4Q/LqFTyY2Excil6bnZh
	oSv9ZbXmHDMGa1knB3L6v5rRcpTYuugPonD6wrkO4w58
X-Google-Smtp-Source: APXvYqxHDkm4SwZXvJ1lfemOLZUhg9tocgednLnpZ99EhpMo3+3qqhjP0aMvRYBn3XIUJCEgFJLcbN5SwHYiXv8tnIc=
X-Received: by 2002:a50:f4c3:: with SMTP id v3mr28725808edm.115.1565682570433;
 Tue, 13 Aug 2019 00:49:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190807065737.GA3930@cbuissar-ltop.localdomain>
 <20190812132515.GA4647@cbuissar-ltop.localdomain> <alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>
Message-ID: <CAKG8Do7Eqdq8HpAqyBSBrAHUCrXnwWrhb3e8seQJZDYjNKeszw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 13 Aug 2019 09:49:19 +0200
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1
To: oss-security@lists.openwall.com

On Mon, Aug 12, 2019 at 4:48 PM Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> Is it known if this issue also impacts the PDF reader?  I see that the
> involved code is Resource/Init/gs_type1.ps which is presumably related
> to Postscript Type 1 fonts, which might be included in a PDF file.

My personal experience so far is that vulnerabilities requiring to
modify error handlers do not work when embedded in a PDF.
That being said, maybe I do it wrong and there might be other ways.
I didn't have an attempt with that one so far.

>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt



--
Cedric Buissart,
Product Security
