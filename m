X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Friday" "13" "September" "2019" "11:40:00" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" "<CAE_88GbjgOf0v=B7w2PTa039pmZg5jRM0iN_35vxMNNVR9EweQ@mail.gmail.com>" "27" "[oss-security] CVE-2019-10071: Apache Tapestry vulnerability disclosure" nil nil nil "9" "2019091314:40:00" "[oss-security] CVE-2019-10071: Apache Tapestry vulnerability disclosure" (number mark "U       thiagohp@gma Sep 13   27/879   " thread-indent "\"[oss-security] CVE-2019-10071: Apache Tapestry vulnerability disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10071: Apache Tapestry vulnerability disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1186 invoked by uid 550); 13 Sep 2019 17:47:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32694 invoked from network); 13 Sep 2019 14:40:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lBcbainsUgjQvBPCVB8QdHqYcdQwy+Geh19thIpjrGI=;
        b=ZoEn3Oa9jnpjP6vKVSnmKepRo0Q3fF6Ft7rb1FDQZW+iUgY4WDsUCgNSM6Gnok5ol1
         avPFPM5SFHd3LLAJLxECryDwOnJ34yZVxA5nb8w0XkcZZB+PCOF3KeUakJLSy5nvh3hu
         WhFQz6Uxe3gd8SbOLY/lVfJN0RwcTAIx9mtrcwQzElvfNTOQyAB3+EIQA9JisZgSLzB5
         A4rtNh6cIv6HYW9Ey6qUYCxBO5wRnqr2eHXjLDz0O27UW9IjbnvPKLcS+jyApxk3MBMe
         jXE1n9L0EXbHZXCfTms9vgOHuturCcEdYG4goEqFW8DlvXxF74szaCGFMBVxqGmKK6zB
         pjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lBcbainsUgjQvBPCVB8QdHqYcdQwy+Geh19thIpjrGI=;
        b=nYvTWq+zhPHVKd/3ACXvr2OzrxGEswMyeDLf/u23DFPRTHYmWbBlX4b8J5EXmVjt+F
         qWWrPDP/q9ovrQc1NlG9F7n5KtrI29hvu3lISf6UMlhoFOmeHOMMrUb6yzCVDQWBlWQ8
         LskiujcxcXa21LX1Q7va9jHb4xVRl+Syvv1/62Js8fWfqBBoY5AFpdrQruKPLJcxsJo7
         fKdeCajnT5h6idaYd426dSnS4018e+ALaiD0aETbf7XJL3vVDnUyP5HUeLLCONb8IkXo
         cRVCk20YAEC+Cv2aBXorObiZI3gUguaZa7iEGZqm2Km5cpm8J5Rp6LNdki8kT+/QLCMk
         Bzig==
X-Gm-Message-State: APjAAAUdIdEZNeo7rY3ShQ0VTecbkSoVre62hYQkyy+eQyctkiQWRTsH
	Mf4WBZ7U1CMdmjHgPK0tLoPoCSWwlrtOvzxbgM0EWjZJ
X-Google-Smtp-Source: APXvYqyqP1TUwJfZqACdDvBmg6PMsRvtwDN/FPq5MI5gTyDoTukx2/MB8L0yVTtsyssg6vLLzzARos3bXp84aGB9faE=
X-Received: by 2002:ac2:5090:: with SMTP id f16mr32636093lfm.66.1568385611412;
 Fri, 13 Sep 2019 07:40:11 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Fri, 13 Sep 2019 11:40:00 -0300
Message-ID: <CAE_88GbjgOf0v=B7w2PTa039pmZg5jRM0iN_35vxMNNVR9EweQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003d37640592703b3e"
Subject: [oss-security] CVE-2019-10071: Apache Tapestry vulnerability disclosure

--0000000000003d37640592703b3e
Content-Type: text/plain; charset="UTF-8"

CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability
Severity: important
Vendor: The Apache Software Foundation
Versions affected: all Apache Tapestry versions between 5.4.0, including
its betas, and 5.4.3.

Description: The code which checks HMAC in form submissions used
String.equals() for comparisons, which results in a timing side channel for
the comparison of the HMAC signatures. This could lead to remote code
execution if an attacker is able to determine the correct signature for
their payload. The comparison should be done with a constant time algorithm
instead.

Mitigation:
Upgrade to Tapestry 5.4.5, which is a drop-in replacement for any 5.4.x
version.

Credit:
David Tomaschik of the Google Security Team

-- 
Thiago H. de Paula Figueiredo

--0000000000003d37640592703b3e--
