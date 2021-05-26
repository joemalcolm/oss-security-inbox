X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["385" "Wednesday" "26" "May" "2021" "15:48:22" "+0200" "\"Eduardo' Vela\\\" <Nava>\" <evn@google.com>" "\"Eduardo' Vela\\\" <Nava>\" <evn@google.com>" nil "14" "[oss-security] CVE-2021-22543 - /dev/kvm LPE" nil nil nil "5" nil nil (number mark "U       \"Eduardo' Ve May 26   14/385   " thread-indent "\"[oss-security] CVE-2021-22543 - /dev/kvm LPE\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-22543 - /dev/kvm LPE" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28156 invoked by uid 550); 26 May 2021 14:29:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9959 invoked from network); 26 May 2021 13:48:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fn4IQZZ0HR21gxR58Rw3Onr/DSmnsJ0VPT1s68fktPw=;
        b=n6zYOfhkXraQvkkHFxszeA6TzAMKI+xikSfOaZJTyyA47/Ag9ka2J7cKrgaS67fF/L
         3TRflSQP6ACg3ncfVf3FCwQyzuQ211GcMi/ZaNkOJh74m2/WSanVlW7MIjTxweU0zI9k
         wwcw9Ucdkj8zaSnfXMv1pKzYqQBVPK2+ReEDU8sVKzJrgzpjYV4bsWVhdzLZ+LjgikdT
         JL3gt5oQhaBXNWhnyFmNSw1+yaUATPGH+gaFYyKZ44V1Q6478/wb0g4eReAFJ4qIQudB
         9qb81OzXX9lQ2JxL6o63THS5tiSGhHI3qhB1reYxe2nDESG/1ge7yW6rmVE5gMGL7u9A
         lW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fn4IQZZ0HR21gxR58Rw3Onr/DSmnsJ0VPT1s68fktPw=;
        b=fY9SufMs5vpJQ0rC4bRGw7x5Wxdy13y3eXNp9GIZVnf0ntC3kSsFeUkk0FBmQMkVHF
         QCkLHgSLYiVRArklJbLXTNDe2eC1/ilYABWnc0d2748YcUWOAH8c6rhnDBOocU/0HuOk
         d22U+F9pNWt7aJyc6Wvc429PXxLbEctrtn/9kCGMy1GZwc9FqzUZhiudbAeXIjD3/ayN
         lf6aU9D4di6JlK2P057QqjddctbiF8MAfg1eRAe11VSvBmvJvbfsXwDKiZMwktVk6WIm
         6xpcOkciop/DjOgXT9WSeyJyw8S0Xijo3WZEU55TGztZBDgzLvc/L13YzF9l0WCKv2p9
         IIVA==
X-Gm-Message-State: AOAM531HSViMxq+gQoz8XdFEi7fRKZBnS29naZxfmbHB8qO+J1vlc8hB
	FkYfl/XgjtMFbly4rqH5iGEfEJwJwEGPRYBnGtArci/98NQ=
X-Google-Smtp-Source: ABdhPJy88OYn/+XomcHM6JOIv57JW1P7fbRevNYDTBr4Jn9syJiyGjimUaroZ/250lNUfV4zNh+dHb9bQZQauPYTZWY=
X-Received: by 2002:aa7:d413:: with SMTP id z19mr37881788edq.37.1622036916049;
 Wed, 26 May 2021 06:48:36 -0700 (PDT)
MIME-Version: 1.0
From: "Eduardo' Vela\" <Nava>" <evn@google.com>
Date: Wed, 26 May 2021 15:48:22 +0200
Message-ID: <CAFswPa_QOAgf6wgng+KJcPJKykNG3zQWyQfiXWHj8VK0W+_tKg@mail.gmail.com>
To: oss-security@lists.openwall.com, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000003209ac05c33be608"
Subject: [oss-security] CVE-2021-22543 - /dev/kvm LPE

--0000000000003209ac05c33be608
Content-Type: text/plain; charset="UTF-8"

Hi

I believe this still doesn't have a patch, but +Paolo Bonzini
<pbonzini@redhat.com> has been working on one for some time now.

Please use CVE-2021-22543 to refer to this issue.

Advisory:
https://github.com/google/security-research/security/advisories/GHSA-7wq5-phmq-m584

--0000000000003209ac05c33be608--
