X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["338" "Monday" "25" "September" "2017" "14:16:04" "+0200" "Slavco Mihajloski" "slavco.mihajloski@gmail.com" "<CAJznFrvPcbHvu9v0vFHPe-BqjSGr9vX5Ji9Rt8reEkbKg4n80A@mail.gmail.com>" "16" "[oss-security] wordpress <= 4.8.1 SQLi" nil nil nil "9" "2017092512:16:04" "[oss-security] wordpress <= 4.8.1 SQLi" (number mark "U       slavco.mihaj Sep 25   16/338   " thread-indent "\"[oss-security] wordpress <= 4.8.1 SQLi\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9793 invoked by uid 550); 25 Sep 2017 12:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21860 invoked from network); 25 Sep 2017 12:16:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pneqjRqzfHr0PwXaauMfaWjKkCgbjPSfThNUuqiGXuI=;
        b=kK8buKbPIS0aSoPgXVPDUm1Jts/zG8Q+xYlB8RdA+9wlg2DpB9ynGxRsrgLsLmEU/y
         PxLaJecmDiZcQ2JcR5cXpPuTzhQT6l/iOQ0uLrC89dwUIryIHdB9w540vFPlL7Oiokzb
         jrKL2MLyWAeVk5WszOS7bubgMByDBL37RRVIKWC8IBujjWsJbzJnD1HrYYd9vsY8140W
         GdqGhQ0Kg5fclV87xtttxL8B3M8zXsVySSgIMP2E2dXd55g/2QZghTW9eI+MFgmGEmUL
         ES+l7nXw8NSBkqaAYkH5P2r1hLkBdBgPBbOdd3NIkr8IXmpLjSccO9MzagWwl8AyitEQ
         5Fng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pneqjRqzfHr0PwXaauMfaWjKkCgbjPSfThNUuqiGXuI=;
        b=Zs/TLVASnvWdwjK/mHAtBYa6w5Rbpx3dhltf1lU+KyySgPbtYWGpkAtlMOdx0FFhll
         vfMbihiAjPCCVRoWbpkefSjt8HlVt64F9smWNOrAN2Asfet8SVM8UhbsFil8ihGhZ+E+
         guVsjAiNAMEnEtwqn8WkwTUsp5pJ1/DIkxNo3wZ0dYx72w1Ek9sCMPkbqEjB97u9yq1i
         sg2ChrsR8HeNfNk6EU15C3XDRdi7o5PFF/3fJOhBHdWDvnVgoymT8LgpvRPG756/xw1o
         FoPTn0hibJ4vBAOu6YUEfem71JYg3QxjyLzUCr1W8GV7h1zQ/zNgg8Yv6Iz7pQtwsrR0
         u8Uw==
X-Gm-Message-State: AHPjjUj/vV1x/MaIT2TmQ/Icg1BLbZyOKzc0l4La2bAKCCW6Zah8w0xb
	CQPUoi6SsP8lG5hAdGQsYX2jgDhF49+0YHXWMR7UwV45
X-Google-Smtp-Source: AOwi7QDbHqOVYhWrOKVv9N/V+JqU8k7Bx4xteWmz4yq92UC/n0q6Hd85xgDlSLq5zLIDzbbX5D11cuHC2/sJ9f4d0Yw=
X-Received: by 10.159.48.89 with SMTP id i25mr7065389uab.177.1506341765087;
 Mon, 25 Sep 2017 05:16:05 -0700 (PDT)
MIME-Version: 1.0
From: Slavco Mihajloski <slavco.mihajloski@gmail.com>
Date: Mon, 25 Sep 2017 14:16:04 +0200
Message-ID: <CAJznFrvPcbHvu9v0vFHPe-BqjSGr9vX5Ji9Rt8reEkbKg4n80A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045e3ae8d18659055a0285b9"
Subject: [oss-security] wordpress <= 4.8.1 SQLi

--f403045e3ae8d18659055a0285b9
Content-Type: text/plain; charset="UTF-8"

Isuue in wpdb->prepare() method guides to sqli in the wordpress.

https://wordpress.org/news/

https://medium.com/websec/wordpress-sqli-bbb2afcc8e94

PoC:
https://medium.com/websec/wordpress-sqli-poc-f1827c20bf8e

Regards,
Slavco

--f403045e3ae8d18659055a0285b9--
