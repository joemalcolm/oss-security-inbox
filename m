X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["315" "Friday" "4" "March" "2016" "10:59:22" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQdKGVFgWPdYpZ6PY0P4gJr6+GQM=STpoFM_T31wugZvQ@mail.gmail.com>" "12" "[oss-security] tidy-html5: infinite loop parsing an html file" "^Date:" nil nil "3" "2016030413:59:22" "[oss-security] tidy-html5: infinite loop parsing an html file" (number mark "U       gustavo.grie Mar  4   12/315   " thread-indent "\"[oss-security] tidy-html5: infinite loop parsing an html file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25749 invoked by uid 550); 4 Mar 2016 13:59:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25702 invoked from network); 4 Mar 2016 13:59:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=z+aBBmOmuN4K8D3EyPlq+p4tFoDMTJ0kiedrFErefbw=;
        b=YTg2SZNrRSNc3Qv69jow2kNu9znw+RuOY61pMon0Tp3JLxuQvFSxYZNmEHrnAo2vvx
         +e7pvkCTGoEt0WXcl7VMbtxgPoJTTYxHT6nG//G8lz4ejpKsk84geEspRXzM7SP3CwCi
         szvG9/IgHc7aJ1lQsAUPXEBQdsV98m0IcUx3Pr6GhmokhNFILIBb4dA4gBIOe3grJoPr
         /H1hCegckELA0fwM1KFFT3+gKAVn7gP0TxV+3KIUL47IwnlxMTGNxfQ2n80DltXtTTtg
         rkG61S6IuL6LVznHijwwzpxCb2v1VxRscyxjwOQrCb0qXdXuv5m5j/i/XANv/8jwpmo2
         6B/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=z+aBBmOmuN4K8D3EyPlq+p4tFoDMTJ0kiedrFErefbw=;
        b=kUGvQ3Y/df+J/OrqOFNezNXi06MJQ2USyLPPEfpdq/vM4w1nxM+Umt243BOurHnk0E
         P42QEC/iJ4au0NDIN5ilpUnNagWJf4fiN/aiV9udqnqoXK5P9n+gsvch9wrcd1eThoG/
         coZAn5EqiCmJkpU3EsMBH0/E/IrGuSkE4AJ/1pYhad9ukYxD6itbvdqdjy6W8Wbj4wok
         KpgOIP3I0ngdbJHTrZ+rDRCGxuW67R51BFMkb8aMdCi9Qoayo7diP9DZAE+OvKetyCMd
         Nmp2bX+TApdh+pJujZX19zTqefIVj1nyvY00s+Jic3/guPe87T+Nqo/epPbpSb7WhmhN
         DZAA==
X-Gm-Message-State: AD7BkJIn/g1UXnxSBM0/GTtNhbSHKr6UsnQczbG5hcJeJth7F0za3/BHgycJEsp70+E8uwPAoQM2vCie1ZXNvQ==
MIME-Version: 1.0
X-Received: by 10.112.54.201 with SMTP id l9mr3191406lbp.105.1457099962626;
 Fri, 04 Mar 2016 05:59:22 -0800 (PST)
Message-ID: <CACn5sdQdKGVFgWPdYpZ6PY0P4gJr6+GQM=STpoFM_T31wugZvQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3a754acbe10052d398550
Date: Fri, 4 Mar 2016 10:59:22 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] tidy-html5: infinite loop parsing an html file
To: oss-security@lists.openwall.com

--001a11c3a754acbe10052d398550
Content-Type: text/plain; charset=UTF-8

A DoS parsing a html file was discovered in tidy-html5 (affecting 5.1.25
and last revisions) using afl. Technical details are available here:

https://github.com/htacg/tidy-html5/issues/380

Regards,
Gustavo.

--001a11c3a754acbe10052d398550--
