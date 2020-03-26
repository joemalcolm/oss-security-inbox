X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1762" "Friday" "27" "March" "2020" "01:10:36" "+0400" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tTgXgApNVG+rFNmsyFg9F0AVPtcJj=SqZpBrfw1os+wdQ@mail.gmail.com>" "33" "[oss-security] Stealing Videos from VLC-iOS (IDOR)" nil nil nil "3" "2020032621:10:36" "[oss-security] Stealing Videos from VLC-iOS (IDOR)" (number mark "U       mishra.dhira Mar 27   33/1762  " thread-indent "\"[oss-security] Stealing Videos from VLC-iOS (IDOR)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Stealing Videos from VLC-iOS (IDOR)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28487 invoked by uid 550); 26 Mar 2020 21:52:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23885 invoked from network); 26 Mar 2020 21:11:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lza7wCA9xFOpoZKvJqP2uG/kPNiqpsSGqwGw83pyvlQ=;
        b=bH9FSJ2orUUpMpd640jMIbxFqIZA/M8vDgqEQBkXz9EZIztmR6TLwOjnwrQaMzhktH
         UIJO4uGL/7K8ZAQG6UnnC8+ZfdnOCuCnL3nqT/2RuHUe83q+59LIHRUzmZ1sG8X9ataD
         yyuX8qq12A1GHew4/e34yTNzuUvw+cnEqT4ArCSYzetAVY7XL+8WUiuICX+QgXeCdvYT
         OHZL+8WDCStC6gA0ewvOu6tGgje8zdSVDuQfSYOwlmpi7LzHTp7vZyhKJy09bEsXlvx8
         OdSqSPPp8xHq7M4UWqjxNXbcQdXUqJmjDbJYhBwqgumtudwtK0XHTFuXooqTLrjUo2RM
         cQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lza7wCA9xFOpoZKvJqP2uG/kPNiqpsSGqwGw83pyvlQ=;
        b=RvEcGLlCoBkjNimnR3lcT8uXK3b3cTThcyq0AxZSJoF+DZwv77TXRHMLSj/YAD3Xqj
         xk1NC5obkJJKvplO1Id5AvNJsC/WEJ5k4vWFtEHMW4q72j7gw6JMNhplznLo2Tj2SHSz
         HxnuZt+uG0s0ikp+lwjyj0i4Yw9GfY9Agv7wbJFlyMoqL6LjfnhSdu4IHkzElPiUq4BM
         Y2EORokfDAw1SP134AO1tNXdQtTPwuCUz3LUOtZnlVd4+zPPWnQPL6W+iQU7Zt/mR3Qo
         jCcp+jS6LzeThKMbzPSEetuTu/7z1RroXTP9EbGLIqvZIa9ybk2UsmXgFqPSUYKii1Sk
         Jzzw==
X-Gm-Message-State: ANhLgQ1iWPlDty3VYPaW+rDk/OJuKafqt1wEWM1ib7659kc73Hh5pymo
	ygYluGuPrlPRsvn1LaCGz1bYBX6ZndU+8llt0/hXZXnyHG74Sw==
X-Google-Smtp-Source: ADFU+vsZlQSJ2vp6hxfPswGsdS/ld+AwJ6sRqDSM/DsWjnQKzLEWbDLxXES9VB+IKunNL8sGBWS4Hkdr64I7AEs8FFM=
X-Received: by 2002:a9d:5c82:: with SMTP id a2mr3882894oti.22.1585257047388;
 Thu, 26 Mar 2020 14:10:47 -0700 (PDT)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Fri, 27 Mar 2020 01:10:36 +0400
Message-ID: <CAG8b5tTgXgApNVG+rFNmsyFg9F0AVPtcJj=SqZpBrfw1os+wdQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002ff88205a1c86ba3"
Subject: [oss-security] Stealing Videos from VLC-iOS (IDOR)

--0000000000002ff88205a1c86ba3
Content-Type: text/plain; charset="UTF-8"

Summary: VLC for iOS was vulnerable to an unauthenticated insecure direct
object reference (IDOR) which could allow a local attacker to steal media
from the storage by just navigating to the source URL/IP. This was possible
by abusing a functionality in the iOS application for VLC, which allows a
user to share files with others over WiFi. This can be simply done by
enabling "Network > Sharing via WiFi" and the web-server for this
functionality works on port 80(http) protocol.

Attack Vector: Let's assume a scenario where Bob & Alice are sharing a
video over the WiFi using vlc-iOS, Eve could perform this attack by
crawling the source IP address of Bob which would list the URL's of the
videos shared between Bob & Alice. Having said that, navigating to those
URL's Eve could simply steal the video without Bob's knowledge which
successfully leads to unauthenticated IDOR. Such things can be crawled via
burpsuite or you can use python scrapy to extract the URL's from the host
and download the videos.

Mitigation from VLC Security team: They implemented a user-friendly
authentication mechanism on VLC iOS web server for WiFi Sharing. Passcode
authentication is enabled when VLC's passcode setting is enabled and the
user uses the passcode that he set in VLC's settings to log into Wifi
Sharing. This was reported on 2nd Jan 2019 and patched on 10th Feb 2020
whereas fixed version was publicly released in March 2020. Post mitigation
VLC published an advisory for this which you can view here[1].

References
[1]: https://code.videolan.org/videolan/vlc-ios/blob/master/Docs/NEWS#L3
Blog URL: https://www.inputzero.io/2020/03/idor-in-vlc-ios.html

--0000000000002ff88205a1c86ba3--
