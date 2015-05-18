X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Monday" "18" "May" "2015" "18:46:38" "-0500" "Dennis" "shr3kst3r@gmail.com" "<CAOupQd1kV1ZCb=0whBLx0rAV6v_8PCAW3pu+EyicAh+mGN2rnQ@mail.gmail.com>" "38" "Re: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051823:46:38" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        shr3kst3r@gm May 18   38/1517  " thread-indent "\"Re: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<555A6B2A.1020205@gmail.com>" ("<5559A053.6090004@truel.it>" "<5559A43F.7040606@gmail.com>" "<5559AA5A.3050705@truel.it>" "<555A6B2A.1020205@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30232 invoked by uid 550); 19 May 2015 15:02:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25841 invoked from network); 18 May 2015 23:46:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=WDLiH54A+YglwRtrW8xjUkCJNiuEOmrnUcWctSXkC/o=;
        b=sSIiYM4XBEW07dZkbvtl9pMCn3XHlIDQrUJJFNZsYF+x336v2TrHr7tjmXOWV2Bie1
         reUO7x/zAQJeTLgLZ7uNBMa9dWUXPQysFPFNNaZVQ2z6FJ3+slDB4Wx3Ofbc2T5KItqT
         rAjg6YiRsRE/+cFy7QvEIPvBkEsuvb0R4E1tRPmOEJEUIEiXbgOmKPpgoEX7XSo7RxeE
         iSbsiW5vIkb2ooVUlXaIcilWJbGL1Op2iStqDkIWDjXl9tQ0e/zdAKgx/WMNA+G0nM4O
         RLqGSoou3m/2GsoHPbuQI9kpnpnPelpUenbASTKP+Qfu5mle0szD7Xg5almRdnXym32H
         RnNg==
MIME-Version: 1.0
X-Received: by 10.140.150.198 with SMTP id 189mr8648592qhw.88.1431992798887;
 Mon, 18 May 2015 16:46:38 -0700 (PDT)
In-Reply-To: <555A6B2A.1020205@gmail.com>
References: <5559A053.6090004@truel.it>
	<5559A43F.7040606@gmail.com>
	<5559AA5A.3050705@truel.it>
	<555A6B2A.1020205@gmail.com>
Message-ID: <CAOupQd1kV1ZCb=0whBLx0rAV6v_8PCAW3pu+EyicAh+mGN2rnQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113569e21944db051663ceb0
Date: Mon, 18 May 2015 18:46:38 -0500
From: Dennis <shr3kst3r@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign
 mismatch based memory corruption
To: oss-security@lists.openwall.com

--001a113569e21944db051663ceb0
Content-Type: text/plain; charset=UTF-8

At companies that host php for customers and use apparmor to jail the
customers, this type of attack would allow a customer to possibly take off
their apparmor hat and gain elevated privileges.  That is, being able to
execute arbitrary code outside of the php runtime in the context of the
apache process would allow the attacker to call change_hat().

- D

On Mon, May 18, 2015 at 5:43 PM, Stanislav Malyshev <smalyshev@gmail.com>
wrote:

> Hi!
>
> > About code execution, I haven't had the chance to focus on actual
> > exploitation yet (I surely will in the near future), but as you can see
> > from the original report (https://bugs.php.net/bug.php?id=69403), I
> > pointed out several cases in which working on a so-crafted zval would
> > lead to invalid memory access (with user controlled values as well), so
> > I am pretty confident it is achievable.
>
> These examples all seem to require specific code (like
> 'md5(str_repeat("a", 4294967294-1));') to be run. The probability that
> applications would contain this specific code with str_repeat argument
> controlled by remote user seems to be pretty low. However, if you can
> show exploiting this on a code of an application that is not specially
> crafted to demonstrate this issue, or at least resembles code that is
> likely to be deployed in a real application, I will gladly change my
> opinion.
>
> --
> Stas Malyshev
> smalyshev@gmail.com
>

--001a113569e21944db051663ceb0--
