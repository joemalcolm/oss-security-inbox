X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/20/2
Message-Id: <200806201434.41285.turkay.eren@gmail.com>
Date: Fri, 20 Jun 2008 14:34:41 +0300
From: Eren Türkay <turkay.eren@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: tmsnc
Content-Type: text/plain; charset=utf-8

On 20 Jun 2008 Fri 14:12:42 Nico Golde wrote:
> Hi,

Hello

> There is a buffer overflow in the tmsnc UBX handling code.
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=487222
>

I'm not sure if msn protocol allows longer than 512 bytes of data. If it 
doesn't support, there seems no security issue in UBX handling code. 

Does anyone know what's the longest value of personal message?
