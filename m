X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["619" "Tuesday" "23" "February" "2016" "11:11:36" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty05gsBU3rX==c8L6V8OAQrUKStOasxfdpZk5ygCH=EKWg@mail.gmail.com>" "20" "[oss-security] libssh/libssh2 bits and bytes confusion" "^Date:" nil nil "2" "2016022318:11:36" "[oss-security] libssh/libssh2 bits and bytes confusion" (number mark "        kseifried@re Feb 23   20/619   " thread-indent "\"[oss-security] libssh/libssh2 bits and bytes confusion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15513 invoked by uid 550); 23 Feb 2016 18:11:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15495 invoked from network); 23 Feb 2016 18:11:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=GikShGySHoMY9uNNDydx3EfmHlyFBX4VZpYg1EOCcu4=;
        b=kgPWiXHOdwqhuTD3EEEJ5EQzDtOdcsQbddWD2hkRvwFOZoENuyN9QYuVsm3hwNE+RQ
         s6qIr+5R1R4lW7yHMbcyfekNVRpXv8q98sVYlYZqpmTTqZEidwuCuQS1Uk5c35HJlyv5
         MtRrRSC2+1CgS8mSNMk60FXjBZthnMqdxJMdLZFVjE0y1GVBNTperI21L+ll7j8Vhy1Y
         //BEfsiINOs9l6Zspo90wbCWfHfdEJW+PCDaAfpVOep3TVGMPoPslDWN2dVaef8On+6C
         z0+zVytmew1oPIZTJLSEiKqm9eh78c6j+LqKPeO64+h6KAfvdtDs8YUvEvaCnZFZ+y39
         8+Nw==
X-Gm-Message-State: AG10YOQDpVbypnHnn7AmmHdVeOsCGIMr90tZgH5Tu0APlkc58X+P3y+e0obOvPLcZrTb01LGO3k7Xk5VaDZbAqme
MIME-Version: 1.0
X-Received: by 10.13.241.199 with SMTP id a190mr19122495ywf.47.1456251096988;
 Tue, 23 Feb 2016 10:11:36 -0800 (PST)
Message-ID: <CANO=Ty05gsBU3rX==c8L6V8OAQrUKStOasxfdpZk5ygCH=EKWg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c03272057339f052c73e131
Date: Tue, 23 Feb 2016 11:11:36 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libssh/libssh2 bits and bytes confusion
To: oss-security <oss-security@lists.openwall.com>

--94eb2c03272057339f052c73e131
Content-Type: text/plain; charset=UTF-8

CVE-2016-0739 libssh: Diffie-Hellman bits/bytes confusion bug
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-0739

CVE-2016-0787 libssh2: Diffie-Hellman bits/bytes confusion bug
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-0787

TL;DR: bits/bytes confusion resulted in truncated Diffie-Hellman secret
length in certain configs.

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c03272057339f052c73e131--
