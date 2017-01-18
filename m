X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["531" "Wednesday" "18" "January" "2017" "23:05:36" "+0100" "Jelle van der Waa" "jelle@vdwaa.nl" "<20170118220535.GA21362@gmail.com>" "16" "[oss-security] CVE request Weblate: information disclosure in password reset form" nil nil nil "1" "2017011822:05:36" "[oss-security] CVE request Weblate: information disclosure in password reset form" (number mark "U       jelle@vdwaa. Jan 18   16/531   " thread-indent "\"[oss-security] CVE request Weblate: information disclosure in password reset form\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9886 invoked by uid 550); 18 Jan 2017 22:17:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29712 invoked from network); 18 Jan 2017 22:05:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vdwaa-nl.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Fxl1G66fN4e+ZXGxjGivsiy/qPXZxkwGFmmAbWHRb3c=;
        b=WBg9H1fEDXck/pAQnyB5g9jvCezU+9VzNUiHBg+v+WH1EEL/JYF6uxBfFaDhIgpu6h
         Sv6hCH8MzQR883qNUmvS+ZOev+8XmP/19qGi8pToa7LNdLGurt/oLsom3xn7tk14r9P7
         dB+j6cqqQo9hlUuYeFsGXgQH/4+1wgd/8SLnA+6b2oOaBa3MR0Y4J4XK+CigA4ClVehE
         NYi+JxTRhmymDBuEoZM8D7+zdf93gYsM6G5ieG4dlFyn2xoINvwG3u2UFX5bVmROza9n
         +yMrUQgstnA8izZu8oW8qSpqahEe7MjARN9gBWWOBtFJyrFtXdpSTtZLI6B9Sy5g5GpC
         o/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Fxl1G66fN4e+ZXGxjGivsiy/qPXZxkwGFmmAbWHRb3c=;
        b=HwoVY6tZJHRVE65CwflFIA892fIMymt6ThQnOEq5RgRBwVy0N6M+5wufqM/npYg2Yr
         uud0i7UWw2D2+tbxxdomgcCqjNeCvqr0K4HYAJVE1ipGhu5vE2iI6IYmpuHiPeARqrjU
         YYL7bdMy2sMyoSt59GoUqDYi2JuJNfwbnhAdzbyVACowfq2RqMBZaBdXDewcSQDD8XwA
         MykDmidsRlqUDDn5FmQolybU0zt7kJNbiqFml1m2lh8cH2yXByJZu66GsSQPuEE0ECsl
         3Dc7agmq8sy5iyMQ6sS7Ago4Cz3AMKhsZu/jp/pkjDsnMs5Chss95JZXJt7Z0F+AyP6B
         MJHQ==
X-Gm-Message-State: AIkVDXJogAu/5g6K9KYRIaj6jiBazV2UD5J2ikvl/C7bmOvI47cJSYTBiUWP6RPii3dsCQ==
X-Received: by 10.28.130.212 with SMTP id e203mr4305229wmd.104.1484777138606;
        Wed, 18 Jan 2017 14:05:38 -0800 (PST)
Date: Wed, 18 Jan 2017 23:05:36 +0100
From: Jelle van der Waa <jelle@vdwaa.nl>
To: oss-security@lists.openwall.com
Message-ID: <20170118220535.GA21362@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: [oss-security] CVE request Weblate: information disclosure in password reset form

Weblate contains an information disclosure issue in it's password reset
form. When entering an arbitrary email address in the password reset
form Weblate will report back "User with this email address was not
found." this makes it possible to figure out which user accounts exist
on the weblate instance.

Affected: weblate 2.10 and earlier.

Upstream patch:
https://github.com/WeblateOrg/weblate/commit/abe0d2a29a1d8e896bfe829c8461bf8b391f1079

Bug report:
https://github.com/WeblateOrg/weblate/issues/1317

-- 
Jelle van der Waa
