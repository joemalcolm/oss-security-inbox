X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["547" "Monday" "4" "July" "2016" "17:27:14" "+0000" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<CAJmMGNuUqFXcxZKpz36opZ_ZwRKuoUHzGJ4EU4m=Zwqf9RO1RA@mail.gmail.com>" "19" "[oss-security] [CVE-2016-1000007] Pagure: XSS in raw file endpoint" nil nil nil "7" "2016070417:27:14" "[oss-security] [CVE-2016-1000007] Pagure: XSS in raw file endpoint" (number mark "U       puiterwijk@r Jul  4   19/547   " thread-indent "\"[oss-security] [CVE-2016-1000007] Pagure: XSS in raw file endpoint\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18381 invoked by uid 550); 4 Jul 2016 17:42:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11574 invoked from network); 4 Jul 2016 17:27:27 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QXlKiq3okXt+yKYrsTYrcgySED6JbeQekbBF2xcxCHU=;
        b=EjeNe5/acGfGfeGH/r872MQJeyyZ8zfPsPNtF96W0u4+t4GFdfLs1BV3n2QTxFvoYM
         krqjY4E+L21TTSEygwNkyYYyBIZnQEKMQ2TxpIhN0WnbqRBbaD2BnAAEIBqBuPLxhdRb
         M7C2MfKbJNjSQPavStYAI70ERdKEv9h+Um9RVTASV/FmC68YZ1YUhM01NqE8qH//m7sM
         dCaT/NhqMiU8BmX3xCYaf/5ttLUuuIRNFQ9ywd2oAssP/fJ74x6hv1SExwFgfnrbvDsS
         UGpjNPmTOBCu1vQKBLEb5St98+EkgUbNlJiyAHItIJfH9VPfeCIWIr0OmvlDfQYvQ98s
         URwQ==
X-Gm-Message-State: ALyK8tI6lZRXbbeTZfVjx5hkKPxps0uGRQRx5XKBZyw4mQro+xVOI6+tMXnu+OdsCwaSQsbBB3U7EU/TLc/rloaR
X-Received: by 10.202.63.86 with SMTP id m83mr7182016oia.139.1467653235070;
 Mon, 04 Jul 2016 10:27:15 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Uiterwijk <puiterwijk@redhat.com>
Date: Mon, 4 Jul 2016 17:27:14 +0000
Message-ID: <CAJmMGNuUqFXcxZKpz36opZ_ZwRKuoUHzGJ4EU4m=Zwqf9RO1RA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE-2016-1000007] Pagure: XSS in raw file endpoint

CVE-2016-1000007: Pagure XSS in raw file endpoint

Versions affected: 2.2.1 and earlier
Fixed in versions: 2.2.2

Description:
It was found that Pagure served files in user repositories from its
raw endpoint with content types
that instructed the browser to parse HTML files which could lead to
Cross-Site Scripting attack.

Mitigation:
Users of Pagure should update to version 2.2.2 or later.

Credit:
This issue was discovered by Patrick Uiterwijk of Red Hat.

Upstream patch:
https://pagure.io/pagure/c/070d63983fe5daef92005ea33d3b8c693c224c77
