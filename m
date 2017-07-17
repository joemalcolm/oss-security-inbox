X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1790" "Monday" "17" "July" "2017" "15:09:53" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-E+EWmdjwLEkwnD4moZdZxh2ikj8dkynwq7WJSGKbCXz6A@mail.gmail.com>" "40" "[oss-security] 11 remote vulnerabilities (inc. 2x RCE) in FreeRADIUS packet parsers" nil nil nil "7" "2017071713:09:53" "[oss-security] 11 remote vulnerabilities (inc. 2x RCE) in FreeRADIUS packet parsers" (number mark "U       guidovranken Jul 17   40/1790  " thread-indent "\"[oss-security] 11 remote vulnerabilities (inc. 2x RCE) in FreeRADIUS packet parsers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16338 invoked by uid 550); 17 Jul 2017 13:28:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5151 invoked from network); 17 Jul 2017 13:10:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Nt8on4PZajNBu0MxYd9obbuw9V96SDgbR87F0JVMq5M=;
        b=qOB/vkuTfnMiqWLpMglSrkX9cJHtLBMOj6p0+qLduVBdtu7EXn/yu4kRGJDokHfZQh
         e0sQPGfu8zsiUzgE+4TxcDK3lSuIppEg46t/+Z0CjcMEC9QIUiVd/1fC5q36mD22Rdpe
         vUF6JVv2sj0qA2yOZcqdsYgSocLG9QvC9Uxsgwiis6dxBnKGtLNVDrR++VcKhBsWhNxH
         himm6JF4Zzpyn2zP7Ia43xvNQVWplWNp3Yu2Y1GDUGhgwhu/YEYfcSqLrGhDD+Q5gf9x
         mCeKTdU8N0MLSMQL0UunSo3NuIapLLb0yMEHrJRfyKMY4KZLNc2rubYQ9tVvyWuZdaUQ
         MXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Nt8on4PZajNBu0MxYd9obbuw9V96SDgbR87F0JVMq5M=;
        b=AfP4sCFH/RBW9Hh1vupvfVR59hf1k+wqEGsAczgIE9p0+nAaru8nC5HqITD/rZ0Vys
         JmrnxzNfL2dCd87YQ7sP/DwC1vWaGHtPBThtBwQr+w8qf+EG4/dvtUJfHM7OXE3SAMxC
         1MiW3MK+pqfP1bqLXM1M8M+UnZJ4Zk88QQ/6RTdn+6qL5j8gXOFlryDldoEr97/hfOA0
         eE8YvFT4JlJTqUaD594kQzU0CWEyYx5gf+mUFCxVp9HzTVpe+aIsQNlJQbbZOHXQQ8sL
         G/pdYPZbIGZN9yKHyup5vLEBu1lSbxifeFGTsEU1zUj8f5kz1yhcCwNFwEKVo1z1XrBG
         FvhQ==
X-Gm-Message-State: AIVw110dowaNHJclvEI4Hg1iZHbnfCjvqSI0+uroJJYbPMqmcYiw2z70
	eoss15JMpgNSTgiryZDx08hI5Fmjr/8E
X-Received: by 10.31.47.148 with SMTP id v142mr1906519vkv.87.1500296994316;
 Mon, 17 Jul 2017 06:09:54 -0700 (PDT)
MIME-Version: 1.0
From: Guido Vranken <guidovranken@gmail.com>
Date: Mon, 17 Jul 2017 15:09:53 +0200
Message-ID: <CAO5O-E+EWmdjwLEkwnD4moZdZxh2ikj8dkynwq7WJSGKbCXz6A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] 11 remote vulnerabilities (inc. 2x RCE) in FreeRADIUS packet parsers

"FreeRADIUS is the most widely deployed RADIUS server in the world. It
is the basis for multiple commercial offerings. It supplies the AAA
needs of many Fortune-500 companies and Tier 1 ISPs. "
(http://freeradius.org)

FreeRADIUS asked me to fuzz their DHCP and RADIUS packet parsers in
version 3.0.x (stable branch) and version 2.2.x (EOL, but receives
security updates). 11 distinct issues that can be triggered remotely
were found.

The following is excerpted from
freeradius.org/security/fuzzer-2017.html which I advise you to consult
for more detailed descriptions of the issues at hand.

"There are about as many issues disclosed in this page as in the
previous ten years combined."

v2, v3: CVE-2017-10978. No remote code execution is possible. A denial
of service is possible.
v2: CVE-2017-10979. Remote code execution is possible. A denial of
service is possible.
v2: CVE-2017-10980. No remote code execution is possible. A denial of
service is possible.
v2: CVE-2017-10981. No remote code execution is possible. A denial of
service is possible.
v2: CVE-2017-10982. No remote code execution is possible. A denial of
service is possible.
v2, v3: CVE-2017-10983. No remote code execution is possible. A denial
of service is possible.
v3: CVE-2017-10984. Remote code execution is possible. A denial of
service is possible.
v3: CVE-2017-10985. No remote code execution is possible. A denial of
service is possible.
v3: CVE-2017-10986. No remote code execution is possible. A denial of
service is possible.
v3: CVE-2017-10987. No remote code execution is possible. A denial of
service is possible.
v3: CVE-2017-10988. No remote code execution is possible. No denial of
service is possible. Exploitation does not cross a privilege boundary
in a correct and realistic product deployment.
