X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["997" "Tuesday" "20" "December" "2016" "22:00:12" "+0100" "Sylvain SARMEJEANNE" "sylvain.sarmejeanne.ml@gmail.com" "<CABQu4+4X=WBhODKjSM1-Pgm-Ujnc2Lxw5rXAUOojbCaDjphbhg@mail.gmail.com>" "30" "[oss-security] CVE Request: Smack: TLS SecurityMode.required not always enforced, leading to striptls attack" nil nil nil "12" "2016122021:00:12" "[oss-security] CVE Request: Smack: TLS SecurityMode.required not always enforced, leading to striptls attack" (number mark "U       sylvain.sarm Dec 20   30/997   " thread-indent "\"[oss-security] CVE Request: Smack: TLS SecurityMode.required not always enforced, leading to striptls attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5461 invoked by uid 550); 20 Dec 2016 21:01:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3668 invoked from network); 20 Dec 2016 21:00:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=BpxUfoKrmoX+OisNjDWW9RW4MbwFzbFq6SpeFt9yZe4=;
        b=AZQpM8lWND2rZKsWOWzdeee8aEHtPRueD18X7F+Xds6y9pay7f/nqQwQH/v6aT0XhG
         8R4BwRCxJU3nWvmG1XZVDinN+RW0byzmj7/5CDuL0mNykVYPUDueNSRwatEKeWNYgUxz
         b2MxlbbLGuC2/kmaQnA1JbB4j04vWJ5rvHsGB1gWNzlE7fvWJ95tE+uDS62qd51YYU/L
         HBzwEgwhuf86NH47DVNJb5MfUcK4ddbFGLhOv1LEiIV7L+x3/SKgJT/mefwOCq9FeoTy
         2+ZeWWqE5Ot5goFIVMD9eJQmQAjVVnCWC6ox9lbaY1AwxMiKII7JxzFzcY5BfJr5wjf9
         4vXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BpxUfoKrmoX+OisNjDWW9RW4MbwFzbFq6SpeFt9yZe4=;
        b=XdvuNLd4Md57TpTyPQQY1RQQKGQmdFYjkpgGX71cCY2AGHfwte2JKhvP3YBkva5pCM
         2Wf5pVPDJg3mqsXo8vtQpYQbjqO5AYYUAzFe1aGmY4P0+4k/ypcydNzX8hxJo4fvFfgW
         H2y6FSC18nqCTJlEjvXHPyETzhRSgyVfhwMc5TiSaS2up9jSH1wdKTPcgcWBmTOLEHjw
         HSS9ESEDAYxhp1klhch03zr/hDeGe4e22IvNm4sZeMRGtahii6yip24zBXDHilbnIOE+
         lxf2i1g+A07DlV8VjbcUY5f5GIaFBupfM+rBgMCGsTcGKvfDsPdotGKZ3KpU/ZfvanfM
         y4IA==
X-Gm-Message-State: AIkVDXIt7PcYG25TxrcI8MmPMRB6V7XgXonMu5tqf/B2UMRHaBwAlYPNTx2cpk0RI9HZQhph1W2C0gkv/a9CPA==
X-Received: by 10.129.136.2 with SMTP id y2mr1057850ywf.326.1482267612326;
 Tue, 20 Dec 2016 13:00:12 -0800 (PST)
MIME-Version: 1.0
From: Sylvain SARMEJEANNE <sylvain.sarmejeanne.ml@gmail.com>
Date: Tue, 20 Dec 2016 22:00:12 +0100
Message-ID: <CABQu4+4X=WBhODKjSM1-Pgm-Ujnc2Lxw5rXAUOojbCaDjphbhg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114f096a7eb11605441d520e
Subject: [oss-security] CVE Request: Smack: TLS SecurityMode.required not always enforced,
 leading to striptls attack

--001a114f096a7eb11605441d520e
Content-Type: text/plain; charset=UTF-8

Hello,

I reported a vulnerability in the Smack XMPP library where the security of
the TLS connection is not always enforced. By stripping the "starttls"
feature from the server response with a man-in-the-middle tool, an attacker
can force the client to authenticate in clear text even if the
"SecurityMode.required" TLS setting has been set. This is a race condition
issue so the attack will work after a few tries.

The vulnerability affects at least all 4.1.x versions and is fixed in Smack
4.1.9.

References:
https://community.igniterealtime.org/blogs/ignite/2016/11/22/smack-
security-advisory-2016-11-22
https://issues.igniterealtime.org/browse/SMACK-739
https://github.com/igniterealtime/Smack/commit/
a9d5cd4a611f47123f9561bc5a81a4555fe7cb04
https://github.com/igniterealtime/Smack/commit/
059ee99ba0d5ff7758829acf5a9aeede09ec820b

Could you assign a CVE for this?
Thanks!

Sylvain

--001a114f096a7eb11605441d520e--
