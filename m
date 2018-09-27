X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1740" "Thursday" "27" "September" "2018" "13:08:10" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tSQ-AqxMZdmV6yvzQvSJ=11jrP_GfJfbcDWpXT3Jv3aKQ@mail.gmail.com>" "44" "[oss-security] Telegram uses SOCKS5 to share user/creds" nil nil nil "9" "2018092707:38:10" "[oss-security] Telegram uses SOCKS5 to share user/creds" (number mark "U       mishra.dhira Sep 27   44/1740  " thread-indent "\"[oss-security] Telegram uses SOCKS5 to share user/creds\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7941 invoked by uid 550); 27 Sep 2018 11:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29697 invoked from network); 27 Sep 2018 07:38:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XOw+fo/hXQ3NNyU95cEX6ejjx6wNKKZO+oMcC3ssH/0=;
        b=JCG9J0EvUsbRJwCVkXmjMUiXCjnP7+8mQDR0irkMHMukZBWEr4KNcrGzablzrZSbnZ
         I5whE7CNRurK0PjYWfFZ63njkdxq/6fsbTzZ5zLAoVHfpm1Gtr1poAkE+qL3RqUuVkuJ
         d0trhylrVyrHgE36YPTBkTeC3kQ4MRLYcH7xrvThQt97b5avzGQ7H+JEYmIfTiuAQPHc
         aAVV/AVXKKZcniKnl1kVjkzvuvTltSk5UtJ5tJ9VALYI5BiQg0YjdJBtD9bjKv7L3wkw
         1ygE4Rfdw38Ud6iTw33Ecrv8qM3+oDMTgC4QGAvkQ64F4+BKHDsfNMutgyxtomH2M1tU
         3utA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XOw+fo/hXQ3NNyU95cEX6ejjx6wNKKZO+oMcC3ssH/0=;
        b=uRrroTdewhoGTxn65HEKwW8jb5pR7EHzg5sbGpRA4Mw5fEyYzIGzzfgx8vobPAVyeT
         Lw5tBog3uyUY+xXZcR1xHNS/eVUuveS4r6vcvL6dXSVlOlMqHuKVPIXwj37J8oi5vBgS
         OpVPmw0ql/cjVYVP3j9cnS24RB0Iy6NvP7orWXNWBhqxalKbBMGpMLXfrrwtj0/OHYXy
         sD8KU+ZXf7rc8hlpnluNK3+hcCneFgRTIzAQ5+UvnXRc50TtiV5ya6LMPstTaABuDavA
         SpAYBDfxATunjH2KlgInooy3scIa4X5b+vEu5onKHHuMNivCdaHXGqza9uH7VUU6U6O1
         ml3w==
X-Gm-Message-State: ABuFfog95y6yC2HMquH+yBnoDNzHJMNIKuNi0CM5Odu9s8rjllBeyh0N
	U9ZuUTVEDmA+AxEoDfv19oJFC5XtgMqh9r89MmowUAjR
X-Google-Smtp-Source: ACcGV61HQ7igAanXon+JuudA4R1PK4ltZi/aDo7t+dGmr0m4U4sWe0mfLFxOsOj+LzM/GJBT0PGYY+A+5e9Q36+8krs=
X-Received: by 2002:a63:6b05:: with SMTP id g5-v6mr8865172pgc.344.1538033901791;
 Thu, 27 Sep 2018 00:38:21 -0700 (PDT)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Thu, 27 Sep 2018 13:08:10 +0530
Message-ID: <CAG8b5tSQ-AqxMZdmV6yvzQvSJ=11jrP_GfJfbcDWpXT3Jv3aKQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005e71200576d56c7c"
Subject: [oss-security] Telegram uses SOCKS5 to share user/creds

--0000000000005e71200576d56c7c
Content-Type: text/plain; charset="UTF-8"

Telegram is supposedly is a secure messaging application but it uses SOCKS5
to transmit user credential's, neither traffic nor credentials are
encrypted in the SOCKS5 protocol, but this is how the SOCKS protocol works
(see https://tools.ietf.org/html/rfc1929). SOCKS5 carries passwords in
cleartext.

Product affected: tdesktop 1.3.16 alpha
Browser Info: Firefox 62.0 (64 bit)
Tested on: Ubuntu 18.04 LTS x64

Steps to reproduce the issue:
1. Open tdesktop
2. Go to Settings > Advanced Settings > Connection type
3. Open "Proxy Settings" check "Use proxy"
4. Put some random Hostname, Port, Username and Password
5. tdesktop tries to connect it, while it connects click on that line which
is made of 3 small spots (On right hand side)
6. Click share, the link gets copied.

Example Link:
https://t.me/socks?server=inputzero.io&port=22&user=dhiraj&pass=MystrongPassw0rd
The link which gets generated have the password in plaintext, SOCKS5 is a
transport protocol and by itself it is not encrypted. Requests transmit the
credentials in plain text which is considered a bad security practice.

URI producers should not provide a URI that contains a username or password
that is intended to be secret.  URIs are frequently displayed by browsers,
stored in clear text bookmarks, and logged by user agent history and
intermediary applications (proxies).

Since the request carries the password in cleartext, this subnegotiation is
not recommended for environments where "sniffing" is possible and practical.

Thank you
-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--0000000000005e71200576d56c7c--
