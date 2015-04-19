X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1238" "Sunday" "19" "April" "2015" "12:43:30" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z0BcFuXDWcbnonSG=R8=KoDoS8TPDb-bPhimLM0Vox3xA@mail.gmail.com>" "34" "[oss-security] Pharaoh - PHAR Comparison Tool" nil nil nil "4" "2015041916:43:30" "[oss-security] Pharaoh - PHAR Comparison Tool" (number mark "        scott@parago Apr 19   34/1238  " thread-indent "\"[oss-security] Pharaoh - PHAR Comparison Tool\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20146 invoked by uid 550); 19 Apr 2015 16:45:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19580 invoked from network); 19 Apr 2015 16:43:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=d8KCqv4ZivuU0BPCA6yT7vnBXeRSM7vTryTm+w/CYvY=;
        b=kHWLkCLG5liSf1FmfyqTqUz+1kiEYBg6ZNaLZHkviolnN1E1PZiC4Vq1kqYd8KZBRR
         xzYG3mNzf1k1TnluqVfMHGU7hlYqxiAWwpCslMdV06iZisEXGrMXNR2k3tUIKXrF6Y5n
         Oygzj2KqCDJwl+XM9Yl9Et1d8Ol4gSA3gGpGdBy+r3Ch+g2buSU4QZFoMF0EKA36kuro
         M3v2XWXTLtBGIwBY3Jrxk1yQQ0dofRyq8hQH3R8Kpr+AaLeS16i4PS5b1QuicwO00QDW
         JoxNdftbtm4tdWtrrnsGqpFNrnHhjcTELHtJIurIpuvAn0YwMn9C+QFyZOjg4YSaDqWs
         wyzQ==
X-Gm-Message-State: ALoCoQmfo8fOLwQl0VuArABIMTqpu7hsroiGTeFg+zl0YDZJuRvYh3AoOkSuISshehl0CLFtDMyM
MIME-Version: 1.0
X-Received: by 10.140.132.80 with SMTP id 77mr14244021qhe.36.1429461810886;
 Sun, 19 Apr 2015 09:43:30 -0700 (PDT)
X-Originating-IP: [71.47.14.165]
Message-ID: <CAKws9z0BcFuXDWcbnonSG=R8=KoDoS8TPDb-bPhimLM0Vox3xA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c07daa7551be05141683a0
Date: Sun, 19 Apr 2015 12:43:30 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Pharaoh - PHAR Comparison Tool
To: oss-security@lists.openwall.com

--001a11c07daa7551be05141683a0
Content-Type: text/plain; charset=UTF-8

Hi everyone,

We developed a tool to compare executable PHP Archives (.phar files), which
you may find at https://github.com/paragonie/pharaoh

Previously, there wasn't a tool available that specifically worked with
.phar files, which differ from just a .zip or .tar in that they have an
executable stub which allows you to do something like this:

    <?php
    include "vendor/acme/deliverable.phar";
    $foo = \Acme\Deliverable\Foo();
    $bar->process($foo);

Pharaoh is useful for open source projects that distribute a .phar
(phpunit, composer, etc.). Since many of these projects do not sign their
.phar, if their server gets hacked it would be trivial to slip in a bit of
extra code in the stub (add a public key to ~/.ssh/authorized_keys, etc).

The idea is that someone can download the .phar from their website, build
the same one from source, then use Pharaoh to compare them and detect this
malicious tampering. (And then, hopefully, blow the whistle to disrupt the
campaign.)

We hope that someone finds this useful.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a11c07daa7551be05141683a0--
