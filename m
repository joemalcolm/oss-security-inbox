X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["294" "Saturday" "16" "July" "2016" "14:58:45" "-1000" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriKABkDUui3D70ct6VSAXQ6=CHpkjwW5ji4OTM3wpYnABg@mail.gmail.com>" "15" "[oss-security] multiple memory corruption issues in lepton" nil nil nil "7" "2016071700:58:45" "[oss-security] multiple memory corruption issues in lepton" (number mark "U       marco.gra@gm Jul 16   15/294   " thread-indent "\"[oss-security] multiple memory corruption issues in lepton\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11315 invoked by uid 550); 17 Jul 2016 00:59:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11269 invoked from network); 17 Jul 2016 00:58:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=erenNUJhaqGmVnGEWQoU6Vju2LRSAV7eG4c6bLW6WKU=;
        b=cJO72JsC8xFAre4KUGYV5bQcDU5SMLLLBzvczoDjNgZQ5t+YryKHBsqjpPx25nfMYd
         vyqhXZJiaRfxiUFoNK1VNq6eNW3JPyiHScfQqJdhG1wH/r6PslLRT4jROLWO8KTE9gYX
         QHZpV4qCHA6SxAukK3MBPTpNgqs5casT1/HoTilBYIi6rhVjuZOqD9LVQKlhWBpneTTq
         DikDvGWQRiS5FU4blXwYrV99JxbBH1LNI5+tmO1NH4HHZvnMs2XBnruB8eQsLN7ySTzh
         BYt606wGA1GfiPwoRm7gpdC4BGkhiF4mu9mjxCTo2OfhrqFd3LWyWB4Tvnfmtngsk6Hp
         guSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=erenNUJhaqGmVnGEWQoU6Vju2LRSAV7eG4c6bLW6WKU=;
        b=J1JbMT3RSUqtcz9IzUnn8uuR6RH5Ynjox0iBSHSupKj8e0GBp5/k+x3GbkwM+e4ZTV
         DkoHrhl4BJjrWsqc/Kj7CXTaFWsWUjcIRme0li6rgGIi6hqhsrVe+BUwZbnoZhmfSAKX
         hp09fmqok4A/kMFtxJzKiBwmW4bn8FNoNz7Xin3a0rQDoiyoKCMvUQFh60/5+7NrqMrS
         kdWy2/DLzIjRxWp3Vv/Xy3koh7j9dPsxmu9+7SQKVw+c8Xu0ujnQBfWEsnCxKP3Slamt
         RfMEnJBJCSjNcDOMK/x/B8F5NDlJ2nIO4XkolPNLfeB80lgFTM4UA77smsGuCCTT+6s/
         j6xw==
X-Gm-Message-State: ALyK8tIF4tCM78AXffGGvDA9d09KOMaBxTuzAJ/miM7/Wl9ea5xNyZYJesGmJNB91ozHYdktevUEG5v5Wa3Y2Q==
X-Received: by 10.202.78.68 with SMTP id c65mr4878366oib.184.1468717125944;
 Sat, 16 Jul 2016 17:58:45 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Sat, 16 Jul 2016 14:58:45 -1000
Message-ID: <CAFkTriKABkDUui3D70ct6VSAXQ6=CHpkjwW5ji4OTM3wpYnABg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c16582914c460537ca5a35
Subject: [oss-security] multiple memory corruption issues in lepton

--001a11c16582914c460537ca5a35
Content-Type: text/plain; charset=UTF-8

Hello,

I just reported on dropbox/lepton github project some memory corruption
issues, with reproducers.

https://github.com/dropbox/lepton/issues/26

Marco

https://marcograss.github.io

--001a11c16582914c460537ca5a35--
