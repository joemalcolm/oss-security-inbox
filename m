X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["264" "Thursday" "30" "June" "2016" "15:42:24" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>" "10" "[oss-security] CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" nil nil nil "6" "2016063013:42:24" "[oss-security] CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" (number mark "U       gustavo.grie Jun 30   10/264   " thread-indent "\"[oss-security] CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17856 invoked by uid 550); 30 Jun 2016 13:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17838 invoked from network); 30 Jun 2016 13:42:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=g/AdUObuQUvKcuSLxYd3/QUKf9Da1NmV+vfccG614+U=;
        b=LlX7i9kc8MX7ce12JJOR4R3zLgwCk9DTwzJ5ceAkPqj0AzWZPGDbkIPe++EfaCW1Re
         XWIVd84znFYeY6ajLfdVRXUroqe5PqK+P4zcbey0s7P2WaTHkAUVceoPrIV9BGLYTAGw
         fqoWp23aJByryV3oke9llt+yk8sEzpRnaCBO2xvw2azFnuASWkAXM2hCdeTp953lzwCD
         J82ikjR6P4BdXL4NBObPcGmNP/2X/hYVD7YA/yu8gJvnHVhGNLlOF7HgJUIfTA0aGiWM
         T1emPc98lS6srF6MZc6EwgrsDRsK2Qfv0r/gagFKlY67vk3qLCeDC4fsXmkx5WYltCzd
         r6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=g/AdUObuQUvKcuSLxYd3/QUKf9Da1NmV+vfccG614+U=;
        b=fxeA470s5zHsPr2UD6qK+HjbJdNjyPSOOuCPe5CwXmmYCHoSQNqQlAJsELkVwlGU1g
         adgStkTIWFXuyrCvZl//ihxN9a+uM+Og6+ImQMwPtfrOvlJnJ3eY5sQ+6ZRywuQNr71t
         2m0Zk6/Oklf0lyGYuib8fcJ+08y6O7ro5ishf2pbMqkGpHT42Xj50YY7PgtXuGQR6W4D
         M2Y19jiTR7AWbDuEbqOJ/uI1lYd3Jn3elkgouTkZ1M+6MKt69u7QGi9ds0f+sRfdn3CU
         XaEjoKj/mJHvFMHFovTh8Q8/5yw+tTv3WVsaZndGtpXfdCDixkEgzyTeKWldaIbNFShN
         5TUA==
X-Gm-Message-State: ALyK8tIs7/J0DjOuhcy2uJhpYzLh8Tc+8lDJdPv+ZkobBdgFJ4z8YM+tpgFChg2FeIlTNwvnrvE/ua4wTr5vnA==
X-Received: by 10.107.137.95 with SMTP id l92mr15026863iod.177.1467294144742;
 Thu, 30 Jun 2016 06:42:24 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Thu, 30 Jun 2016 15:42:24 +0200
Message-ID: <CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: A read out-of-bands was found in the parsing of TGA
 files using libgd

Hi,

A read out-of-bands was found in the parsing of TGA files using the
last revision of libgd (a6a0e7f) but older versions can be affected. A
reproducer and some technical details are available here:

https://github.com/libgd/libgd/issues/247

Regards,
Gustavo.
