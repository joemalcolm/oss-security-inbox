X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["494" "Wednesday" "11" "September" "2019" "23:13:33" "+0200" "Frank Morgner" "frankmorgner@gmail.com" "<CAO8bUynNGucV2xa-dXjKSS8iNKQ2tupzxSgCQseBa02moykPRA@mail.gmail.com>" "14" "[oss-security] pam_p11 0.3.1 released" nil nil nil "9" "2019091121:13:33" "[oss-security] pam_p11 0.3.1 released" (number mark "U       frankmorgner Sep 11   14/494   " thread-indent "\"[oss-security] pam_p11 0.3.1 released\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] pam_p11 0.3.1 released" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24042 invoked by uid 550); 12 Sep 2019 11:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7645 invoked from network); 11 Sep 2019 21:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Kn4e/XSJV3+LL7rHtPYDeFuLjP1YPO4A/JxHQcfAlPo=;
        b=CbnOSd//3Rpavs9V4BZR7ynC4ZJg3lgzTutJ7JHBYjZGYDLO7G7NReKl6pICBI9OfM
         4XumA8R1dJ0/i+1Gp8NeAtEHvWZtxqlNHk3qlAgOmvS5eYSKKTLoDIkpuA+zrsSzYI3i
         EGEL99OE+kcE0CTJqkUZ6lcXse73o846CYIzAtflbheLPqB0+lArIQJVrVYjlxsn5cEx
         93zGUkAwor7SNBFCLoLxRuVIP9PpcU1QefbxjkxF/tw3lBP0tm2VJWjjfpBYaloOjgFl
         IfG4AqX6eS1m/dWoDgHHkXra8OqXp7t1FbvvBvH6pRoVz9MdLNU241RUYA3yFr+YsD0O
         pQLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Kn4e/XSJV3+LL7rHtPYDeFuLjP1YPO4A/JxHQcfAlPo=;
        b=qVUUTmXr62KMufRj+00U58FnHTiocOR7ujz9gwaxF9e3I/XuE+QoY0Z/G22VfolxNy
         6U+fIyRlYieGYHU5HEA61HyVGu5v1+7YjMevB8z4N83mRKREQ9NrQAoKnaEVM8X90orx
         08sEndK9JeBkO9797IxVat269At28QmW/h6fQnxUKkeownzGk7p31V+2Ii057RP9Z537
         W7h2Zi6R9qnya3KYRGmlXxzr6wn4gphmZz+tvkBXD7y61y3Ljc1scQKJ4CbiYaQ7U2Lr
         uE2jhb84jrOTuWwjP6bIZ07s2oZVVy0AWHk1C7xO6Y3Bws2nnOFrcd2Z57vl/szmp26D
         8c8g==
X-Gm-Message-State: APjAAAUm33O7HT6VXXMDEdBY5jqsSKmjXY7fZKWpbaYvH7bfazv8lwSa
	1HzKuyOUbezZnCFoOOO4jlVjgcaBArdZFnpZ+Ws=
X-Google-Smtp-Source: APXvYqzNt0/OHUonkuX0R5hTauKtxO4bmceT82zjrYfc2O+9IFpBUM/x+4DiNmNGjSaTGHamXZsAGCWFWN+IwgseEn4=
X-Received: by 2002:a02:920b:: with SMTP id x11mr41553812jag.17.1568236425782;
 Wed, 11 Sep 2019 14:13:45 -0700 (PDT)
MIME-Version: 1.0
From: Frank Morgner <frankmorgner@gmail.com>
Date: Wed, 11 Sep 2019 23:13:33 +0200
Message-ID: <CAO8bUynNGucV2xa-dXjKSS8iNKQ2tupzxSgCQseBa02moykPRA@mail.gmail.com>
To: opensc-announce@lists.sourceforge.net, 
	OpenSC Development <opensc-devel@lists.sourceforge.net>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000152d6905924d7fed"
Subject: [oss-security] pam_p11 0.3.1 released

--000000000000152d6905924d7fed
Content-Type: text/plain; charset="UTF-8"

Hi all!

I'm happy to announce the new pam_p11 release 0.3.1, which can be found
here https://github.com/OpenSC/pam_p11/releases/tag/pam_p11-0.3.1.
<https://github.com/OpenSC/pam_p11/releases/tag/pam_p11-0.3.1> This release
fixes a buffer overflow when creating signatures longer than 256 bytes
(CVE-2019-16058). This bug is present in pam_p11 version 0.2.0 and 0.3.0.

Regards, Frank.

--000000000000152d6905924d7fed--
