X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1972" "Thursday" "17" "November" "2016" "19:54:20" "-0500" "Jacobo Avariento" "spinfoo.vuln@gmail.com" "<cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>" "48" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Cc:" nil nil "11" "2016111800:54:20" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        spinfoo.vuln Nov 17   48/1972  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "<20161117163922.GL5329@io.lakedaemon.net>" "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>" "<20161117175017.GM5329@io.lakedaemon.net>" "<8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19490 invoked by uid 550); 18 Nov 2016 01:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9240 invoked from network); 18 Nov 2016 00:54:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=2FX6wvvluqw22Oy7o6rhRHAbvJTZnuAjCE+9uf8dh4k=;
        b=nFSbb7cVSZrk9kemQz36IT4rwITGclz1CtuRC8AbJxd2DYdR4v/u/E3uHHG2scyIlw
         rwyQn+hAzwF6QivDyDIm4e1YKI64r7VxdABDXN+vb6qHMByMid20cpSacduduM8hv2BM
         KvkDuiUt0p4MXGq50BGLSmsZe+0R7mcQNzNwaO9jswRYGD3Fe5NO6XpXGSJBiqujsMvQ
         uAWAd3FBp39GMVG4x35H9vSUSuhr0gU0HT8DGXZ4bH7WjwnMWatbGkXJgLRXOq07VwSq
         NXJVnxelNDMgEDG8REL2GMM8eiJHFeiun5iCw+6rgwlPN1QBnQ99Fqut3ju7DyCROIHP
         wwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=2FX6wvvluqw22Oy7o6rhRHAbvJTZnuAjCE+9uf8dh4k=;
        b=JOfnXODjg+mgSw3chicLGZnBeQzHfcq8ZAxHWmUiGS7ZJ699846D1x0LcyQb09a316
         6Q25jgualtkH+wlSJMJAGIXQBofetBijUXyQE4fcf4q9cwDbn3moNiDxkG2lbfUX9WxQ
         iuUvv1KhQWRoIPCTIaaiu0kRi+GsBOZFxnxuzg9WYATmtpHQFNLF2vERUvHs09KvYb+p
         4IOZAA822RRgHOfeHNI6nnAYRHL8vU/UpJTm26jUnHFDzQDGwq3/0E+MZ6HGI4SEOLfk
         aAM0SR6g9RFfOfe7774vfMyqAkiM9qRjmzV5YHjnBm3cMXd7h0xMaOfBqOPs1wYKRXtL
         shCg==
X-Gm-Message-State: ABUngvfKIpjm+yGyABfmak0PCU1LuCGjl4dKxg1JX+XW88J8fcAWN323lb1X3l1shuGQnw==
X-Received: by 10.176.2.110 with SMTP id 101mr4384331uas.8.1479430462729;
        Thu, 17 Nov 2016 16:54:22 -0800 (PST)
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
 <20161117163922.GL5329@io.lakedaemon.net>
 <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
 <20161117175017.GM5329@io.lakedaemon.net>
 <8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>
Message-ID: <cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: john.haxby@oracle.com, osssecurity@lakedaemon.net
Date: Thu, 17 Nov 2016 19:54:20 -0500
From: Jacobo Avariento <spinfoo.vuln@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

Good debate.

Actually when using full disk encryption, to lock the BIOS and GRUB must
be mandatory, otherwise you are protecting your confidentiality but not
your integrity. Even with a password in GRUB with an unprotected BIOS
you can also boot from a USB device and access encrypted partitions,
delete them, etc.

Just to mention another method complimentary to the "rd.shell=0" a
similar behaviour to this "flaw" can be achieved using at the boot
sequence "rd.break=pre-udev", this also gives you a root shell with
access to the hard disk.

Regards


On 11/17/2016 02:15 PM, John Haxby wrote:
> On 17/11/16 17:50, Jason Cooper wrote:
>> Hi John,
>>
>> On Thu, Nov 17, 2016 at 04:56:06PM +0000, John Haxby wrote:
>>>> On 17/11/16 16:39, Jason Cooper wrote:
>>>>>> However, the golden rule still applies.  Physical access trumps all
>>>>>> defensive measures.  The absolute best you can do is detect that
>>>>>> physical access occurred.  From there, you're hoping there are no
>>>>>> hardware implants or other devices outside the scope of software
>>>>>> security.
>>>> I agree.  However, it ought be to be harder than leaning on the enter
>>>> key to break into a system.  You lock your doors even though it doesn't
>>>> stop a determined burglar?
>> Yes, as I said before, non-deterministic failure modes are bad.  This
>> CVE is a bug in the initrd script and needs to be fixed.  What I
>> disagree with, and still do, is the "sky is falling!" nature of the
>> alert.
> Yup.  I agree there, but that's down to the publicity its received.  We
> can't do much but grin and bear that.   Red Hat have given this a CVSS2
> score of 7.2 which reflects the _potential_ severity but marked it as
> "moderate" which reflects the actual effect.   It's most serious for
> people like me who have an encrypted root but no grub password (and no
> rd.shell=0) but, no, the sky is not falling.
>
> jch
>

-- 
https://github.com/spinfoo
https://pa.linkedin.com/in/jacoboavariento

