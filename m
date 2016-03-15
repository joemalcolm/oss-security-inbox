X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Tuesday" "15" "March" "2016" "22:24:14" "+0100" "Romain Manni-Bucau" "rmannibucau@apache.org" "<CACLE=7OEtfjRELpFyehAAZaNbQ8LanYLmHs8rHKLGphvteXadg@mail.gmail.com>" "21" "[oss-security] [ANNOUNCE][CVE-2016-0779] Apache TomEE 1.7.4 and 7.0.0-M3 releases" "^Cc:" nil nil "3" "2016031521:24:14" "[oss-security] [ANNOUNCE][CVE-2016-0779] Apache TomEE 1.7.4 and 7.0.0-M3 releases" (number mark "U       rmannibucau@ Mar 15   21/635   " thread-indent "\"[oss-security] [ANNOUNCE][CVE-2016-0779] Apache TomEE 1.7.4 and 7.0.0-M3 releases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1388 invoked by uid 550); 15 Mar 2016 21:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30677 invoked from network); 15 Mar 2016 21:24:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to:cc;
        bh=krPf1zqHtdQL9vFO3oZaXZokCJL9aUoairVy3J4IOX4=;
        b=NZHaTFuBemMJ8YQgdoTrqSZqmGoBj7RQurryUvg851Vp0XTN0CTStLkEXlPmYL/3YV
         EGnzs1Q79LM059LrDx8ZdOEHdF/umBAP6zWcaZTgu4vUqQoj99Pd5q11j7eXSy7KGsF0
         D+u/rQZv8TSmkvXU4PZ6JTdEaLLsiEzm7eAt8VReQM0672d8tM5KhrcvP8Lmbaln2XBI
         KV2kvR0ADbMyHxz2am4YrYArG/5+bQWdw7u+82TZmAWXyepO0fY0too08CLEg1ATokCf
         oAViJeW3fzMe+BQr8g82YA48lE6ItzlRBxCdNPkO8WUE0Y7KQ4/ftNn8meTMkn4EhSC6
         zU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:cc;
        bh=krPf1zqHtdQL9vFO3oZaXZokCJL9aUoairVy3J4IOX4=;
        b=dC0ZLixNkJiYcXo7a7fDXzGWRVVmKzCJ3hXNRWhdU5Mj2rp+DPcuUhMetYK2xyRLEb
         HXaB5FwJRdnce1LbmfZrJPnFzGak79o+uov6nzv4jY3c7Rii4Jk/LHTK3TPoeK0bbw44
         GAjHn8FwrGFemGO7hfVyFCsW3uqR2x4A1onMZ+CrB7rGi0m9ATaqSfd0IdYmhTGgvxHr
         qF33O8PXXoUJ0H8pAfB/X2J96/j/vsjXDEPBZ/VJcIaW5Q6i/WVjbr9+2582c+ztYdL4
         8Wxyhh6WA4uAgGoSOkfqYCo5WDMeqkTorUq2oNhfeVlvLQSkEjV3CUMhceQ7qy4/8Tno
         xXMQ==
X-Gm-Message-State: AD7BkJJAXCf3yH0gpHzBat7lT/6sV4lPHh2mSsGyTe6rVmRstCtphwCk6bJgGFvCpvldkTFNBlQm+StC6FW2aw==
X-Received: by 10.112.199.138 with SMTP id jk10mr64911lbc.91.1458077074485;
 Tue, 15 Mar 2016 14:24:34 -0700 (PDT)
MIME-Version: 1.0
X-Google-Sender-Auth: II_6DkXqp7gYu64XO7VcKwIRSrA
Message-ID: <CACLE=7OEtfjRELpFyehAAZaNbQ8LanYLmHs8rHKLGphvteXadg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3358a147587052e1d063a
Cc: security@apache.org
Date: Tue, 15 Mar 2016 22:24:14 +0100
From: Romain Manni-Bucau <rmannibucau@apache.org>
Reply-To: oss-security@lists.openwall.com
Sender: rmannibucau@gmail.com
Subject: [oss-security] [ANNOUNCE][CVE-2016-0779] Apache TomEE 1.7.4 and 7.0.0-M3 releases
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com

--001a11c3358a147587052e1d063a
Content-Type: text/plain; charset=UTF-8

Note: resending this mail since it seems some recipients have been rejected

The Apache Team Team is pleased to announce the availability of:

Apache TomEE 7.0.0-M3 and 1.7.4

When downloading, please verify signatures using the KEYS file available at:
http://www.apache.org/dist/tomee

Maven artifacts are also available in the central Maven repository.

The releases are primarily security releases to address CVE-2016-0779, EJBd
protocol allows to exploit 0-day vulnerability in all previous releases.


The Apache TomEE Team

--001a11c3358a147587052e1d063a--
