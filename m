X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["199" "Wednesday" "3" "August" "2016" "22:28:50" "+0100" "Dario Bertini" "berdario@gmail.com" "<CAFdyfB2hwixWS3k1v=ZdPX4NRrBvzBNnseGv2HgFs3VNyobXPA@mail.gmail.com>" "8" "[oss-security] Grails Console is still vulnerable to CSRF CVE-2016-6521" nil nil nil "8" "2016080321:28:50" "[oss-security] Grails Console is still vulnerable to CSRF CVE-2016-6521" (number mark "U       berdario@gma Aug  3    8/199   " thread-indent "\"[oss-security] Grails Console is still vulnerable to CSRF CVE-2016-6521\"\n") "<CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>" ("<CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25800 invoked by uid 550); 3 Aug 2016 22:34:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26166 invoked from network); 3 Aug 2016 21:29:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=Cd+1ydeKX7NSsvOIOtuRMGcX+fuXbYo1c8syH+huFmM=;
        b=liowuKFJW9si2Wtc2hNSba2K1SCwv4eJDd2Lb5pZPwpfDNdRTOw1lx6dzk7ytiuTN2
         fgEJxv6pkvR0xY1Oihz5KPTSj/PyGNQ77+uf718aoZYt5NqUXQhNmdmAxwF9dWzrKA2U
         tI2z8r1SHEk6TRFehSMKLMoN2R1+dE8nt/cvAkgK9UwysWIUS55HNhQxFFa+k6BSDD0M
         Yy9wMOWJIk5QQSlgstsB9VBZwjEsLhunOJiNr9zVgJVqcugJEXorAV14G3EQa+h+jYLO
         C+z9FlVglw0m0qohazZqjdDE7TAz212zPksxeNzkNz0sdRW4S6dAoz/y/uSebLog2iS2
         IviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Cd+1ydeKX7NSsvOIOtuRMGcX+fuXbYo1c8syH+huFmM=;
        b=mZ+XM3TnzScA8MKmop/HUrboYL3U8ihgGaKO1cpA8ENTaF7+GrnszDFD9cWJRPIyZ2
         FKinNn0dbDz4nWy8B3nmc7Kss1Dlz+1KvXDByslXdEbEoRQMDWPq+2/ZlimuP8cqilQE
         qj1g9pIxyYZXCKdHBVKojfiKm7lZlE1vNWTz54cBgFnoxVVG3SZ3VhfbDI6sd0migw1L
         PtWpNRwytd1d9H+YnIxDeTWho2NhmaNBhqwNp6FPspx2ptEVthba/eFFajPIBHgSSRfS
         qGiV3/RLbJAl4rsLPPlcV2dFR/hIeu97yJyNjCdx1UmIUXLloSZvszw4sov43Jmzguqt
         dNdA==
X-Gm-Message-State: AEkoouuKNKjaCyP/udaNWs+FwP7iXdI7FELWs0LX+cei5m3+HPp5NTSHq/KZkJMzwB2RRzNBEdO7pT0lPV4bUw==
X-Received: by 10.176.64.194 with SMTP id i60mr34127419uad.98.1470259731157;
 Wed, 03 Aug 2016 14:28:51 -0700 (PDT)
MIME-Version: 1.0
From: Dario Bertini <berdario@gmail.com>
Date: Wed, 3 Aug 2016 22:28:50 +0100
Message-ID: <CAFdyfB2hwixWS3k1v=ZdPX4NRrBvzBNnseGv2HgFs3VNyobXPA@mail.gmail.com>
In-Reply-To: <CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Grails Console is still vulnerable to CSRF CVE-2016-6521

In a previous email I announced that the issue was fixed in versions
1.5.10, 2.0.7

I was wrong

https://github.com/sheehan/grails-console/issues/55

Hopefully this vuln will be closed for good soon
