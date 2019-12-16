X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["421" "Monday" "16" "December" "2019" "14:15:35" "+0000" "daniel gaspar" "danielvazgaspar@gmail.com" nil "22" nil nil nil nil "12" nil nil (number mark "U       danielvazgas Dec 16   22/421   " thread-indent "\"[oss-security] [CVE-2019-12414] Apache Incubator Superset medata data leak vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12414] Apache Incubator Superset medata data leak vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13742 invoked by uid 550); 16 Dec 2019 15:19:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20396 invoked from network); 16 Dec 2019 14:15:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8EXQ0eyyzJAx14LjMlh+BaBv5zXbRKfjyIBKMvbpT1o=;
        b=OrD5lsAXuyp26DuPQb+fB2Zp1jPI6pqFyivgWgz/FbmllGW6TStJTUBCV06HV4iyrr
         z6BlEL/4kNRE5aYAKbvF4LUU6+TmuTuaxcNTRXeW02d30P42FwyY2lzQ3U/qJ9kMonBd
         L+jBf+YaBpM7h4LhZAJZa3JBIUYnMeuQ5HEttbwvKguel59uwYcFnmAzRXN85rdrO064
         lm3LQMZGqEYo5Jk/7HMSh3wYz++d5EC+MzVEuOoBvENmCM+H+gOhczBEJYjFipi0v4Ym
         Ict5yFfLOX46xnZiMcff0xZcSbp/BNI5Q7WXoZxhlZmUzK5iWK5K4XoDJQFWJl9tneUa
         FdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8EXQ0eyyzJAx14LjMlh+BaBv5zXbRKfjyIBKMvbpT1o=;
        b=ot8nNfmwnWEKGOokJA3I5khMDeCF1Tzs4jF++Ce6cI2KThK/HQE2Ntd8ZG/gJtY9Im
         JiLbAPNAS6nyGV1Ri2LrDOk82QSbYZLwYLwT3kFP0NZEqhq+X8zlQByBgQph8v7iXn3u
         mxYlxk/7bXsLKnQcccFrMmGJi8DHlPLtrHiFhwigVvkxYlaycWaM6fL/JxrzfOh3kRnl
         hIMNGwvnD20hU/muI7XNA7r7ymSuZFDiW2vUpizLjoKIVBxwq/sxMpv7vu0uSwLPkMnW
         IFPtZaOsbxW2S/ogkYVYKE92TDCRQP3s73LbdVp7uNVf4S8GPv4/id3nqVFPh4532gQJ
         eddg==
X-Gm-Message-State: APjAAAU1lzq+YAx9jqqtMSV+MQklmbzmEHGrzDquV1yCKAzrVg/adx5d
	NAjKyvpzJuKdT8ePI9GQSH9xswXLzDKwD767Hsp+cE89cU4=
X-Google-Smtp-Source: APXvYqzMjD7vCEAN+6r6G5C5VT0eETLEptXIDGTsBWlNIqOx5cIjshS3ysnC6uSzIVEhh8acpSt4Ta+uzc0Ox+7l8Fc=
X-Received: by 2002:ab0:20a:: with SMTP id 10mr23449159uas.19.1576505746048;
 Mon, 16 Dec 2019 06:15:46 -0800 (PST)
MIME-Version: 1.0
From: daniel gaspar <danielvazgaspar@gmail.com>
Date: Mon, 16 Dec 2019 14:15:35 +0000
Message-ID: <CALSkbjpG+QgQg4LRS5hMG-oZZ3uxTb4xeg8MCyc0dHED9jRLPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000facd100599d2d810"
Subject: [oss-security] [CVE-2019-12414] Apache Incubator Superset medata data leak vulnerability

--000000000000facd100599d2d810
Content-Type: text/plain; charset="UTF-8"

Severity: Low

Vendor:
The Apache Software Foundation

Product:
Apache Incubator Superset

Versions Affected:
Superset < 0.32

Description:
A user can view database names that he has no access to on a dropdown list
in SQLLab

Mitigation:
Superset users with version prior to 0.32 should upgrade to 0.32 or higher

--000000000000facd100599d2d810--
