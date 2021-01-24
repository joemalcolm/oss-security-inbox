X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Sunday" "24" "January" "2021" "13:37:50" "-0800" "lewis john mcgibbney" "lewismc@apache.org" "<CAGaRif2XUBMb+AqvioCesPjRi9p_cQzUJHOaDz2aChr1m7H1DA@mail.gmail.com>" "29" "[oss-security] CVE-2021-23901: An XML external entity (XXE) injection vulnerability exists in the Nutch DmozParser" nil nil nil "1" "2021012421:37:50" "[oss-security] CVE-2021-23901: An XML external entity (XXE) injection vulnerability exists in the Nutch DmozParser" (number mark "U       lewismc@apac Jan 24   29/891   " thread-indent "\"[oss-security] CVE-2021-23901: An XML external entity (XXE) injection vulnerability exists in the Nutch DmozParser\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-23901: An XML external entity (XXE) injection vulnerability exists in the Nutch DmozParser" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6029 invoked by uid 550); 24 Jan 2021 21:44:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3517 invoked from network); 24 Jan 2021 21:38:41 -0000
X-Gm-Message-State: AOAM5321vWJ+87MCIl+KhCrHtHmW8SXJbztF5lv6qGsKkVkLTUPS2qj+
	t1MIb2dEKXp+021t7vYVQtd7UTqtql/Cj6As+OE=
X-Google-Smtp-Source: ABdhPJzVTe3Qt49JxE9Lvq9MdvBASs1aaS3XwgnDjn8IBWc95lFJv8hciK/9ZHysIQDUjz4bh6JRzwhrT3QMLyPG1Y4=
X-Received: by 2002:aa7:c3c4:: with SMTP id l4mr1966484edr.255.1611524281364;
 Sun, 24 Jan 2021 13:38:01 -0800 (PST)
MIME-Version: 1.0
From: lewis john mcgibbney <lewismc@apache.org>
Date: Sun, 24 Jan 2021 13:37:50 -0800
X-Gmail-Original-Message-ID: <CAGaRif2XUBMb+AqvioCesPjRi9p_cQzUJHOaDz2aChr1m7H1DA@mail.gmail.com>
Message-ID: <CAGaRif2XUBMb+AqvioCesPjRi9p_cQzUJHOaDz2aChr1m7H1DA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000056737305b9ac3c89"
Subject: [oss-security] CVE-2021-23901: An XML external entity (XXE) injection vulnerability
 exists in the Nutch DmozParser

--00000000000056737305b9ac3c89
Content-Type: text/plain; charset="UTF-8"

Description:

An XML external entity (XXE) injection vulnerability was discovered in the
Nutch DmozParser and is known to affect Nutch versions < 1.18. XML external
entity injection (also known as XXE) is a web security vulnerability that
allows an attacker to interfere with an application's processing of XML
data. It often allows an attacker to view files on the application server
filesystem, and to interact with any back-end or external systems that the
application itself can access.


This issue is being tracked as NUTCH-2841

Credit:

The Apache Nutch Project Management Committee would like to thank Martin
Heyden for reporting this issue to the Apache Security Team. We are
indebted.



--
http://home.apache.org/~lewismc/
http://people.apache.org/keys/committer/lewismc

--00000000000056737305b9ac3c89--
