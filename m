X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["846" "Friday" "10" "September" "2021" "13:37:15" "-0700" "lewis john mcgibbney" "lewismc@apache.org" nil "28" "[oss-security] CVE-2021-38555: An XML external entity (XXE) injection vulnerability exists in Apache Any23 StreamUtils.java" nil nil nil "9" nil nil (number mark "U       lewismc@apac Sep 10   28/846   " thread-indent "\"[oss-security] CVE-2021-38555: An XML external entity (XXE) injection vulnerability exists in Apache Any23 StreamUtils.java\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38555: An XML external entity (XXE) injection vulnerability exists in Apache Any23 StreamUtils.java" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9233 invoked by uid 550); 11 Sep 2021 07:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30067 invoked from network); 10 Sep 2021 20:37:38 -0000
X-Gm-Message-State: AOAM532lRgTnoJdmJ0TQ1Le2yHo08WQFtQ8sbBtPGnr/jOuux6t4prel
	tg2DGij6DkJrhJPSmIPaXoS1VIZZEzmLfqbYamA=
X-Google-Smtp-Source: ABdhPJzxKHdOozZFAaMrjhYZALU/O2SAswRDGKDUdamhUyGEcWHKY3QYRRLyIBYZRaxqwC8Q+2P5hewMUPEBAAhEvLc=
X-Received: by 2002:a17:906:2505:: with SMTP id i5mr11460060ejb.450.1631306245836;
 Fri, 10 Sep 2021 13:37:25 -0700 (PDT)
MIME-Version: 1.0
From: lewis john mcgibbney <lewismc@apache.org>
Date: Fri, 10 Sep 2021 13:37:15 -0700
X-Gmail-Original-Message-ID: <CAGaRif2A+2iWiYZsKSjYzHu+0_A0SxMNWr7ivdiqw7-iK7qA0g@mail.gmail.com>
Message-ID: <CAGaRif2A+2iWiYZsKSjYzHu+0_A0SxMNWr7ivdiqw7-iK7qA0g@mail.gmail.com>
To: user@any23.apache.org, dev@any23.apache.org, 
	oss-security@lists.openwall.com, w3c@apache.org
Content-Type: multipart/alternative; boundary="0000000000004d954005cbaa15c5"
Subject: [oss-security] CVE-2021-38555: An XML external entity (XXE) injection vulnerability
 exists in Apache Any23 StreamUtils.java

--0000000000004d954005cbaa15c5
Content-Type: text/plain; charset="UTF-8"

Severity: critical

Description:

An XML external entity (XXE) injection vulnerability was discovered in
the Any23 StreamUtils.java file and is known to affect Any23 versions
< 2.5. XML external entity injection (also known as XXE) is a web
security vulnerability that allows an attacker to interfere with an
application's processing of XML data. It often allows an attacker to
view files on the application server filesystem, and to interact with
any back-end or external systems that the application itself can
access.

Credit:

The Apache Any23 Project Management Committee would like to thank
Zhuxuan Wu for reporting the security vulnerability.



-- 
http://home.apache.org/~lewismc/
http://people.apache.org/keys/committer/lewismc

--0000000000004d954005cbaa15c5--
