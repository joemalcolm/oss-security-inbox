X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1133" "Wednesday" "27" "January" "2016" "10:47:18" "-0500" "Justin Bull" "me@justinbull.ca" "<CAFB0D2S-jjKKegnTqXo+Kcn9JME+=KwAjUVKMBVCWS=z1uxQUQ@mail.gmail.com>" "40" "[oss-security] Re: [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack" "^Cc:" nil nil "1" "2016012715:47:18" "[oss-security] Re: [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack" (number mark "U       me@justinbul Jan 27   40/1133  " thread-indent "\"[oss-security] Re: [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack\"\n") "<20160125193202.GB14069@TC.local>" ("<20160125193202.GB14069@TC.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13777 invoked by uid 550); 27 Jan 2016 15:47:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13759 invoked from network); 27 Jan 2016 15:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull-ca.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=eJ4zlzVS80DSfHK19lfZDdpEBEdfPO7fM5HbzWkTIoE=;
        b=qguHtnlwlfdLWOP3FtXEMe6HPqNcpVCqH844zQR5OzI2aw8bPGEYG93haYwFM1VpwR
         eSnpom5CwVkRwSDdfttjS2D4zzgLLBurnj9xE8XAS88cAl/Ujud8adnQKU9bk1adRICU
         OOvGq4edB9pnR7bRk9fd2LVAL1KXBEf9INUHFuEZY+AgdpNt7sLbsk3lY4SbG6cpYpr1
         DMl3gB7CTtWpZaZvfd2CTawSUXLEimW4VlYBxF4L6ViPsmNRSdYaj1Kv4hxQiilR/Wgn
         Nh6cTOhQod8aa/vIiiBY/nTmmw5+WjkX31kNF1Ij5B6mPkIjyEFtNc+rpYwBXUc3YITC
         dSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=eJ4zlzVS80DSfHK19lfZDdpEBEdfPO7fM5HbzWkTIoE=;
        b=dw+KJVz3gtEjMMXvCr5XeeWD88LkxJKbcAVXgkuT7xFf75DjiJjSBZZnaNtdxLTixL
         oQhi5ahnmACwVYPKFEHJ6TQYDUu3LJzjqen0cCqCNTesRCmgo22CJDLSnxxRngSkRdqr
         dba/vkZXZ3S9eonsydTUjsm2ta5rmWYiQpvAnp779Cyl2xpPqNM0Wcf/gvOV6OdtuvK9
         t3fKw7YFfp9ndL41WSusrwbqUG8nMvCFPHU8i+JD1Iktf46nB4kney0Y+5siwXj2Rt30
         I6mkpmthKV1HrbyjYUmCJwZj7/uvrWXq+g5wlfgBUr0DTxyiUb4ojW1cxS8+NtMAFzfW
         3SPg==
X-Gm-Message-State: AG10YOSn7OHrfAlcyd2DI6XawK9NZjiYzcZsqBQd/oEdbIwxFN5Q0X2sCeLwKBoljK3VIiED2DtbLfY+bS18lg==
X-Received: by 10.60.60.3 with SMTP id d3mr22463785oer.24.1453909657776; Wed,
 27 Jan 2016 07:47:37 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [207.35.8.98]
In-Reply-To: <20160125193202.GB14069@TC.local>
References: <20160125193202.GB14069@TC.local>
Message-ID: <CAFB0D2S-jjKKegnTqXo+Kcn9JME+=KwAjUVKMBVCWS=z1uxQUQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013a04a8b01713052a52b898
Cc: security@suse.de, oss-security@lists.openwall.com, 
	ruby-security-ann@googlegroups.com
Date: Wed, 27 Jan 2016 10:47:18 -0500
From: Justin Bull <me@justinbull.ca>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [CVE-2016-0751] Possible Object Leak and Denial of Service attack
 in Action Pack
To: rubyonrails-security@googlegroups.com

--089e013a04a8b01713052a52b898
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 25, 2016 at 2:32 PM, Aaron Patterson <tenderlove@ruby-lang.org>
wrote:

>
> Workarounds
> -----------
> This attack can be mitigated by a proxy that only allows known mime types
> in
> the Accept header.
>
> Placing the following code in an initializer will also mitigate the issue:
>
> ```ruby
> require 'action_dispatch/http/mime_type'
>
> Mime.const_set :LOOKUP, Hash.new { |h,k|
>   Mime::Type.new(k) unless k.blank?
> }
> ```
>

I know 4.0.x isn't a supported Rails version, but it's worth noting that
with our app, that workaround breaks the `params` hash in Action
Controller. The request must be "application/json" with a POST payload. The
workaround, for some reason, completely removes the post payload hash from
`params`. Note that a "multipart/form-data" request and GET parameters work
just fine.

Advice as to a workaround that preserves "application/json" POST request
parameters would be appreciated.

-- 
Best Regards,
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C

--089e013a04a8b01713052a52b898--
