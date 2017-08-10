X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["455" "Thursday" "10" "August" "2017" "09:24:16" "-0600" "Annie Cherkaev" "annie.cherk@gmail.com" "<CAM-ZzmuyxA6RjBSOb9ZSonP5A84ybXjKvemWMV4tv9MYBscvUg@mail.gmail.com>" "13" "[oss-security] CVE-2017-12762: buffer overflow in ISDN linux driver" nil nil nil "8" "2017081015:24:16" "[oss-security] CVE-2017-12762: buffer overflow in ISDN linux driver" (number mark "U       annie.cherk@ Aug 10   13/455   " thread-indent "\"[oss-security] CVE-2017-12762: buffer overflow in ISDN linux driver\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5521 invoked by uid 550); 10 Aug 2017 15:30:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31855 invoked from network); 10 Aug 2017 15:25:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Mai1LMZzdjnbAJ5iFRkco/pG6wrcHiNi8bwzYY16o/0=;
        b=a9NvBeQGR0vS9Bo27vb6TgvWbQdAY4n/lRA83JDFq14fk3u4BNIIVDf3BOWJvsOEXg
         2Zllegn6BdXxgjFyOBd91xa/115LRZNsabn0SBYmNukk1P+Sr1l5wZpho0lgEI9WZdfP
         HDW7teRg8xg/Nhgb0jsoNeCYo2tlN0IEpfpleplYUGSp0v+5jSxonH1I0JBW2FIGa5B0
         HBJmDCoEm/zeZkqVCozkQI0qghHdtW5wp73NllEdBb9mFK0qftbsEKeXO4bb0axA7NWk
         ee4lGONhaKgcHCx17J7eCv7Txk9LAI5OW5RLwMzSdWDMNE64J4ktiQPApl0jmSV9weuY
         jslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Mai1LMZzdjnbAJ5iFRkco/pG6wrcHiNi8bwzYY16o/0=;
        b=XAXQ40UvvE+A59MTIOIbT//FfwJjtjEhEAgX4OnZs0y/xbzGSREDCZSr0Adp18JAyy
         JYmrdZ56+mSY76+aNWns8yRO4BsWU7cSGARFx7dgOl77mQN6V1KM356juJi15FhD7Gk7
         tCflybZpgXc9OA3nypJ2iFMjJAXrGcltPP5rta9L377HTzX9KWZTudATf6JvjwJiLFtJ
         vDyGNi+2MnmIJVBd6djYXslCPT2/qrBnkrrLUoYNhgfWt1wWg/17Zgfe10ts0lW26rFC
         i5pq4Tx1Ck2T/QaJMHjbE9NxJZ0+m8gCFLlAHfcAN2yRmvi91PUAH4jljoe9yOPMZhe1
         U0bg==
X-Gm-Message-State: AHYfb5gp+BvYqyec/TP1WOtDiY1up6T0MnfdiFWOdqUSU12iTAe3R817
	/aLQG/nxqPfU6s9csoKsrkMplU7+N5XNE5Q=
X-Received: by 10.46.84.86 with SMTP id y22mr4177295ljd.135.1502378697356;
 Thu, 10 Aug 2017 08:24:57 -0700 (PDT)
MIME-Version: 1.0
From: Annie Cherkaev <annie.cherk@gmail.com>
Date: Thu, 10 Aug 2017 09:24:16 -0600
Message-ID: <CAM-ZzmuyxA6RjBSOb9ZSonP5A84ybXjKvemWMV4tv9MYBscvUg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045fc1c292fdaa055667ccf6"
Subject: [oss-security] CVE-2017-12762: buffer overflow in ISDN linux driver

--f403045fc1c292fdaa055667ccf6
Content-Type: text/plain; charset="UTF-8"

Description:
In /drivers/isdn/i4l/isdn_net.c: A user-controlled buffer is copied into a
local buffer of constant size using strcpy without a length check which can
cause a buffer overflow. Patched in the Linux kernel 4.9-stable tree,
4.12-stable tree, 3.18-stable tree, and 4.4-stable tree.

Reference:
https://patchwork.kernel.org/patch/9880041/

--f403045fc1c292fdaa055667ccf6--
