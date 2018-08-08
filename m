X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["504" "Wednesday" "8" "August" "2018" "08:44:28" "-0700" "Matthew Garrett" "mjg59@google.com" "<CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>" "11" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" "^Date:" nil nil "8" "2018080815:44:28" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" (number mark "        mjg59@google Aug  8   11/504   " thread-indent "\"[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10052 invoked by uid 550); 8 Aug 2018 19:44:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20100 invoked from network); 8 Aug 2018 15:44:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=syArf8PZ9J1iNPCrKgrg5BuSRL2cvwz7h+IV/JtmFAo=;
        b=Mbu8OQYwjxXep2RGAQuFv/fYEVElL0G/C7NrU5WSIVOJwRSSEruqdT3KdC8S3WAJ0j
         LldyxfoJ3xBQKqftDYWsYjdri7qCaN6xX9By1tDvZ+SmEAB/Pvs4emD1bfJKHV2RdjwT
         Y4Wu3aIoJ+SZY/ht9xOStuua+19kjAE/bOxQYiLEx3hkES65Tz+YJS1P+PcnqDoPqPIt
         Ovm5o4AR3hAaZYACGzPZBgL/ObfFuYy7vnWGr5eUr4rClgH2rUho7jCQfDhrnsc5NKP5
         Oicagf4E21+krDOg3e8SQRQzcx/HWGSyjXlqnuM/LqGjIJu8kCrJQZrYjJzGWOhr4RPq
         qLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=syArf8PZ9J1iNPCrKgrg5BuSRL2cvwz7h+IV/JtmFAo=;
        b=iPDZmybReLPb42m7+MaOCykMJ10JwB/eOnYea5DlJ1DSUSmq2JCAN/JxOMxNC0+7BQ
         Ug1KIGMewhlbpeMUn6QnyYscSkTQM5qozPE3dNSRinv0MBJkpy8UBv90mfa2ISU3QYAG
         57Tdx5Wkb/CZrAh12DenzlPjF0AMTNFFAY+Rp84kt7vIb5qj+yAA1ap1QPg0DlNLQnL9
         JtbxleA/e72upIF9y3e3dS9xarTXUI93AzApBDy9tw3qVJAoDHLsqrmWv1e8jf6gZW7e
         EnbT2TvMzXIPlGJYd+R25lqa5gk2RFdtfsl+meXdZaXidSwmUhjWKekj3yb/XiHEBO6k
         LaLA==
X-Gm-Message-State: AOUpUlG2PSMfWonjXYQDfr776qpy6VncB9qeaZQLkFDLtoagUOuNZlco
	Z72hNHez9wmXvfBBdpI9a4tmjU30kxRAfpCWQdbmFx8N
X-Google-Smtp-Source: AA+uWPwaQtr8BEV57VkOJVpIvFBU7Yj/NMFLk5ZCkoYoDe7k2/wL3bGWc1JlKOO3AJjRkiZpxwQdLQttk0R+RxLrUsU=
X-Received: by 2002:a6b:2c82:: with SMTP id s124-v6mr2677101ios.136.1533743079339;
 Wed, 08 Aug 2018 08:44:39 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000006c554f0572ee63fb"
Date: Wed, 8 Aug 2018 08:44:28 -0700
From: Matthew Garrett <mjg59@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)
To: oss-security@lists.openwall.com

--0000000000006c554f0572ee63fb
Content-Type: text/plain; charset="UTF-8"

CVE 2018-5390 is a remotely exploitable denial of service against Linux
systems. It was patched in the public kernel tree on the 2018-07-23 and
publicly disclosed on 2018-08-06. A public tweet linking to the commit was
made on 2018-07-23, so awareness of the issue may have been high before
official disclosure. All Linux distributions should now have released
patches for the affected releases.

--0000000000006c554f0572ee63fb--
