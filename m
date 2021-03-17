X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["694" "Wednesday" "17" "March" "2021" "19:45:59" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "24" "[oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       rkeshri@redh Mar 17   24/694   " thread-indent "\"[oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3653 invoked by uid 550); 17 Mar 2021 14:58:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18010 invoked from network); 17 Mar 2021 14:16:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615990575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=JiEEBe/KLETD0c+Ey4jZTrq82u6pAqGu379gnkO7ANA=;
	b=DGedSC82IfvwD2rubfcMegJwGo4e5fKK7XHOvoUl16VDsw2DQQb7AzRfhM1yRRlZs9OFGA
	cNM8NNUXsxp0ggHkH3jN40980JRDGxvXrRjJIvpfq4BwwtVVBI1xsY4KHXCAp5JP6ANjrR
	c7/FnLFr0eMlmAwnmnIfI7+LCMhqI1Q=
X-MC-Unique: Jc2e1pKZOa2o1JECqzsYPg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JiEEBe/KLETD0c+Ey4jZTrq82u6pAqGu379gnkO7ANA=;
        b=svhWE4Vaeiwc6ECcRzhTtwv1QmNih1sWxzYkwBRfJKn9Q29GO//rPpGOyI9JpMr9K9
         01OIw+25PkZD7viaZw2nTbRwZ131Stam7PBFM/K6YhyMKrRahlRcjNl34Jw5HKSPlssT
         1o4Mg7ETYANTLd8Em228x4yRycOJPv9ZJCKDndN8FERhStFDfYulZ5kuoBC29D4twBuE
         IgrZzmXTjET3cd8ea7rCnpsxWQt8bMKq0pBoUOW0Yhf3fIwXoqXCrHaWAl0fqzu2XzqB
         XUGq7BXAZXIzZu2zSi9W7H+a/JBxE3qzsbVvIEkbSqhsFmHm/JtAzjj8pYhLtYaaj65m
         10SA==
X-Gm-Message-State: AOAM5307scywc5WkNtVVhVN704gdeI/87nqSzgh5sjL8vDEZ82BH/XUl
	IX8mii1NtXnul1Zj2CsH599r3097UCdXkr9/eHTh1dlo0VDmNHmNVIawkWzzCS+UY79tR0yfXWa
	TcmOw/T5458Xl1NHNLUTx3iXl3/QFHteO2p48PvQIDXtS
X-Received: by 2002:a19:48:: with SMTP id 69mr2516974lfa.94.1615990570883;
        Wed, 17 Mar 2021 07:16:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZ0zvik/3AePXoStBKiey3UUvKhosnJzHV5oGse4CubTkisngy786Ju4qiDPiWn+SG8qwkq2VK521mifsGacQ=
X-Received: by 2002:a19:48:: with SMTP id 69mr2516971lfa.94.1615990570706;
 Wed, 17 Mar 2021 07:16:10 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Wed, 17 Mar 2021 19:45:59 +0530
Message-ID: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000ed819705bdbc1f0a"
Subject: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization
 in flush_to_ldisc() can lead to DoS

--000000000000ed819705bdbc1f0a
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A denial of service vulnerability was found in n_tty_receive_char_special
in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
with a normal user privilege could delay the loop (due to a changing
ldata->read_head, and a missing sanity check) and cause a threat to the
system availability.

'CVE-2021-20219' was assigned by Red Hat.

Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--000000000000ed819705bdbc1f0a--

