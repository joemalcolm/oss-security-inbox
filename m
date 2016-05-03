X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1734" "Tuesday" "3" "May" "2016" "18:52:43" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>" "45" "Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]" "^Date:" nil nil "5" "2016050316:52:43" "[oss-security] OpenSSL Security Advisory [3rd May 2016]" (number mark "        gsunde.orang May  3   45/1734  " thread-indent "\"Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]\"\n") "<20160503152100.GA4790@openwall.com>" ("<20160503152100.GA4790@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21780 invoked by uid 550); 3 May 2016 16:52:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21756 invoked from network); 3 May 2016 16:52:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=9ZG5gTw4jtS+jeOXRjoa7M/kQyTnVs9YBnoRzYT9zsY=;
        b=QpmZTft5fvUQaU/HuiqqLFZbnwAfm1XB4ijhbFhz3m7Y70Q0e9ivNlYx9KDBxbOyqD
         HFbn6EOUwoiTC4Yc8qP1R+y3V/rXLs7u+wWRpOXa4hC8+RSkX1/eP0A/4dJ4gtMKzgQj
         IBOkMOwpBIQqqXiB/ycooMe5vZZUj8KS6mzzpZleqssJUGAI6FN2yOQfSPoDgrxCEijW
         +gh0E67LVW4LQmVObBQubtVLSJZjJIzB0Of81UHm4PexeT7tdz/NCbvOhUdIjhN/Lv40
         0962R07dQRXi03CNyfd81bGu/QcTKpLexhFIEO8d879W/TSUFRlVEwPhPCPoPxHpmo0N
         ugyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=9ZG5gTw4jtS+jeOXRjoa7M/kQyTnVs9YBnoRzYT9zsY=;
        b=ihj8CoLPdT9SgAR/zS+rVYoI9jrWUoz+p+hhgz27dxTBWyDZrEDH/d/pNk6Fci0Ubu
         DCYzTzzpb+2eM04UQmcsUwPqA/5+jncPOEG4cTLjaSEKiSwkFkCZ8ihfRDMg3Vh2PXWd
         4TpSWqwZ3uWuxAT18Xg5XzfKPUXLdJqLZoQvhAN/3P1kdBirB61iMhmv1PDU6s6TNaES
         rkH4CmCoYTzGY586BN9vjQqbNymQ0X57BK9nkZJ3x4tgZDYiwDvdV7fIbokYoVEPIk1R
         HYNA9A5PmBzNfL+FXXWmzkN0/Vc9he30V+7wY1DHkuutI7a999ENW+v3Y/FQujfdYWCM
         QPiQ==
X-Gm-Message-State: AOPr4FW6i5JwvI+ruiM7RnGe4Qp1I4o+qBA1o5wZWB3Rt6612i/dtpfZzsDbE1H6hMmy+g==
X-Received: by 10.28.143.11 with SMTP id r11mr4784129wmd.46.1462294356410;
        Tue, 03 May 2016 09:52:36 -0700 (PDT)
References: <20160503152100.GA4790@openwall.com>
Message-ID: <52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160503152100.GA4790@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Date: Tue, 3 May 2016 18:52:43 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]
To: oss-security@lists.openwall.com

My current view on three of the issues:

* Padding oracle in AES-NI CBC MAC check (CVE-2016-2107)
The advisory says: "This issue was introduced as part of the fix for
Lucky 13 padding attack (CVE-2013-0169)".
So the following versions should be affected (ref.
https://openssl.org/news/vulnerabilities.html#y2013):
 - 1.0.2 through 1.02g
 - 1.0.1d through 1.0.1s
 - 1.0.0k and all later versions
 - 0.9.8y and all later versions

* ASN.1 BIO excessive memory allocation (CVE-2016-2109)
The OpenSSL code history tells that the vulnerable code is also in the
0.9.8 and 1.0.0 lines --> affected

* EBCDIC overread (CVE-2016-2176)
The OpenSS code history tells that the vulnerable code is also in the
0.9.8 and 1.0.0 lines --> affected
(btw: curious about where there are still EBCDIC systems that use
OpenSSL and are interested in fixing vulnerabilities...?)

Gsunde



On 03.05.2016, 17:21 Solar Designer wrote:
> Now we need to figure out which of these affect latest OpenSSL 1.0.0,
> even if unsupported.  I guess "Memory corruption in the ASN.1 encoder
> (CVE-2016-2108)" was fixed in 1.0.0 branch in 2015 as well?  I guess
> "Padding oracle in AES-NI CBC MAC check (CVE-2016-2107)" doesn't affect
> 1.0.0 since it lacks AES-NI support?  (I haven't confirmed either yet.)
> 
> ----- Forwarded message from OpenSSL <openssl@openssl.org> -----
> 
> Date: Tue, 3 May 2016 14:04:55 +0000
> From: OpenSSL <openssl@openssl.org>
> To: OpenSSL Developer ML <openssl-dev@openssl.org>,
>  OpenSSL User Support ML <openssl-users@openssl.org>,
>  OpenSSL Announce ML <openssl-announce@openssl.org>
> Subject: [openssl-announce] OpenSSL Security Advisory
> 
> 
> OpenSSL Security Advisory [3rd May 2016]
> ========================================
