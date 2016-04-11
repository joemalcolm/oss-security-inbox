X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["680" "Monday" "11" "April" "2016" "19:37:51" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRB_hxr90kYdZnESVrCA99t6FOgGpBygXDeHzqcySCMZw@mail.gmail.com>" "21" "[oss-security] Large amount of uninitialized values in svg parsing and processing" "^Date:" nil nil "4" "2016041117:37:51" "[oss-security] Large amount of uninitialized values in svg parsing and processing" (number mark "U       gustavo.grie Apr 11   21/680   " thread-indent "\"[oss-security] Large amount of uninitialized values in svg parsing and processing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25722 invoked by uid 550); 11 Apr 2016 17:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25651 invoked from network); 11 Apr 2016 17:38:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=rJIJnK7XeIi6SNT1AhOsEbG9qZ4JLu+S5TCD3T95Tz4=;
        b=V0Clk3zuTmm8UFoptaZ4Xhv4iO2whf/joi05csNSpCASMG70a5QDImVvJeFoc3utPw
         Q1arYuDhKBG0AzsCCng8T+bMyMUvvYwNLNEfv1x4b6SyNHxU3BCGLvyeyGkuQEzVyZp7
         95m+egGpE3OCtKzYAHOduYYtcnBx1xfXa5M6MyiNKim78XiRPbgtX5LpaefrR8pV38vS
         tXQnjIV4x5IrvHYi8gx+Wy2DbFayJXoz/F9LLfCch6UWKDY0sh5maFNnpqzKNa+biyTr
         HUEOYkgGir7kDYQLR5CgwHgsO8e42TFHoIsn20NRX5xTuS3rY/SkYZlfT4QctAfQu1sk
         gwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=rJIJnK7XeIi6SNT1AhOsEbG9qZ4JLu+S5TCD3T95Tz4=;
        b=K9LfMIULOSno6Jup3uk+KmY5NVSItpIeQ5fp+q9w8ulIF22U7EE0u5qZlSljFdjf9O
         lNnpyAsBqCNDAOLlczVkXbzb4CqBLan58nOb4UFJd/TSGTcNyvdkIRu6xLfZR13Fgq2/
         XGuy4w5rAJWp8seTqiQjwXh8Q1N6GFF+6L/uRYcVRPNlWQ1mBRrP5Ai4pOQA0KpTT96g
         iWlEO6KQ6K9jRCTiTKKqYa2BUzq1W5oFwPBxM1N9QJE6Ouq9AEKnF3LmAPPSvGyPky7q
         dNxyiRrsCUpFLIw/yCI1JTtWbGUCNZozwZMhEjOLTC/SWM4SzdVulKSKKAeCqgXOpvO+
         YOcw==
X-Gm-Message-State: AOPr4FXD5hRykCpWPEHxSfk/ZQ/TCSqwc2QA+eG2KBmdXSA2JzsHHkm7tBuiM1sBLgp9236NEo4W73Ph4Xiyzg==
MIME-Version: 1.0
X-Received: by 10.25.152.147 with SMTP id a141mr4315527lfe.83.1460396271477;
 Mon, 11 Apr 2016 10:37:51 -0700 (PDT)
Message-ID: <CACn5sdRB_hxr90kYdZnESVrCA99t6FOgGpBygXDeHzqcySCMZw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11401c9efe2aab0530390098
Date: Mon, 11 Apr 2016 19:37:51 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Large amount of uninitialized values in svg parsing and processing
To: oss-security@lists.openwall.com

--001a11401c9efe2aab0530390098
Content-Type: text/plain; charset=UTF-8

Hi,

A large amount of uninitialized values in the parsing and processing of svg
files using librsvg and related libraries (e.g, libcairo) are causing
undefined behaviors. Some of these issues are originated in librsvg, some
in libcairo and others (libpixman maybe). Some relevant technical details
are available here:

https://bugs.freedesktop.org/show_bug.cgi?id=92904

As a result of this, just browsing svg files using the open dialog of
Firefox/Chromium can lead to unexpected or undefined behavior. Other
applications using librsvg are likely affected.

Regards,
Gus.

--001a11401c9efe2aab0530390098--
