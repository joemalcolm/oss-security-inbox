X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Tuesday" "24" "December" "2019" "10:49:49" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "20" nil "^Date:" nil nil "12" nil nil (number mark "        butterflyhua Dec 24   20/568   " thread-indent "\"[oss-security] CVE-2019-19947: Linux kernel can: kvaser_usb: kvaser_usb_leaf: some info-leaks vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-19947: Linux kernel can: kvaser_usb: kvaser_usb_leaf: some info-leaks vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20314 invoked by uid 550); 24 Dec 2019 07:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32419 invoked from network); 24 Dec 2019 02:50:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tZVXNnWqF1G2o/M5yQJbMr28/ZdOz6/hKZP68F3QMzc=;
        b=O8qmzqL7M9nzQioSNmd/dVehvliYnMJSZYSItTdBohQxJE5RAFxEMEoJAoK46lIYxG
         dkWm9VrfF5Ckm3fTMk9dp8MXxm8IlXkB75he4WkPLzdohDExh3vK/xdqBY1rIrtJe/Jn
         uVs6lqhFQ8OCxS+rqb920hgGRtD7udZQK6Fcjh4fZnb2zzu171q/AxieZp3unfq+myvG
         R5Dvl+0GcA8p8LZIvT4Py90fjf7brkEKn7l2s1ZzL4VuxXeqmAewtDPPyOYxFF2gV5lt
         dFT6/drjC/JHWmTpmFxIgZ9ADX/1QbtJ/Rt8J6g5L+CquQVrxbTVYiLBWuik8X/2nPNM
         nWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tZVXNnWqF1G2o/M5yQJbMr28/ZdOz6/hKZP68F3QMzc=;
        b=dOk/MSfAH00KHc6hM7qplJBFRsGm4Df3E3o/mNWrXnJjr/pfT1ra6XdA+Aoc3CRzAD
         5QwNfALkerNcHTYaOVZ33v13Kfg2oOb2JPSibv1hucRIeUmjNJRawkDk6jg1TJhH14rX
         VdW0f10+6kLw7VRKEwGRJ9hiiELlI7pNJCeqQVihxtcfCC64uANp/Hm0kHV7AuWuKhGQ
         1PiG29xvn7avh1/WBtJIYeaTn2I4NTQSyj0MW5P5ZznQ6dyp4WbpDuf5rDF4wpWaknrx
         AvTHNwa9bJuLTM/Gw4NVM3SWpLjQBoCuYD4130LRZRM+Q+uKj3sAOwJNYLqsXtA5nK1j
         WNSg==
X-Gm-Message-State: APjAAAW7A7KO486CXdsVUvARuIfDkwaYHdW/YVcUPRPhJRp+4OU/cowI
	3j51GPr4WaRJKHlbUcoIQJPqCHLNfeGyo2z2l5vLqxLm
X-Google-Smtp-Source: APXvYqxq1cuM0cfelZtEbloG2WK/zly+9kAsaymdOzweNzM0YlirE8G9HLU8zIwjl28qukI91iS614EGZhRgKk+j8mA=
X-Received: by 2002:a2e:88c4:: with SMTP id a4mr19096430ljk.174.1577155800627;
 Mon, 23 Dec 2019 18:50:00 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAFcO6XOkEgLdYkrfaqYanKeZCoBxkLDGmLKOZ158OBS2ZHxE5g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000407f70059a6a33e5"
Date: Tue, 24 Dec 2019 10:49:49 +0800
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-19947: Linux kernel can: kvaser_usb:
 kvaser_usb_leaf: some info-leaks vulnerabilities
To: oss-security@lists.openwall.com

--000000000000407f70059a6a33e5
Content-Type: text/plain; charset="UTF-8"

Hi, there some info-leaks vulnerabilities in Linux kernel USB drivers that
can be triggered by an external malicious USB device.

Description:

In the Linux kernel through 5.4.6, there are some information leaks of
uninitialized memory to a USB device in the
drivers/net/can/usb/kvaser_usb/kvaser_usb_leaf.c driver.

More details in
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19947 .

Credit:

This issue was discovered by the ADLab of venustech.

--000000000000407f70059a6a33e5--
