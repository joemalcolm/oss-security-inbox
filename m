X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Wednesday" "17" "April" "2019" "14:21:35" "-0400" "Havoc Pennington" "hp@tidelift.com" "<CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>" "17" "[oss-security] urllib3: adds system certificates to ssl_context" "^Date:" nil nil "4" "2019041718:21:35" "[oss-security] urllib3: adds system certificates to ssl_context" (number mark "        hp@tidelift. Apr 17   17/660   " thread-indent "\"[oss-security] urllib3: adds system certificates to ssl_context\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] urllib3: adds system certificates to ssl_context" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19887 invoked by uid 550); 17 Apr 2019 19:31:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15740 invoked from network); 17 Apr 2019 18:21:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tidelift-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=hpLTAh0VLjPgVQLSy7ejz3R3dlGkZRxONnnSTmKtKoI=;
        b=V403B9dRFW2LbLcCXQZHsVG1Gkz0Y9X8EbsPy5ewrJwI+mzV1sTD5swTikjr05MJx4
         BJSfIKEHc06mQiXGUoYk0WIJ4NHJrhwaC6ZoDoPQegSJQayx/uqRhfsu+FhJPpvcbiua
         ALNMpV3BOzNFgxhnRTVS+e89334lugz0weLoC4Cavko3D/nwMjQxjnBHzvW3MLh2WOJJ
         XPb4GDIHx2zA611zQrEOt2TeXd6fttPUeGuB7Pp7/tK6ngAKLQnQX6hV4x76BG9igJ8j
         W2f2HDndpJeqE06a0KLSO9qYy90wz9Joxsb4HstFQucgRfDmnrhKs5KO4Mg8SAq9kODn
         1atg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hpLTAh0VLjPgVQLSy7ejz3R3dlGkZRxONnnSTmKtKoI=;
        b=nebPZmS80S0QXZJFTNKKoOTM3aaH+GSaHJeLkrRX6poyZvpvBx6oDws1FU9gkzzcEX
         O7vPgU7A/Vn5zXSV60vDX6M08vVAjsZnMUztK3tqbMHeWQtUhEcBQhdQbAO8E+/67bnu
         2ndAu7BRLB3/ukhJgaiqrlCr7lqSdXPJPAWP6WUtNuadyhR+g+raCq4SNvfrjWOkkGSp
         YmILO9c39HYkD2V5bzoftQKO1I8IYrvt1F+YBArNwqE8AhdPFOqkdwh1pNHE4bXMGDIq
         QohtoIQCnSpRPLy1sszIthhVXq58HbTr7+hMr+7j4oBoHPvt5KIIWBMVpyCFYYqg6Rw8
         xRqg==
X-Gm-Message-State: APjAAAUvKb3jvoWsKCLjJJ5czC7Vl62hrdCNcjd/TKED2oCl2X7I4sZB
	DJ/O5xgLV0+2WJ2a4ICdE2HlGQorD1s715s5FJmmiJ8WJZ3VSkWB
X-Google-Smtp-Source: APXvYqyTe9u3KIhPB2YTBF+jnF5ZFxe6hSfMnNhl2ERI9RrHJmdQSrMvXztIFv32gpoeckn6MQAN8gJ/qrcTDnLu+eA=
X-Received: by 2002:ac8:1aec:: with SMTP id h41mr68296305qtk.345.1555525306505;
 Wed, 17 Apr 2019 11:21:46 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 17 Apr 2019 14:21:35 -0400
From: Havoc Pennington <hp@tidelift.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] urllib3: adds system certificates to ssl_context
To: oss-security@lists.openwall.com

A vulnerability has been discovered in the urllib3 Python library.

When verifying HTTPS connections when an SSLContext is passed to
urllib3, system CA certificates will be loaded into the SSLContext
by default in addition to any manually-specified CA certificates.
This causes TLS handshakes that should fail given only the
manually specified certs to succeed based on system CA certs.

This affects urllib3 1.24.1 and below. The fix has been released
in version 1.24.2.

The vulnerability was reported by Christian Heimes.

A CVE ID has been requested, will follow up with it when we have it.

Best
Havoc / on behalf of Tidelift security team & urllib3 team
