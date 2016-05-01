X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Sunday" "1" "May" "2016" "22:10:11" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>" "18" "[oss-security] CVE Request: Jansson: stack exhaustion parsing a JSON file" nil nil nil "5" "2016050120:10:11" "[oss-security] CVE Request: Jansson: stack exhaustion parsing a JSON file" (number mark "U       gustavo.grie May  1   18/486   " thread-indent "\"[oss-security] CVE Request: Jansson: stack exhaustion parsing a JSON file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13682 invoked by uid 550); 1 May 2016 20:10:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13663 invoked from network); 1 May 2016 20:10:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=j/VTJL5L9P7DtKL4Fi1PCDWiuQMR0yuPlWiR+kyi3Es=;
        b=H4xTrX0Nv2AiJuy4mlsUPn93n4Zi+r0rMQyDfY2fkoNMtm92Og/lsmKFj7t/ikEPNe
         nvK056TaebBmRkAVsXTvs3rjXF0LK1CEmd+kW0TqD4AZZ/XP25jPf5YFkicZqpr8NMl7
         5S3NpUW6pfWHIsK3WYRfOsZJ7cESWZWR/patl6aDv6A6eNc63lpU8N/AS6ORNSJ/lCAo
         fCMEANxWzePmg/D6t5r1i02WwZMwqqcAbC2Kas+yz3qXHr6RzmkfMZ0wWN0/JRkZdl5I
         +Uceb+ShBTYgX36ATQ0Y0J/oy9w2+QOheA0rlVCeRP+KF81ExrQyoyMxp514+Q/LJ1T4
         KBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=j/VTJL5L9P7DtKL4Fi1PCDWiuQMR0yuPlWiR+kyi3Es=;
        b=DK3BBKSw0Uvvz74U1nhxP2A1KTL5kfGpoIrB00GFrgdULpbwxaWU0RztFxNLT6JVqF
         UV74SF+aDI+ikQc9q6ziSfczk5EPm7YgIJ0Q9kh/AOkD5baElpTUV1qPusQnmtWmn+gw
         dHzamjZopU6ArR1I6ZNE+EbFeYHguFG74IvyBQCt2cWFOhhbWdrQl4hnd+X9hjMBNcPI
         Ex3RHUZ521WTWNP2zdw2cBuYwvkzJZtc6SWgKwYcwez106NUGx5PeGk3BxtueQhN5MkW
         lH40Vcc3ICBv3r8mnP9PoCGIp00bcQbez95T74k33cNE8v4PCulMuxdEZxb+Ajnaseh/
         A07w==
X-Gm-Message-State: AOPr4FXEZLjEfajuuYCQ/EhdIDcKW3iavoU8UfkHgJVSB5O74xKqujpz/shIOKsPjRpmq1eMhgYG1I7gwpFniQ==
MIME-Version: 1.0
X-Received: by 10.25.163.211 with SMTP id m202mr11282522lfe.73.1462133411309;
 Sun, 01 May 2016 13:10:11 -0700 (PDT)
Date: Sun, 1 May 2016 22:10:11 +0200
Message-ID: <CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114116be9872c10531cd76b9
Subject: [oss-security] CVE Request: Jansson: stack exhaustion parsing a JSON file

--001a114116be9872c10531cd76b9
Content-Type: text/plain; charset=UTF-8

Hi,

A crash caused by stack exhaustion parsing a JSON was found. It affects, at
least version 2.5 as well as the last git revision. Technical details and a
reproducer are available here:

https://github.com/akheron/jansson/issues/282

This crash was found by QuickFuzz working with Radamsa (again caused the
extreme mutation). It was manually minimized later.

Regards,
Gustavo.

--001a114116be9872c10531cd76b9--
