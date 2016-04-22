X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["652" "Friday" "22" "April" "2016" "11:32:26" "+1000" "Brendan Scarvell" "bscarvell@iix.net" "<CAOJmqsDC25MV1BMWeaQNfugjv0WbPRaXE3FTvWKvdWEK2Jfo5g@mail.gmail.com>" "24" "[oss-security] CVE Request - XXE in Pentaho Business Analytics 6.0.1.0.386" nil nil nil "4" "2016042201:32:26" "[oss-security] CVE Request - XXE in Pentaho Business Analytics 6.0.1.0.386" (number mark "U       bscarvell@ii Apr 22   24/652   " thread-indent "\"[oss-security] CVE Request - XXE in Pentaho Business Analytics 6.0.1.0.386\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11466 invoked by uid 550); 22 Apr 2016 01:32:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11448 invoked from network); 22 Apr 2016 01:32:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iix-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to;
        bh=aoaStWCaWMyYgCx2aJtGoqNDFlbEzjL09Wj3LQLvQ2c=;
        b=QUBgNNEKH3r+o19LtRpZ5AjlXj/T25bmdigjIcHY++X+2bXAeJRQ5/Bn04K112jgCP
         EISDPjYkuyaudauiWGuqKjP4ILsNQ0XF26s/xB/K2N8UEDGd/5o4Y9jjDaQHmHP3xNjS
         ys0dzjHiBlDbvZTRBfOc5OR0MojJm03wpA/Jt8bz7uTHsg81bDNq807QIWRWveWL21va
         ZuDDS4FNCpQdNSZli3ur4LxgB/4ZMtMgi6GytjFooxBQvj0yo4bdOyd01XuUkAyn8nw/
         2DF6JlnYC4OphhJFreGZPYW+cElIxMkm7T+tpJEztNUYc2OS5d/L6Z6ubLCclvkcRLTS
         m/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=aoaStWCaWMyYgCx2aJtGoqNDFlbEzjL09Wj3LQLvQ2c=;
        b=mJM4n+48YzXox1BV9Y0f4O0Dv2MNJoRH4RE9W5vF4JkdHLCQKDxUxjY4KucD3WtsdX
         0fwaGRPgBJzp+oSE7+hLIJMUKLprb5IZ65lqVvIyhVq4Qpzyq3XL3eBjKktDcV7o90GK
         NthxDBLGiY7jKmcEl0NT6tLP8UWlZ3xZkQjlUA5945NugS+yziJ+E0dMPjTzeB45IGQG
         2naP5ba8Xl/aJ1h+icjlAwCk+NM3ow/2qM/Az8L00h7ZDc8yvVZtdUnT2daeBMz/gW/g
         WqtquHtsCvoJ5JCz+Mv0FYZeDggvHe00dznzgEp+c5NUlY1K49nhh0UVliCAmW1ny76y
         2HEQ==
X-Gm-Message-State: AOPr4FUOPWeuCymBvgRdhTUy0hVuj5nPaREaPMwTXjSLaIB3rQhHgjHdj3E6Jm4Tmadd424c8yh4u7B0osoAclcI
MIME-Version: 1.0
X-Received: by 10.194.69.106 with SMTP id d10mr17600568wju.165.1461288746817;
 Thu, 21 Apr 2016 18:32:26 -0700 (PDT)
Date: Fri, 22 Apr 2016 11:32:26 +1000
Message-ID: <CAOJmqsDC25MV1BMWeaQNfugjv0WbPRaXE3FTvWKvdWEK2Jfo5g@mail.gmail.com>
From: Brendan Scarvell <bscarvell@iix.net>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7bfcf5a0ab34e8053108cc88
Subject: [oss-security] CVE Request - XXE in Pentaho Business Analytics 6.0.1.0.386

--047d7bfcf5a0ab34e8053108cc88
Content-Type: text/plain; charset=UTF-8

Hi there,

I've discovered an XXE vulnerability in Pentaho Business Analytics
Community Edition 6.0.1.0.386 due to Pentaho's xml parser not disabling the
parsing of external entities.

This issue has been reported to the vendor several times, who has refused
to fix it in the community edition unless an enterprise license is
purchased.  I've created a Github issue (
https://github.com/pentaho/data-access/issues/728) for someone in the
community to submit a patch.


Could a CVE ID please be assigned to this issue.


Thanks,

Brendan Scarvell

--047d7bfcf5a0ab34e8053108cc88--
