X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["505" "Sunday" "28" "May" "2017" "11:32:09" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170528093209.d3zwubz4n2b3f4az@eldamar.local>" "14" "[oss-security] Gajim: CVE-2016-10376: possible to remote extract plain-text from encrypted sessions" "^Date:" nil nil "5" "2017052809:32:09" "[oss-security] Gajim: CVE-2016-10376: possible to remote extract plain-text from encrypted sessions" (number mark "U       carnil@debia May 28   14/505   " thread-indent "\"[oss-security] Gajim: CVE-2016-10376: possible to remote extract plain-text from encrypted sessions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15994 invoked by uid 550); 28 May 2017 09:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15964 invoked from network); 28 May 2017 09:32:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=izClEJFj2DKlViSmWaNh/RJv0ZNFdEEJ7+yJWVFGrKg=;
        b=nAw7JnGPKhNmvW/qduKyTSmlsodryIu9zkblsa2zct8ezKd0gRx2pwkdB2wzNgj5vq
         r1KhORsGYy5vEmFoYzuBSFmUcbdy51jRrU2y8TIiH5WPXu5ML++eETVIB4pR2vMpp7/Y
         WQB3qCqGM6OyUdSomKrp5Bj9S7BlJYacLnQR9ZMV5JKYpwjNkEeO6l5O5MMX4is01ehu
         UyXyPP21XXwGTWtgM+NssJFbXrjDDSxG2Avhfyv6Hcv48Oo6wYXGqHa0RqUEOrx1X/BX
         xFVfP/bluVRJlPoTwnvNMy811UNouAPNALUGGK/9DaN0J6xyF+ULy8KJ7/UNkorz/xir
         DlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=izClEJFj2DKlViSmWaNh/RJv0ZNFdEEJ7+yJWVFGrKg=;
        b=ne9rP2xR1ORL7wsDwB63ihHCelmdWqgGxaY+m8Bf4mgvrnYk++XN/1PXbbmI1bNdp0
         kM5WJ8qf0URrX6+R/H03CoDpj13K4hy6R1AP28x2mbKWoV1FwiHdHoB1tD6BtJHXB8Hq
         4X8u5BZMyVODy1ZajsivG4rm/HQ5ItozM5fpg/lK1Yg+xHn/GfPk0+OFmItrj/cGavWf
         Jkm0hZu0BsMe/ZS5t28s8elwVcR7fqk1HUMQGCQMA4fHRsaOK8XURuPc3zXhRgt/umG/
         lMCW5Ovr/wLjcFyP5qVe1Ak+Xdl1Q2/5w0KMnOGDrFm4Re63uIElLjPdq4Apm//gS1mj
         /mZA==
X-Gm-Message-State: AODbwcDf+roZi0LcAoTx4jWbhJYI/t9b0awPd57Y7bl6BuQRabsd7ajV
	1mLwkk4+Pebf93p1yM0=
X-Received: by 10.223.134.153 with SMTP id 25mr6796784wrx.29.1495963933384;
        Sun, 28 May 2017 02:32:13 -0700 (PDT)
Message-ID: <20170528093209.d3zwubz4n2b3f4az@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Sun, 28 May 2017 11:32:09 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Gajim: CVE-2016-10376: possible to remote extract plain-text from
 encrypted sessions
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

MITRE has assigned CVE-2016-10376 for the following issue: Gajim
unconditionally implements the "XEP-0146: Remote Controlling Clients"
extension, which may be abused by malicious XMPP servers to, or
example, extract plaintext from OTR encrypted sessions.

References:
 - Upstream issue: https://dev.gajim.org/gajim/gajim/issues/8378
 - Upstream commit: https://dev.gajim.org/gajim/gajim/commit/cb65cfc5aed9efe05208ebbb7fb2d41fcf7253cc
 - Debian Bug: https://bugs.debian.org/863445

Regards,
Salvatore
