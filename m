X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["345" "Wednesday" "21" "June" "2017" "10:19:35" "+0200" "Emilio Pozuelo Monfort" "pochu@debian.org" "<c8b219b1-2b44-06af-d770-27e02de6359c@debian.org>" "14" "Re: [oss-security] CVE-request: heap-buffer-overflow in jasper" nil nil nil "6" "2017062108:19:35" "[oss-security] CVE-request: heap-buffer-overflow in jasper" (number mark "U       pochu@debian Jun 21   14/345   " thread-indent "\"Re: [oss-security] CVE-request: heap-buffer-overflow in jasper\"\n") "<1c36c757.6889.15cc43283d4.Coremail.xiaoqixue_1@163.com>" ("<1c36c757.6889.15cc43283d4.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11841 invoked by uid 550); 21 Jun 2017 10:51:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19895 invoked from network); 21 Jun 2017 08:19:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G9Y8H08yiUVchb6Q04sceIG7UWmxBWxrDC969qJZiNs=;
        b=AwfwAbdXe9xvwkEUSvlu1k8Qt7oyUTUL8vD9L+RNqCf8rct6lIDCBXeZKZbNLKGbuo
         VXoLgtkOXSLWTiKRqAfv1vAjGSj5ySMQW9cG5fc2M/K06GElR0aVNIFmu2ldWIqVmlHk
         7l6shu2swoiHy8NrgWJgtetydgtDg7RbIa3mxC3707EcypziYOYff9We+0p/oHt4ws9s
         f0CzhmorspIhYU20agZN6rkjpkIBJlV8UXBDNWNWMFumOHTuabt8voyB1q/tv/q52hxj
         7MAM2p7cDaxlyIRkrR++ErQQOoDPH6aDXWXdmB64mbZVBUssZPUIiXvMU/xjvjAh7Ugi
         Y0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G9Y8H08yiUVchb6Q04sceIG7UWmxBWxrDC969qJZiNs=;
        b=NtQV3g4IT1v/5yRXhAUAWqdavdmobjE8X9hMmrlMH6kcs/nqs7tFdT8MZmdJwfulB0
         kpmXK+5HR+b1hzIGQxMINjoms+ln7fbWv4E9QPO9ZzI/5plMFx9/qop5259cykYFLHes
         cTBXe4zIlyKMUlvccCFDvtmFHPfZKz9cpbhPcCO5kZ716SjqmSt+DONQUnDMfpOB9sn8
         zJ3+vaG39/ZiQjovgydLxTm5nHP3I7lCN+z+GEEbCo39vzQhPvMwv01i8cXcezp/qVWU
         /wXHadcKTSuh8VjPCgmxmIzIMIksqlNHE/VwjJIneC7hemBQXlSilaI85jgTrlXYWWLu
         0ddA==
X-Gm-Message-State: AKS2vOw51ByM41C6zkoabunWWk7OkYus+1LimQzAN2uMDtBjdf47IJpF
	T8CkodR8lqCxRg==
X-Received: by 10.28.0.78 with SMTP id 75mr5510015wma.58.1498033177610;
        Wed, 21 Jun 2017 01:19:37 -0700 (PDT)
Sender: Emilio Pozuelo Monfort <pochu27@gmail.com>
To: oss-security@lists.openwall.com, xiaoqixue_1 <xiaoqixue_1@163.com>
References: <1c36c757.6889.15cc43283d4.Coremail.xiaoqixue_1@163.com>
From: Emilio Pozuelo Monfort <pochu@debian.org>
Message-ID: <c8b219b1-2b44-06af-d770-27e02de6359c@debian.org>
Date: Wed, 21 Jun 2017 10:19:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <1c36c757.6889.15cc43283d4.Coremail.xiaoqixue_1@163.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-request: heap-buffer-overflow in jasper

Hi,

These days you need to request CVEs by filling the form in
https://cveform.mitre.org/. Please follow up here when you get the CVE.

On 20/06/17 08:31, xiaoqixue_1 wrote:
> Timeline:
> 2017-06-14: bug discovered and reported upstream

How was this reported upstream? Perhaps you could link to the bug report, if
there's one.

Cheers,
Emilio
