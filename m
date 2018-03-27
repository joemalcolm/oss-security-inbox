X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["672" "Tuesday" "27" "March" "2018" "10:58:50" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" "<CAKQ1sVM601_qrcr_-Y8axM=etSCDVh7k3h_ZkRjSA1Va1aH_Tw@mail.gmail.com>" "22" "[oss-security] Re: CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" nil nil nil "3" "2018032708:58:50" "[oss-security] Re: CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values" (number mark "U       ylavic.dev@g Mar 27   22/672   " thread-indent "\"[oss-security] Re: CVE-2017-15710: Out of bound write in mod_authnz_ldap when using too small Accept-Language values\"\n") "<726F94CB-5FAE-4BBC-B08F-825ECD096569@opencsw.org>" ("<E1f0KKp-00036s-1Z@romulus.home.bitnebula.com>" "<726F94CB-5FAE-4BBC-B08F-825ECD096569@opencsw.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13367 invoked by uid 550); 27 Mar 2018 09:00:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11507 invoked from network); 27 Mar 2018 08:59:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iIu3wwRxCrBIYNnY1vkY7/HpFuWZ5MvAp1JJxCX+7FI=;
        b=Ad74tqvn71GrJSlkw8Hf/4AiMOzzD+xTiefnv+LCh9x1ySHjAMjrxZ4pNIUdzypsIK
         rICpVb6Y2ABkXfJknKOOKJnGC+aI7fiwZ3siHWb8WX1PCC6D8jcXjRcXcs23vPumVW+/
         2jcTUVThlBrhRMpWznfNCjWq0XSFxabs61mBy6OaRHcTqIkUXG4mnX20+FRBYg3oStA5
         MXjPdQgAOQCnz5jPFWGG6b2aiYeWRVTFShppy/3umtJxVe58hIS4sr866apeGwKBpG+J
         rrU1QBpxxgWikgz6TQY2ylxsEcvlBRSpPxu/GeOBAzStVDVBsYxVqPhLPy++IGVk0WaG
         ANXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iIu3wwRxCrBIYNnY1vkY7/HpFuWZ5MvAp1JJxCX+7FI=;
        b=sODaDJZyBPGPDiE5flPGtsVRexjZy9iu/Fbda6ZxGKrzZQWPIUBAQmwwhEWJvuhBcF
         40uNavfbdv6tbD6ezl2JGc5HTMevuvbCpcssPTCL/KvM9EBsjVJ0kT3WPxbdbKPECldl
         E0+R+Z0P8cO9hunJLA5HlFcRa6if/Wwb2tJ0oxfv9lIoRL1QtgI+rJen7rQAUlZtYRy4
         01YZ2sREyOwQ+Nb6CbqmGhIdbGTwKS/DJzlqZi3ltx3AnGjIZ2JKL4ZDY9xjGMJdnUZj
         ZRzD6abhDxxKIpUUQn5F1y2FDYR/qjLfPWuAdejafBpgXw+Bs0aIEQTFaWX0iwM/bxFs
         hBlA==
X-Gm-Message-State: AElRT7H4YHmJ3WGNdTkmtOL+Dn/IMDK/fhpcGAWpq7nmDC7hFR5HYzBv
	xyp8WJVnE0By4pt1xoulkL9z4oOGQh6LuKQYbbMB9w==
X-Google-Smtp-Source: AIpwx48IfmEtqKD+B22YkMt01LIxCao4o07JV3qOGvG4odE7zIfLuzBR0E1MP73xcuEgEGzJkFqht3v4Ott3O0+Ra7s=
X-Received: by 10.237.50.100 with SMTP id y91mr32802998qtd.146.1522141131553;
 Tue, 27 Mar 2018 01:58:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <726F94CB-5FAE-4BBC-B08F-825ECD096569@opencsw.org>
References: <E1f0KKp-00036s-1Z@romulus.home.bitnebula.com> <726F94CB-5FAE-4BBC-B08F-825ECD096569@opencsw.org>
From: Yann Ylavic <ylavic.dev@gmail.com>
Date: Tue, 27 Mar 2018 10:58:50 +0200
Message-ID: <CAKQ1sVM601_qrcr_-Y8axM=etSCDVh7k3h_ZkRjSA1Va1aH_Tw@mail.gmail.com>
To: Dagobert Michelsen <dam@opencsw.org>
Cc: httpd-security <security@httpd.apache.org>, announce@httpd.apache.org, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: CVE-2017-15710: Out of bound write in mod_authnz_ldap when using
 too small Accept-Language values

Hi Dago,

On Mon, Mar 26, 2018 at 9:42 PM, Dagobert [...] wrote:
>
> Am 26.03.2018 um 07:06 schrieb Daniel Ruggeri:
>>
>> Users of (the now end-of-life) httpd 2.2 who cannot upgrade at this time
>> should apply CVE-2017-15710.patch, which is available at
>>
>>   https://www.apache.org/dist/httpd/patches/apply_to_2.2.34/
>
> This link does not exist, there is only
>   https://www.apache.org/dist/httpd/patches/apply_to_2.4.27/

Thanks for noticing and letting us know.

The 2.2 version of httpd has ended its long life and went to the attic
(almost simultaneously with this announcement):
  https://archive.apache.org/dist/httpd/patches/apply_to_2.2.34/

Regards,
Yann.
