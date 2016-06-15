X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["655" "Wednesday" "15" "June" "2016" "10:42:48" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>" "29" "Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" nil nil nil "6" "2016061508:42:48" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "U       cbuissar@red Jun 15   29/655   " thread-indent "\"Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") "<20160614211623.GB11505@sentinelchicken.org>" ("<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>" "<20160614211623.GB11505@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13427 invoked by uid 550); 15 Jun 2016 08:43:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13406 invoked from network); 15 Jun 2016 08:43:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=s0Eoyb4ph23EPEwuNVzSYbN/Ss5Fvb1NKAvri+af45U=;
        b=bl9TN5Z7pOPg8C7BtxLVklp63PYRnNUvLGFPU1SEv49wECNT0mWeigcn1/XifFRbFV
         gw8NeE/cUiUzPUvhI63jQJ3ajpHZjzqZQ+1e6lORA3ce/zorGwVQadrm+FdUZmqF7rJH
         FD/dVYMEvrI5Q6chq1LWxYwJ/+stE3nE27FyzmXFhaRdsTH0WIoAYUjYJ/s51wanj/hp
         oJKMuua6NLzthKMSulPjac7Yq5bttYQtQIAYToYIo14QkdnMKtHLlz2MlHZAU1Xom/pR
         wUHfC2Mtep95NEjh89In8Hoc07nJ6F9MQBn0/cjj0BHbi/tKjeFyXag1rrllAK7gYlG8
         ywsA==
X-Gm-Message-State: ALyK8tJ+6G5vxwnN6ZWx1UhAd3SSyBsep/UDwck8tLF/1IxLqks+2cApmZAF4OV9ZRSt0hghlVi30L6seOK2Fbul
MIME-Version: 1.0
X-Received: by 10.98.30.133 with SMTP id e127mr2692032pfe.112.1465980168484;
 Wed, 15 Jun 2016 01:42:48 -0700 (PDT)
In-Reply-To: <20160614211623.GB11505@sentinelchicken.org>
References: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
	<20160614211623.GB11505@sentinelchicken.org>
Date: Wed, 15 Jun 2016 10:42:48 +0200
Message-ID: <CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c03b68e30d6da05354d1b3c
Subject: Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client

--94eb2c03b68e30d6da05354d1b3c
Content-Type: text/plain; charset=UTF-8

Hi Tim,

On Tue, Jun 14, 2016 at 11:16 PM, Tim <tim-security@sentinelchicken.org>
wrote:

>
> In the mean time, do you happen to have specific information on which
> versions of the 2.x and 3.x upstream branches were affected/fixed?
>

Reproducible on all python versions I tested : 2.4, 2.6, 2.7, 3.4 and 3.5

Fixed branches :
3.4 / 3.5 : revision 94952 : https://hg.python.org/cpython/rev/bf3e1c9b80e9
2.7 : revision 94951 : https://hg.python.org/cpython/rev/1c45047c5102

Regards,

-- 
Cedric Buissart,
Product Security

Purkynova 99
Brno 612 45

--94eb2c03b68e30d6da05354d1b3c--
