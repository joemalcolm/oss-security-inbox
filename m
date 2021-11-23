X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["548" "Tuesday" "23" "November" "2021" "12:27:24" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo.santos@gmail.com" nil "21" "[oss-security] [CVE-2021-44140] Apache JSPWiki Arbitrary file deletion on logout" nil nil nil "11" nil nil (number mark "U       juanpablo.sa Nov 23   21/548   " thread-indent "\"[oss-security] [CVE-2021-44140] Apache JSPWiki Arbitrary file deletion on logout\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-44140] Apache JSPWiki Arbitrary file deletion on logout" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18071 invoked by uid 550); 23 Nov 2021 11:29:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9679 invoked from network); 23 Nov 2021 11:27:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=qOMSspuHb3sfsfQ8RYQ3l2zNYL8vAF4zTpVIVQxdp9o=;
        b=eq3wLhhu1UMwkd5mL5ns9mVXyO1Ockr4B7pIypMGGooVAiPXoIQcsybfLKjGZgYZrb
         IABLFcKppAH51QLYGs28BXbJiDQ7BY72zOsUW8l0XIvGUvOeE/LzwzjlFvD+hvTxuSZ5
         ZTgvvKTDUyPVS4jOFox3OSCDlTOGL5w81EdaBrR2V403qR5yPLq/ZOQ5Ti7XMEBEJ43v
         TDnGoLfKfJI1bSJNBTLk517bgMLFn1m15eknUMADwr3Gwirm7pyiBQkmxZfpvgl2+8Uo
         8FADLNafpukeU9GrG4DpnDNcOMDv+oBFrEnB2g5mXrqsdEue9+7wqOzEdUX6qqDUFOHs
         cxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qOMSspuHb3sfsfQ8RYQ3l2zNYL8vAF4zTpVIVQxdp9o=;
        b=uWLhexk0ovx9xfSjNSGzJsBOt+qKAmSPfcoGdI46/sEFBs1R2Tlzj3l3EJwatS6rZ+
         k1R5f36m+q7lYQOsNBhjxb+kHZy3Qcw7SJtLtuA5TVGLW75ZZEXIu3M87Z3CCbQhlcxw
         JRz//oTbO8NW6WVVcVcgMi7waDzCo6H5GXqwQH+4uqo0eIw+g04/33PbbrCn46zdfqvt
         wISc8uJ0W3JnDCarIS3FymGH8sAj0CCeCCGBXz+qtNeiW4q2JmA0WWZIFnXP4lLqJDEU
         f99UisbFxYZcC9ulQOElYqYmxyuBzOVWpaG32vktm557Q+hoBxtL/U+PYvQurBr6/dtM
         4zdw==
X-Gm-Message-State: AOAM530s8inRIqAJwDiW8hpH4KvJQhs29j3/B4QNtlAmKH5yEBeMEov7
	1vlxPRyWF1B3lM4cN9mwYEU9FqiZ1z7DtqS8k5w=
X-Google-Smtp-Source: ABdhPJxypnTrI5V+/1RYXBdLll/NQLmWpr5eL4EdrZbdRheT/6cKoCngnlpVnwTAKJl7RUGWdj6yRki2pzG4wcq8G2E=
X-Received: by 2002:a05:6602:2c0d:: with SMTP id w13mr4796375iov.79.1637666856792;
 Tue, 23 Nov 2021 03:27:36 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo.santos@gmail.com>
Date: Tue, 23 Nov 2021 12:27:24 +0100
Message-ID: <CAMufup5fSgM0DomnAeiQJYx9rO5yyGRJDiHKvs2cqs0VztZLZQ@mail.gmail.com>
To: announce@apache.org, dev@jspwiki.apache.org, user@jspwiki.apache.org, 
	Apache Security Team <security@apache.org>, bo yu <forhaby0@gmail.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2021-44140] Apache JSPWiki Arbitrary file deletion on logout

Severity
Critical

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M8

Description
Remote attackers may delete arbitrary files in a system hosting a
JSPWiki instance by using a carefuly crafted http request on logout,
given that those files are reachable to the user running the JSPWiki
instance.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0 or later.

Credit
This issue was discovered by haby0 (forhaby0@gmail.com) from Duxiaoman
Financial Security Team, who also proposed the fix for this issue.
