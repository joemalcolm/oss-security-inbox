X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Saturday" "30" "April" "2016" "14:41:03" "+0200" "Bas Pape" "baspape@gmail.com" "<CAMoU6uYcJu7-RbCRQ1O9zqOHF14fD+CyMB+=y6Xt21UQiiJjVQ@mail.gmail.com>" "18" "[oss-security] CVE request - Quassel IRC denial of service" nil nil nil "4" "2016043012:41:03" "[oss-security] CVE request - Quassel IRC denial of service" (number mark "U       baspape@gmai Apr 30   18/662   " thread-indent "\"[oss-security] CVE request - Quassel IRC denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10002 invoked by uid 550); 30 Apr 2016 12:41:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9982 invoked from network); 30 Apr 2016 12:41:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=KOSo7iofqNdJR9THOtDvsctUJp9wK1ftbcJ2LuPu0Do=;
        b=IA6yzcUqXu7bgjUoMPYg9a8+wnUoV5FD3RygcfS42CZE6ShApRP2KPXJEmIAMuOfAv
         wP5PfgvOut1YdF36hkNn1rIahbNk44QYvkyKWrPK06RwJyzt24bAlU/mh2hyF9nNm7cv
         JLAp/mpIEZEsMDTXe7b/zGsdosnafGgyBOzLoIWQVXA/gyoHWUeNEkn68+mWX3JjAWYr
         6ZbFJbmfvrD+3Fg6K7O3rjkrEV4V4PbaCPF7ichrtkDCgv2xEvEHWkMJojm3kdw13zDQ
         Elo4KhWWyIvIDdkFGPbuMlD2RgX/A88BwrDJ5pYA3vU1VqhgQupU3U8uP7WbWSo8okeb
         VM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=KOSo7iofqNdJR9THOtDvsctUJp9wK1ftbcJ2LuPu0Do=;
        b=LFjttPFeVEV8BQIghKKOq2HOvM74lmM+GGIfSXxmUn/JRjgqofLdcJAhGoSdepS523
         NaJSXSoAoMjbxoU2qAX5f4p9NCm0crFyj7W/EZx84DyCImjN/KnzCA7Y09efGA6Uczfi
         juA+013ktiUGTXPjlm/TYCGJMLWbxQum/g3tzHUYUmG54FmANMv6qydtLXbtFkWrabjm
         FBPI8ukpvV0+OBDrA27x1vOiS1KxwQFHyzAB5ie94uYnPl6xLOEyScDuNd+mRps93T3Q
         IU8g95IjHmKAwiJh/bU5JHJZUwTfrfNS9qoOFPqMCQlYiuZksaSORAj4p+Ehq+eFfw1e
         ahTA==
X-Gm-Message-State: AOPr4FWGKFZQPi2DQCkGZLuUBeqKBo8JhgyrIe4H/ASBrp0NQbP8woLvSNi6+MXoAzqVCwEZ4g6dJEisVqFvPg==
MIME-Version: 1.0
X-Received: by 10.112.10.9 with SMTP id e9mr11151505lbb.142.1462020063721;
 Sat, 30 Apr 2016 05:41:03 -0700 (PDT)
Date: Sat, 30 Apr 2016 14:41:03 +0200
Message-ID: <CAMoU6uYcJu7-RbCRQ1O9zqOHF14fD+CyMB+=y6Xt21UQiiJjVQ@mail.gmail.com>
From: Bas Pape <baspape@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request - Quassel IRC denial of service

Hi,

It was found that quasselcore is vulnerable to a denial of service
attack by unauthenticated clients. The protocol negotiation did not
take into account lack of a match, in which case
PeerFactory::createPeer returns a nullptr, which is immediately
dereferenced [1].
This issue was introduced in commit d1bf207 [2] (version 0.10.0 and
later), and fixed in commit e678873 [3] (tagged as version 0.12.4).

Can a CVE be assigned to this issue?

[1] https://github.com/quassel/quassel/blob/f64ac93/src/core/coreauthhandler.cpp#L100
[2] https://github.com/quassel/quassel/commit/d1bf207
[3] https://github.com/quassel/quassel/commit/e678873

-- 
Bas Pape (Tucos)
