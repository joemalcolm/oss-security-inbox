Received: (qmail 19824 invoked by uid 550); 23 Jul 2022 12:50:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13798 invoked from network); 23 Jul 2022 12:35:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:from:to
         :subject:content-transfer-encoding;
        bh=GZKHo+Q0OhDqcaVM4hKBfNpOaNkaAxca65VA0nQ9/ok=;
        b=NBtOO6Oa1DJKIO2lYk6lBNLGLf3hu/8b3CC5IgkIIBo9Yk33F9R+XlFMK7yF80mSmg
         z/M2aBbBPoFUEgFXcoFUI77bDLAxTUrcFy48TynljKMuxUGyEivZ9BBC9RTIH7M7jySj
         jSpvvl8WwyL5nb0at9jSreZXQQgy1oWbQ/8rdJ1ZEnRGIeTB0LhQSL1dRqKule9i7r8X
         II7DkapPVkMH+l2eXHoq6X3WRqoZxdv2I1ewZ7R//U4JLFpGdlbiwIRBievGkc9NZC+4
         7JvL6aXchUUEv/xGpCP8P587QDSlu82ckZCFG/VY6gb1aWrhyzYMC5uSvuWtib+Y9Ogn
         6zXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:to:subject:content-transfer-encoding;
        bh=GZKHo+Q0OhDqcaVM4hKBfNpOaNkaAxca65VA0nQ9/ok=;
        b=eIsQGcmBV+WnU3tGDjW4H5sFDVy5Az6If7KzmnHhIf6D0ZIAYKTRtyA9viw6mvuw3Q
         EjQ9061lYs4WhZaMxwpu3tckg1WZwhRawFrZNVLjemE8X0cHjfJh+JgnXLc2f9wZOrdt
         qzX6BiK78f8rinEe7RST0a9l2FuanaS2E1laAB9a2aBu8vlcZJN1KFGGQuKMwBdu+EUk
         e5i8jP915z6SjuiuOrIIthlpEbWgQ9d5eqJBXl2s+gtOEaW47GSCzBk5rNMJYIHJOKpv
         Z2pbSNTPhnmPVnltezVD4jzZN2XS0VoerZdx2yGbUiMMdlcNff05uqydGvO2jbIfySVY
         md6g==
X-Gm-Message-State: AJIora+hqP03ldRcBi8BPrUoe/yJMWz1ST8s3AC0iKxCsBoWWSg+pa1f
	WNWbseGiNbrYRlW90cWWhHtfjSo9eDD8Xg==
X-Google-Smtp-Source: AGRyM1tWqU2o5AZFYpl4gQgqtB5NjAHon0oddYCM0xEKQKqNSqLH16KSWMQIWmBlydjR7D2NIX6gww==
X-Received: by 2002:a17:902:cf11:b0:16b:e1a5:aee with SMTP id i17-20020a170902cf1100b0016be1a50aeemr4374031plg.132.1658579745552;
        Sat, 23 Jul 2022 05:35:45 -0700 (PDT)
Message-ID: <6ae481de-39c2-c4a9-5274-59c2bcdb2dd6@gmail.com>
Date: Sat, 23 Jul 2022 19:35:42 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
From: Pedro Ribeiro <pedrib@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: heap buffer overflow in gdk-pixbuf

Hi,

A year ago I found and submitted a vulnerability to the gdk-pixbuf tracker:
https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/issues/190

It's a heap buffer overflow using a crafted GIF, which is likely 
exploitable in 32 bit systems. Full details are in the link above in the 
bug tracker.

This was patched and the fix was merged 8 months ago as seen here:
https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/121

The issue is now public, but since no CVE was attributed, it probably is 
not being considered as a problem for downstream users of the package.

As of today, the latest Debian stable package is affected by this 
vulnerability. Using a GNOME file system browser and browsing to that 
folder will cause a crash, as will opening it up in a GNOME image viewer 
and even attempting to load it in Chromium (should have submitted to 
them for a bounty :D).

Hence I'd like to get a CVE to raise awareness for this issue, so that 
downstream users of the package can get patched.

Thanks and regards,
Pedro Ribeiro
