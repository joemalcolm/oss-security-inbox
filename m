X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["345" "Thursday" "6" "October" "2016" "17:02:16" "-0700" "John Bowler" "john.cunningham.bowler@gmail.com" "<CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>" "11" "[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" nil nil nil "10" "2016100700:02:16" "[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" (number mark "U       john.cunning Oct  6   11/345   " thread-indent "\"[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18123 invoked by uid 550); 7 Oct 2016 01:04:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13987 invoked from network); 7 Oct 2016 00:02:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=A6k5xzjQzePkjO8hiUy+FTlY4BetltntPu+zvnZN+lQ=;
        b=xIUHmT9d9BafGkfBvR5eqOo7r76RRS/mTBmvmEjZOilGxjCKQ5VM8cIQaho2235XNk
         GHFRG8UFwcEtsJSgTjmeya0sTppfjJheQGVyQR0bbBOOGgFFEeTol1kFBtzie5iiVfsa
         U63lNGToAmL2Y7CxA4Jil3qmPirCYI+okgHeGCmgcDDSzJvwLRxAAH2x05Bxsx+swR7F
         h/xozVCmpk+aFWozdKptIFGsvuT6utCYp4DbP6WxgsomePRd1+mIke489Bnra1Cb2xDj
         Wg1Vlkwulbhm9dCEP5j16WrFCGBplWHfWDT0B34nUlw6wMSkewF8gpTYIMzVnGBn6s4/
         3jpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=A6k5xzjQzePkjO8hiUy+FTlY4BetltntPu+zvnZN+lQ=;
        b=WB2hN04l6SwHpIhtNA+3xQTI6/On+7xGAlqR+dAiR5IEbZMrbXsOBXF1e65klNUUhb
         Sn73RJDrtsUa8wJ5y8VJGqA6hCenppsXrbU9Boz7ohrkhPfkWro/I4CQnTCcgRcAyZ6D
         9R3poHAX2D0hTLxp/ogJmrcLNMwyZhIR1VLaM6SrZtqCYcUeXKP5cbvqybqkU7b3EydV
         IX7KSigM9lFFJd4hBGH4BgcaAg5/XHYCQ/r6E68XO6QxaSo+tVCYK85oOHbxS+c9uiOT
         7pE6fiUhr3c6YyhMA1TXtquVHn8X3GV1N0vq1kRBpKipFZB9jvgY8fRqPQ+fEtiUvEpm
         vXWQ==
X-Gm-Message-State: AA6/9Rmo48lN2p68WCorG5UVW5UbrLnzwA85AZZH0UwnIdsyLrx6InmQERNqO7OLiuXEGANthqnOZ3RBa2Johg==
X-Received: by 10.13.192.66 with SMTP id b63mr4352698ywd.161.1475798536770;
 Thu, 06 Oct 2016 17:02:16 -0700 (PDT)
MIME-Version: 1.0
From: John Bowler <john.cunningham.bowler@gmail.com>
Date: Thu, 6 Oct 2016 17:02:16 -0700
Message-ID: <CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds

The bug is not specific to librsvg.  This instance happens in
write_png inside cairo-png.c, but the actual bug is elsewhere.  Other
exploits probably exist using things other than PNG and SVG.  I think
this needs to be CVE'ed immediately.

-- 
John Bowler <john.cunningham.bowler@gmail.com>
+1 (541) 450-9885
PO BOX 3151
KERBY OR 97531-3151
USA
