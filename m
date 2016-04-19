X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Tuesday" "19" "April" "2016" "15:12:33" "+0000" "Nathan Van Gheem" "vangheem@gmail.com" "<CAL8hw9Gid=9bUYu+MYmUGpu2DJrXDG_qwJdM4nu3gLUKYBqDsQ@mail.gmail.com>" "26" "[oss-security] CVE Request: Bypass Restricted Python" nil nil nil "4" "2016041915:12:33" "[oss-security] CVE Request: Bypass Restricted Python" (number mark "U       vangheem@gma Apr 19   26/568   " thread-indent "\"[oss-security] CVE Request: Bypass Restricted Python\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29703 invoked by uid 550); 19 Apr 2016 15:12:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28660 invoked from network); 19 Apr 2016 15:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=CExy7c5xBNf1K24ZKKtaaF3Kkd7SVT4WiDviaHoVNs8=;
        b=fgIB9rDTq1MPyiwHiOOPDqGQmQojs6TefB7Zkc39TiDCMSqa1GXnJ7cbTXTUb3JIPM
         iixJiKFfSj11RHcDOKd4Z3KPgvt2TH1m7FOv1g3Cjswvy7cNU/YEYkiKizI7hjW3g1Ti
         gJD8DsqmYPFaXDpu+aSBtcTDmA34/lHcM5BRvOv47VS1j1w5eYWgmvZRACUr8+zxLlFm
         auWJQuFpiaMuos2vi5c3dRahUkVrpF4Z+vspgSlniQDXxnsCEblckDLjkaUOzd5dsWYf
         6/XJQ8xtmEiR9rd6nwbKqqzJaafjGtbIkKqiJIuk/+KJAIVRm/DyAqRPJFXQ+q8sZaY+
         b+rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CExy7c5xBNf1K24ZKKtaaF3Kkd7SVT4WiDviaHoVNs8=;
        b=YEi72TG5e3Ue+PSuScI4b0P/yOirPhz/nYj1Hlmu0xeXjnwKv/9CCTw0nMP2uybWSu
         nK7krBX6ucqnIofpG8QhJHv0f1l9RYieOzyP8mMHm6nNBmTEbntPlPx5oAV+mx2Le00L
         36Yr7ZzC+dHmYIHZi7zWQ4TFn5u+/euiDM2VAtDU2yqDnPpThRP3hTK6kl/cZR4vysv/
         vW0Z4ExtT6/NEhbnw+D26EymfgHgxWQC5Qg9tkSDozkm7UrL/+Te/OaG4oI7FJJoaUxD
         Ycv9Y0vmAxdrc3ndqZwBxRMjI4NSMXiAjoNLVDRyUUrEm8z+NQoAVYwWcDQvLCIXkuy7
         C/FQ==
X-Gm-Message-State: AOPr4FUbbAN/Ny1JljaKygiH//MPMu+W1zb5HEwXLrSu/CbrKvWNeRrhPs/h2Z2qQTg5vcf9nPAP+HR4+DE9xw==
X-Received: by 10.107.176.15 with SMTP id z15mr2532053ioe.78.1461078762607;
 Tue, 19 Apr 2016 08:12:42 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Van Gheem <vangheem@gmail.com>
Date: Tue, 19 Apr 2016 15:12:33 +0000
Message-ID: <CAL8hw9Gid=9bUYu+MYmUGpu2DJrXDG_qwJdM4nu3gLUKYBqDsQ@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1145295ea2585e0530d7e87c
Subject: [oss-security] CVE Request: Bypass Restricted Python

--001a1145295ea2585e0530d7e87c
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?

https://plone.org/security/20160419/bypass-restricted-python

A user who can create or edit templates(usually only admins) can bypass
Restricted Python.

The relevant code is:

https://plone.org/security/20160419

The vendor credits with the discovery: Fred van Dijk and Maurits van Rees

Thanks, let me know if you'd like more information.

-- 
Nathan Van Gheem
Director of Solutions Engineering
Wildcard Corp

--001a1145295ea2585e0530d7e87c--
