X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["339" "Sunday" "28" "February" "2016" "15:38:00" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSZwhbpDr9_QLe=ZRMT54+Ee-iN6qcOFdPbYHKn0iLJOA@mail.gmail.com>" "13" "[oss-security] tidy-html5: read out-of-bounds in TextEndsWithNewline" nil nil nil "2" "2016022818:38:00" "[oss-security] tidy-html5: read out-of-bounds in TextEndsWithNewline" (number mark "U       gustavo.grie Feb 28   13/339   " thread-indent "\"[oss-security] tidy-html5: read out-of-bounds in TextEndsWithNewline\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27952 invoked by uid 550); 28 Feb 2016 18:38:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27908 invoked from network); 28 Feb 2016 18:38:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=jk0sip6lLhvKsgLYY5dSA/4wT1c7SdFFdIo5S+fOpfU=;
        b=gzDu+IckM/K+erTIgvZkhLGWPKCYmjU7ezaIO6d8BEIC8JTnNy3W9Yvm3zGkDmj2Qz
         EF3xUhAc9xFmftecuVGYNwqnVUaeH5quIoILCk1DKQB5+0SgMFRLl2VdHCGTGP0xSkTR
         tW/bVPXEA1P53Qzt89eg6H/11nFYOpog7sTjwHD5mxEPP/L52SWCvQj7Tpnr5OJMLe/A
         I2aJhoUsUfE+PMmZUNp8uSR81I00oOXyFZXv/wJ20lSl4exstUmopiV6luTGyDD4WXHR
         3/W9wK61sLnvQmvC0V5Ut70kJ6z7AjRViIcV9k+NWVJx9+mJD7UydyfXxRNIm7npR4A8
         dkXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=jk0sip6lLhvKsgLYY5dSA/4wT1c7SdFFdIo5S+fOpfU=;
        b=UbY5W/yXQ+Pw8v6jx1A0V0/EdV6aUShE4QUv1BZBhtTdo8VqKL5tQOx+CXVZ9bcu2o
         el1BPMPvk6ghADEIKrnOa53uuAkZfv/LsJim4uLmlq8xGNOISmj3K4Re+qIKzzazvdvb
         a+ED62PhrqxtptGJ0U254N3z0NjzJQDn7VRQ5+QSYSFkufWHje/Wp7rA4IAqxbF+Tw7+
         AQIHRhs2UdJp6bmDN46iRdthcr4iCOh2R9RmYqAj9boLzIHbcDIsAvS7QRf4COrlAuq/
         /VuLTHKo28y5Tpc88N0s2dVbGMxKvV0w5MkN4AEau8UwGr5R4+heGbrJ4/77xcUS2F1S
         oang==
X-Gm-Message-State: AD7BkJLl9+EBeHY0OwajAOS5AjDx+sVL6vNeUH8l8P3jq81oK+bvYjkf4Oo6R9qDQFNpmU9kcQreoFHDaeAtig==
MIME-Version: 1.0
X-Received: by 10.25.161.131 with SMTP id k125mr4113684lfe.83.1456684680879;
 Sun, 28 Feb 2016 10:38:00 -0800 (PST)
Date: Sun, 28 Feb 2016 15:38:00 -0300
Message-ID: <CACn5sdSZwhbpDr9_QLe=ZRMT54+Ee-iN6qcOFdPbYHKn0iLJOA@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1140711cf4259a052cd8d490
Subject: [oss-security] tidy-html5: read out-of-bounds in TextEndsWithNewline

--001a1140711cf4259a052cd8d490
Content-Type: text/plain; charset=UTF-8

A read-out-of-bounds was discovered in tidy-html5 (git revision 03a643f)
using afl. Technical details are available here:

https://github.com/htacg/tidy-html5/issues/379
<https://github.com/htacg/tidy-html5/issues/341>

Regards,
Gus

--001a1140711cf4259a052cd8d490--
