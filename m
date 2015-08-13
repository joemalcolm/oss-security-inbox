X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1637" "Thursday" "13" "August" "2015" "11:36:10" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2DeUkw43uvh7iNaiR-aN7vXRgTwEZMuXuvE456zZoSnQ@mail.gmail.com>" "53" "Re: [oss-security] CVE request for saltstack" nil nil nil "8" "2015081317:36:10" "[oss-security] CVE request for saltstack" (number mark "        kseifried@re Aug 13   53/1637  " thread-indent "\"Re: [oss-security] CVE request for saltstack\"\n") "<20150813172537.GA19417@openwall.com>" ("<CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>" "<20150813172537.GA19417@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25763 invoked by uid 550); 13 Aug 2015 17:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25738 invoked from network); 13 Aug 2015 17:36:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=pmsHEbiw9/QUq6K6c56vIZvPSi+45BDMTVugNBN3l4A=;
        b=caGohkASAtI3ilupZFDnYSE9UZipBbFLPpuP9NKQQ1Bt8EuBes3BpaNm3edUUb6FAE
         okU9/LJnpBp4aGa8wHEg6Hl9sfYvwiDoEJ2p8feKxlWADOroQlvkp9NJxw6MVyQwf3Zw
         ujkdgQRfVZsbLRTrrLPDBSu72EdM6mOvkKz8S4skCrHAxSZtAO4hRX8RCqG/bIJM6UMk
         QIPm0xPmI7fGXQpmHLdafc/oH5BnPbBjM7D2k8fa7sZS8g9Avlmq13Ll4s1PuHgw6ll5
         9Gvykik99lqvyLFJksHfw2/te0CZIwf+1+UtGDRfkOVwi0DnbvWgfxvJ0EHQ2iNnQaB2
         BNFQ==
X-Gm-Message-State: ALoCoQmDY3Fwou6+1/jj7dgd6+96ZJk0xLzOCNgHjI929LW+h0b/FuhhVpKD6Cb4tDes/eTSRysi
MIME-Version: 1.0
X-Received: by 10.129.2.86 with SMTP id 83mr9779563ywc.61.1439487370974; Thu,
 13 Aug 2015 10:36:10 -0700 (PDT)
In-Reply-To: <20150813172537.GA19417@openwall.com>
References: <CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>
	<20150813172537.GA19417@openwall.com>
Message-ID: <CANO=Ty2DeUkw43uvh7iNaiR-aN7vXRgTwEZMuXuvE456zZoSnQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140cb50681367051d34c5c8
Cc: security@saltstack.com
Date: Thu, 13 Aug 2015 11:36:10 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for saltstack
To: oss-security <oss-security@lists.openwall.com>

--001a1140cb50681367051d34c5c8
Content-Type: text/plain; charset=UTF-8

Ahh to funny. Someone pointed out the commit to me and I didn't even think
to check if it got a CVE in the past. Please ignore my pre lunch
shenanigans.

On Thu, Aug 13, 2015 at 11:25 AM, Solar Designer <solar@openwall.com> wrote:

> On Thu, Aug 13, 2015 at 11:06:10AM -0600, Kurt Seifried wrote:
> > So someone pointed this out to me:
> >
> >
> https://github.com/saltstack/salt/commit/e8ce66cf688b43aeb3e716e78b1af3a08e9940e3
> >
> >      priv = '{0}.pem'.format(base)
> >      pub = '{0}.pub'.format(base)
> >
> > -    gen = RSA.gen_key(keysize, 1, callback=lambda x, y, z: None)
> > +    gen = RSA.gen_key(keysize, 65537, callback=lambda x, y, z: None)
> >      cumask = os.umask(191)
> >      gen.save_key(priv, None)
> >      os.umask(cumask)
> >
> > This is using the M2Crypto.RSA.
> >
> > TL;DR: doing RSA crypto with a public exponent value of "1" makes crypto
> > very fast. Fast is not always good.
> >
> > Can we get a CVE for this please?
>
> Duplicate CVE request, with wrong rationale this time (hilarious, though)?
>
> http://www.openwall.com/lists/oss-security/2013/07/01/1
>
> https://github.com/saltstack/salt/commit/5dd304276ba5745ec21fc1e6686a0b28da29e6fc
>
> http://stackoverflow.com/questions/17490282/why-is-this-commit-that-sets-the-rsa-public-exponent-to-1-problematic
> https://news.ycombinator.com/item?id=5993959
>
> Alexander
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1140cb50681367051d34c5c8--
