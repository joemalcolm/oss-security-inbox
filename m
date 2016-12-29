X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1054" "Thursday" "29" "December" "2016" "12:17:16" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcv5kDWiMpDUWs7-cVN5eBb-L91myxUhSNJ8AVYq0jUbRA@mail.gmail.com>" "30" "[oss-security] libpng NULL pointer dereference bugfix" nil nil nil "12" "2016122917:17:16" "[oss-security] libpng NULL pointer dereference bugfix" (number mark "U       glennrp@gmai Dec 29   30/1054  " thread-indent "\"[oss-security] libpng NULL pointer dereference bugfix\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26033 invoked by uid 550); 29 Dec 2016 17:17:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25980 invoked from network); 29 Dec 2016 17:17:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ellc2DvvFAPytepkV1mmyLRoWAb6IpEAkzb+VsFDMLo=;
        b=jnoZQX1sK1y3cLYjWjepvVfV5sYELEcqgpyNQFaGgky2SqHdezCB3joID/N0LNCVlX
         2ddgyjgIxXbE0rfOEsYI+7c/SPIQ4Io3MMx3bMvxiYHL8zvSSzeQh2SuoSfAcAkKDsAL
         RU7q7jJtaRvykrdbaIYH7+ws8aTZuoAh0OkksO8Lqi/srnnSgqyQdaFjHb3yGIy26Aw4
         Vs2plwKpCa4JDwe7SbVms8stShzbuYdD8oCOqcxl3L9xSKH6C33rjof/GU0qbWE47XZA
         Dmpwr6zrF2Mzi5o38EfdcKoR295BWixS0zvz9fcGTKgLC0lH6pD/0iGdA3nDm/T1Pm9N
         m6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ellc2DvvFAPytepkV1mmyLRoWAb6IpEAkzb+VsFDMLo=;
        b=mKEMQ7sDWukrDx0dBASlF5jo/xATs27jtGqmUQnU3A2uQaczqi6+9amyUGTW6aAhgn
         +ksYw70KgBUQoa78WQ7TOuQrHwxnRwKAnXUdFi6h0SvXjJ3cvmZh1ePheaGOkkpnmrHi
         v2Cajya1Xi2zdbfmPBtYPD0zWg/DnAx/gKvbxKv0ZrWCJNaj7jQ7P6G9nQVQsmkFLRuU
         LpTxEi0dV04xlaDklRc4NLgnKBAiLzk1M7LXMiScfN1YOL0C+xLGu5i5GFd0xBWfUB6T
         hrOPE0O6wba3FuSqCiKqKcrfFZLALw8g1mBcujKuar9EUQsh8CvUzbCfJdPXSpbjSz/A
         C3Qg==
X-Gm-Message-State: AIkVDXK+43oCKUaNkJt3Etz9ApMF7gfp/eKoRTP0ufzX0W9ggjh23vE0ckwzYA0b2NJDjHq9c51hp6TiCKw9vg==
X-Received: by 10.36.14.84 with SMTP id 81mr36579355ite.54.1483031836665; Thu,
 29 Dec 2016 09:17:16 -0800 (PST)
MIME-Version: 1.0
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Thu, 29 Dec 2016 12:17:16 -0500
Message-ID: <CA+PdXcv5kDWiMpDUWs7-cVN5eBb-L91myxUhSNJ8AVYq0jUbRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143e56ad0b12e0544cf413f
Subject: [oss-security] libpng NULL pointer dereference bugfix

--001a1143e56ad0b12e0544cf413f
Content-Type: text/plain; charset=UTF-8

libpng-1.6.27 has been released to fix an old NULL pointer dereference
bug in png_set_text_2() discovered and patched by Patrick  Keshishian.

New releases of legacy branches (1.0.67, 1.2.57, 1.4.20, and 1.5.28) have
also been released.  Other versions can be patched by adding a single
line

      info_ptr->max_text = 0;

at the appropriate spot in png.c.

The potential "NULL dereference" bug that has existed in libpng
since version 0.71 of June 26, 1995.  To be vulnerable, an application
has to load a text chunk into the png structure, then delete all text, then
add another text chunk to the same png structure, which seems to be
an unlikely sequence, but it has happened.

Applications that I have looked at (firefox, imagemagick, graphicsmagick,
pngcrush) do not appear to be vulnerable.

I reported the bug using CERT's online reporting system several days
ago but have not received any response.

Glenn Randers-Pehrson
libpng custodian

--001a1143e56ad0b12e0544cf413f--
