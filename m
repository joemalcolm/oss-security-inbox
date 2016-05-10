X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["619" "Tuesday" "10" "May" "2016" "15:35:09" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YzSs+SRPKeL95=Pd7sMZ4Ud+H67UOZMwjjudMs5n0iknw@mail.gmail.com>" "24" "[oss-security] CVE Request: x25: a kernel infoleak in x25_negotiate_facilities()" nil nil nil "5" "2016051019:35:09" "[oss-security] CVE Request: x25: a kernel infoleak in x25_negotiate_facilities()" (number mark "U       kangjielu@gm May 10   24/619   " thread-indent "\"[oss-security] CVE Request: x25: a kernel infoleak in x25_negotiate_facilities()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15677 invoked by uid 550); 10 May 2016 19:35:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15659 invoked from network); 10 May 2016 19:35:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=F/UsH7TzF6QpzAc7KIaDW5hbWb/PeTZ+MIwMQKlYo2I=;
        b=EzyNfqa9udMLxDhQ/a4qeF+tPKizLWa0e7hkKz85bSPp39fze4Y4Au1LpMb6BWfBBy
         ucsH6KMXu7dcmWBxGlBXQYIKNT63G8CB7JPNvGSk8V8/FGT/rNKK7tQBS93mEAZPPFHJ
         +JKjl5QyycojZP18LWn9O+5kLC9WyWvtoe31t1miTermVvtbDq5z7x2WZA6z5nbjQk07
         aHaXZrZ15iFrjqb4jqn65FFYfdAO/vUPoNg33bQSpZmkHPpjQlobcwruurV8RF03p0vc
         LaI7wS5m15M7HYU9v3EhDVyg0yWi0EV/+IqxRcvF3yJUX/mBAc5EEqeF6hZI5lmtJyQ/
         wZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=F/UsH7TzF6QpzAc7KIaDW5hbWb/PeTZ+MIwMQKlYo2I=;
        b=XK7eOFYtZ/Fje5UEUdBjZR78wOX97rX6gGAr9SXjH2c9j6MSImSsD3Xj1GdJLsRN0B
         Fbrlu4tkr3kmvWJP8oErW/d5cLjiWPVeAzwVFsLRPrk4wPoHPgDL0trrRzWZ4INGHIu9
         CSoaaJpPcMT07tnTmcxztYKbopxRXvO5rf6NxTIneN1iAZNCVT4De+PC9AAKxU4FQF8z
         /yokxAh2J24KgwHCLGlNsi7bO4zUIYADl9ugHDAnPIiCp1qbZYoD4Vckq+pSREghaXrv
         9ykU02faeWx4XqYuhoA+PZEh5yacuPYcSCF9L61l0e8DvFAn7LgkpKFVQk6+PpMH7KsZ
         AszQ==
X-Gm-Message-State: AOPr4FVfDMae8oJyfyZc+G5sL+MPNhGgO6NC4w5ZVmafjt4mMXdspAufyHfkMH2JiqVunaBLanCvb1XTkOhjCg==
MIME-Version: 1.0
X-Received: by 10.202.203.139 with SMTP id b133mr19236875oig.166.1462908909139;
 Tue, 10 May 2016 12:35:09 -0700 (PDT)
Date: Tue, 10 May 2016 15:35:09 -0400
Message-ID: <CABEk9YzSs+SRPKeL95=Pd7sMZ4Ud+H67UOZMwjjudMs5n0iknw@mail.gmail.com>
From: Kangjie Lu <kangjielu@gmail.com>
To: oss-security@lists.openwall.com, Chengyu Song <csong84@gatech.edu>, 
	Insu Yun <insu@gatech.edu>, Taesoo Kim <taesoo@gatech.edu>
Content-Type: multipart/alternative; boundary=001a113501f6de3fcc05328205b8
Subject: [oss-security] CVE Request: x25: a kernel infoleak in x25_negotiate_facilities()

--001a113501f6de3fcc05328205b8
Content-Type: text/plain; charset=UTF-8

Hello,


In function  x25_negotiate_facilities()  of file net/x25/x25_facilities.c,
the stack object "dte_facilities" is allocated in x25_rx_call_request(),
which is supposed to be initialized in x25_negotiate_facilities. However,
5 fields (8 bytes in total) are not initialized. This object is then copied
to
userland via copy_to_user, thus an infoleak occurs.

Fix info: https://lkml.org/lkml/2016/5/8/59
Patch applied: https://lkml.org/lkml/2016/5/9/1100


Please help assign a CVE to it.


Thanks,
Kangjie Lu

--001a113501f6de3fcc05328205b8--
