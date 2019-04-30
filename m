X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["538" "Tuesday" "30" "April" "2019" "16:11:25" "+0530" "Pramod Rana" "varchashva@gmail.com" nil "16" nil nil nil nil "4" nil nil (number mark "U       varchashva@g Apr 30   16/538   " thread-indent "\"[oss-security] Cross Site Scripting | Alkacon OpenCMS v10.5.4 and before\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Cross Site Scripting | Alkacon OpenCMS v10.5.4 and before" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22069 invoked by uid 550); 30 Apr 2019 11:26:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11817 invoked from network); 30 Apr 2019 10:41:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=mU3cfc2zaVZCntxEY7oMuLs9AnG8hUk2xDuwrwAKNu0=;
        b=QF39mP3hjzrjEcjS6CDnKrS3btm8RF0cM1fcW5hsju5F2R+EwETd1pCLRhOfPkyOuK
         6iJqiy374zpo+YuTIbx1l/k2m6bn7o5QFpf+jUrlv0t+Xusq+fcZDVAMQOhiS06qqfIQ
         ZybCs7+av3ZlkfIjE42UbRCmK/BikLAoriZ12lbZ51sx6OR3jq5yPl/6h2Y5GHNmUY9V
         CHW9h1OPLRyV7LZXCGCO1v0CzfFou2DQzKkm3KfAr5HX1/Ft6UV9vb7zJ9XJFDrHJnEF
         Rzj6ZqNhjvehWUecFw4lRijn1MCosTymADWYBw6sRHmPO3ADeEfcZP8cs49ZktIzd+yU
         nieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mU3cfc2zaVZCntxEY7oMuLs9AnG8hUk2xDuwrwAKNu0=;
        b=bRUMUvGrL2lT7MeKPSmTUdqtjbkcwQ1S9I7vjeGW54lqJbwCXw6h49L4/9ZMWmgE2l
         K+wu3hH4Ed5P1g4Hz5RUb+ZVj8PEoT+KAcv9CJKDMi3gRuX85REx22SgQOQDWIBmxyQb
         cBb2NCCmJQWOag9qX6RSu3Cx4WJzfqmm4LJblnZiUBlzxjcrVK7dZmqRm3iQMuFt9VBE
         6RGxJtgAkGUxvkscKbbgml3eLnYVBo7ltuXZ/9TbOsUGvcVdRzQTUpr4phKQS66ozn4u
         Gry6u8sSCQ5j+dMT36CBdY58VFaQG/qEpa6eQNSxYeXT6W9wU2CGW/B4s3HaKja0nz/t
         lPRg==
X-Gm-Message-State: APjAAAVlEXpcsrwFc2ms/YiVP+E/OBbHJZCqkB2/RFTs22bR8iWDgDkI
	M7p7mSfgYbmArW40muhWE/0QuRt5fyqdBLq7UtWifBI=
X-Google-Smtp-Source: APXvYqyKAgfVKKFNvHEz2kfSYEIwsce4Nmoe5f43+sKjeYdMIhqKeFt7MmbHiBgvpBPHYUv7bSQPYv/iUnndhxOGIQ4=
X-Received: by 2002:a0c:f990:: with SMTP id t16mr28868119qvn.54.1556620896262;
 Tue, 30 Apr 2019 03:41:36 -0700 (PDT)
MIME-Version: 1.0
From: Pramod Rana <varchashva@gmail.com>
Date: Tue, 30 Apr 2019 16:11:25 +0530
Message-ID: <CALv8orF=CQRBqzOj_P06KV6Hasg60WLZ3jOg=WDJUXSzwNu7SQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000092604c0587bd0b89"
Subject: [oss-security] Cross Site Scripting | Alkacon OpenCMS v10.5.4 and before

--00000000000092604c0587bd0b89
Content-Type: text/plain; charset="UTF-8"

Description
 - OpenCMS v10.5.4 and before is vulnerable to cross site scripting in New
User module for parameter First Name and Last Name
 - Impacted URL is http://
[your_webserver_ip]/opencms/system/workplace/admin/accounts/user_new.jsp
 - Payload used is "TestXSS<img+src=x+onmouseover=alert(document.domain)"

Further details
 - https://github.com/alkacon/opencms-core/issues/635

Already requested for CVE, yet to receive it.

--00000000000092604c0587bd0b89--
