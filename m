X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1000" "Friday" "1" "April" "2016" "13:42:37" "-0400" "Tute Costa" "tute@thoughtbot.com" "<CAKZKFJA2nzgaEOGg=Keqv8OE7zunaYwWcqx8maBaZbj-J+95xQ@mail.gmail.com>" "43" "[oss-security] Cross-site request forgery (CSRF) vulnerability in administrate gem" nil nil nil "4" "2016040117:42:37" "[oss-security] Cross-site request forgery (CSRF) vulnerability in administrate gem" (number mark "U       tute@thought Apr  1   43/1000  " thread-indent "\"[oss-security] Cross-site request forgery (CSRF) vulnerability in administrate gem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3575 invoked by uid 550); 1 Apr 2016 17:43:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3555 invoked from network); 1 Apr 2016 17:43:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thoughtbot-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=BfmDhck/jAH/CEYzgxxwONgKqqEf58rFXo1a5ZLT+Jc=;
        b=uX7iPCbFThCQtRxLpv7T1hYTJmFyfA2dpnBYgiNB59sHSP6x579u5/PcQ25mqyEBt0
         3fgmW6U58mhAxY8JJCyYNo7u+QyiAAvNYor7gGWFtDJonpQusF1i8uaJ+UPjI2e35/hI
         dTWg6LdNHqJZbzVUW2w91CojUh4CDV7ELSQuA5zOXRscjTKlIicILzll4CX2LyPCVTRm
         YDv4Z+YBvD0FGYlV5nzvmYJVFrnp7CX6velntzi3HZZYjlNC7WFu7iF8VLrtLM0NXoko
         rluShuQ5wP2bzpToKULiErXTAsG39dauVmmS8AVKNQJGJTtmpKr+Tb4Fcn++dnXP9HL1
         QYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BfmDhck/jAH/CEYzgxxwONgKqqEf58rFXo1a5ZLT+Jc=;
        b=IqMeVqJsXIuQx5bLrATd2lfLxcXw6G19szkhiCDb3ljjBafA6mPKhsoG9vHKcqV2wj
         D+0l2BLqe1uBTTOsERV8z5TnkqzQRLgZKGTSOjsLKAG265WiojpFsC6xwZshDIcr0mLL
         07XLvBubfupyRe0MRGUzFAIteE1x+2iWnjWjqesu0Hsc/sl1uGWbIpfMs5sooP86p43+
         6tgkTi2hncSPJ78sjHx/Xsfhm7oZjIQ6OsowqiAPj4mXW5tUwsQrH9TJRPfQ6CMMd9IS
         92nXlatiBj52b7xKdV/1S5t/kyxsngVu3gmMM1OslVNYi1KZZmt2cB0wS24+Ri4v92yN
         qF9w==
X-Gm-Message-State: AD7BkJI8b+g/Qp4l4kcpHd3uVKkj/Grri2U6LfN6/glfBzcm0Jv3atYnCRGvWH8N6B0Li3Z0TV9SwBbAMWSApg==
X-Received: by 10.194.84.2 with SMTP id u2mr6217723wjy.61.1459532577224; Fri,
 01 Apr 2016 10:42:57 -0700 (PDT)
MIME-Version: 1.0
From: Tute Costa <tute@thoughtbot.com>
Date: Fri, 1 Apr 2016 13:42:37 -0400
Message-ID: <CAKZKFJA2nzgaEOGg=Keqv8OE7zunaYwWcqx8maBaZbj-J+95xQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Cross-site request forgery (CSRF) vulnerability in administrate gem

Cross-site request forgery (CSRF) vulnerability in administrate 0.1.4
and earlier allows remote attackers to hijack the user's OAuth
autorization code.

Versions Affected:  0.1.4 and below
Fixed Versions:     0.1.5

Impact
------

`Administrate::ApplicationController` actions didn't have CSRF
protection. Remote attackers can hijack user's sessions and use any
functionality that administrate exposes on their behalf.

Releases
--------

The 0.1.5 release is available at
https://rubygems.org/gems/administrate and
https://github.com/thoughtbot/administrate.

Upgrade Process
---------------

Upgrade administrate version at least to 0.1.5.

Workarounds
-----------

You can reopen Administrate's `ApplicationController` to add CSRF
protection to your application:

```ruby
module Administrate
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end
```

Credits
-------
Thanks to Jason Yeo of SRC:CLR for finding and reporting this vulnerability.
