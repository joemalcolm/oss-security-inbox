X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["427" "Thursday" "1" "October" "2015" "09:59:12" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>" "16" "[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100112:59:12" "[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" (number mark "        gustavo.grie Oct  1   16/427   " thread-indent "\"[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3149 invoked by uid 550); 1 Oct 2015 12:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3131 invoked from network); 1 Oct 2015 12:59:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=ayKJ2+ugWjzwECAZabqSp8D1ZIEQK7p1iGoGMU+nzZ4=;
        b=CC/3OobFuVg0kI6mKd8JoZrTY6ZMbEnlr6bG1sAbu/+JLqbFWjo1DOA+AGhWS+b36L
         NAv1p7ocnIG+zOW/G2cQ1aLrr3eT8OkLWrQR6I6ggJQK/TgJhP2ZCBoq0/ztlvz6XTUg
         FA2R5YCrjCIhDdnyQiV4LlaZJnx7mwm3kyt2EwRHl2I8srZAJv4vo3/gXGY45EAGyloH
         WN0QrRXJPbg4jfVMJv8hzCzEJP/jdQrXck3PMAB/qDo0eVbrqhiFmNwXGdzkJ59xAlS5
         mjoFuNCWDDDQvHjY7iH4jRf/7lFHCPbqvHOIhnxvHJCZvLUop/k0k9UDq2NHRNAqGj5h
         5fhQ==
MIME-Version: 1.0
X-Received: by 10.112.150.97 with SMTP id uh1mr2281299lbb.53.1443704353058;
 Thu, 01 Oct 2015 05:59:13 -0700 (PDT)
Message-ID: <CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b342d4a20006905210a9de0
Date: Thu, 1 Oct 2015 09:59:12 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1
To: oss-security@lists.openwall.com

--047d7b342d4a20006905210a9de0
Content-Type: text/plain; charset=UTF-8

Hello,

We found a heap overflow and a DoS in the gdk-pixbuf implementation
triggered by the scaling of tga file. These issues are only fixed in the
recent release of gdk-pixbuf 2.32.1 but affects older versions (we tested
it in a fully updated Ubuntu 14.04).

These issues were found using QuickFuzz.

Regards,
Gustavo.

--047d7b342d4a20006905210a9de0--
