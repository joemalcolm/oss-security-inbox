X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["398" "Monday" "15" "June" "2015" "23:40:06" "+0000" "Nitin Venkatesh" "venkatesh.nitin@gmail.com" "<CAARZ5vpCbfa2rGHcQWnscRjbd5xRWk3whK922FwU15PyLdJm_Q@mail.gmail.com>" "16" "[oss-security] CVE Request - Cross-Site Request Forgery Vulnerability in Users to CSV Wordpress Plugin v1.4.5" nil nil nil "6" "2015061523:40:06" "[oss-security] CVE Request - Cross-Site Request Forgery Vulnerability in Users to CSV Wordpress Plugin v1.4.5" (number mark "        venkatesh.ni Jun 15   16/398   " thread-indent "\"[oss-security] CVE Request - Cross-Site Request Forgery Vulnerability in Users to CSV Wordpress Plugin v1.4.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20021 invoked by uid 550); 16 Jun 2015 01:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11450 invoked from network); 15 Jun 2015 23:40:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=9agrBTdiudgYFv30TJ1WUuGqZjzK586053Y5VR0uxlg=;
        b=xFEFQjid6iSgwH3d+Bm4rh3PXvWSuWi29B8sGViMIlrlDfenrFdCFWfBhv0HnnPVPw
         Ap4lPYrwlL1i+9KZnYYboRfmJ3tEr6CBZLNwQHWneUu6KLRWXEkLOgw4drqrVNPaRR48
         Hp4GkLpNc/3Z2trTMs+mbCc48p4PHm94Mj4AfLvp1fBnofl6wKDFEBPECHA3KDW/LRzi
         IDnpoy+GjVEXGITtohPacK+h/RkCPG+8To0J3TdqKC4S+p6zKmjAeq0FnIKY5Km7TPtu
         tirr2KzHR0Dx6sW5blk2uhn2j/fgJ/wuXY/y8q5H13yarqgMGqTBjmdejR2C9mT3P6h+
         UkpQ==
X-Received: by 10.50.36.9 with SMTP id m9mr23762343igj.15.1434411617656; Mon,
 15 Jun 2015 16:40:17 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAARZ5vpCbfa2rGHcQWnscRjbd5xRWk3whK922FwU15PyLdJm_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013c69c2eea553051896fa54
Date: Mon, 15 Jun 2015 23:40:06 +0000
From: Nitin Venkatesh <venkatesh.nitin@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - Cross-Site Request Forgery Vulnerability in Users to
 CSV Wordpress Plugin v1.4.5
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--089e013c69c2eea553051896fa54
Content-Type: text/plain; charset=UTF-8

Hi,

I've discovered a CSRF vulnerability in the Users to CSV Wordpress Plugin
v1.4.5 which allows for user information can be exported via a GET request
to users.php. I request a CVE for the same.

References:
http://seclists.org/fulldisclosure/2015/Jun/44

Thank & regards,
Nitin Venkatesh

--089e013c69c2eea553051896fa54--
