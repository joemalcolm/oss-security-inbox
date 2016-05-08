X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["619" "Sunday" "8" "May" "2016" "17:36:10" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQusVVOHdJqBTzyjpy8XCHP=ZmsOzjOU49XB0Bm3kt8BQ@mail.gmail.com>" "19" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" "^Date:" nil nil "5" "2016050815:36:10" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" (number mark "        gustavo.grie May  8   19/619   " thread-indent "\"[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml\"\n") "<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>" ("<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26245 invoked by uid 550); 8 May 2016 15:36:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26224 invoked from network); 8 May 2016 15:36:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=GnLMqxDLKtZyHm1sQEWIc7Gak2NOVPhiJKMuKGmuwiw=;
        b=vt4CIgg1CJ65RNqJMUSAEP+4+9b5n6LuT7CGMwrkTS1IEYYaGS3BIf/MSg8sxlnb9O
         eb8FweuLKMmROJ3cJI5rI6v41iOGuWb/T4WCNW/nnaxS+bwzcf9gUHbTaMyRjxZbluKT
         11u/Wq8K2fn6RHBog2rCv7wS1zJ9f29QcoqhhkuVB1FHn7pr2YL8+1hOHd8dFTZ7Yt9B
         IxDGDwWpbwMhwkEcJldBqG8vGgvMwfSoLxttXJAz5cdW4IEoM0qr9FXnN0x7PxB8OF+E
         /MGUwDuJLi4Gt1o9jWVNUxaWiMF7pr55/ZYdDxd6I39lT19fMMKHCzFQ3x/6ki17RhCf
         6epw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=GnLMqxDLKtZyHm1sQEWIc7Gak2NOVPhiJKMuKGmuwiw=;
        b=TCXGNeZhUX6LZLCNgiVvteTSNPM5mXGtrQnnWKTFzru4lk4NNcwH4E90sCxOWidPCe
         oUGxQpSgrg4L+59iMIQDN2M7fWuQrxPbcNxf8fCMluEbNq9fbBVN852QfpBrmgas58C4
         ac6p+krStlWIS822/lz+UDyj748ZPvg7RlT109Bu7QvKt0cR33I+WjausEQnoTH2SkmW
         fIl/3+q/oacd8Sk6xtNMf5ZRJCBCXPgHOoY53viBel0OPRQLJvu0RuhawpAsIGgj4D03
         UB7ed8Hnf8cZ7mLAUaKQzjq4w+Ty9jriiU9r4ZMwLnKzPbd8rXyXLLTWrSOgoyVQWMyh
         Ocjg==
X-Gm-Message-State: AOPr4FU3+VDHISgxPCHBDMN19aMTqnRx1uCRKjG+qw3NU0/Xm0xA7ewP5rKL85caEhRHOKBOTRTYopdhxFAhGA==
MIME-Version: 1.0
X-Received: by 10.112.135.101 with SMTP id pr5mr13198457lbb.5.1462721770621;
 Sun, 08 May 2016 08:36:10 -0700 (PDT)
In-Reply-To: <CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>
References: <CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>
Message-ID: <CACn5sdQusVVOHdJqBTzyjpy8XCHP=ZmsOzjOU49XB0Bm3kt8BQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 8 May 2016 17:36:10 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml
To: oss-security@lists.openwall.com

Sorry, the title of the mails was "CVE requested", but it should be
"CVE request". Please assign CVE if it is suitable.

Thanks!

2016-05-07 23:40 GMT+02:00 Gustavo Grieco <gustavo.grieco@gmail.com>:
> Hi,
>
> We found two stack exhustation conditions that can easily crash mxml
> when parsing an xml. Both issues are affecting versions 2.7 and 2.9
> (and probably others):
>
> * Recursion using mxmlDelete at mxml-node.c:217 (stack-exhaustion-1.xml)
> * Recursion using mxml_write_node at mxml-file.c:2739 (stack-exhaustion-2.xml)
>
> Found using QuickFuzz + Radamsa. Reproducers are attached.
>
> Regards,
> Gustavo.
