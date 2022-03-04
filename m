X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["920" "Friday" "4" "March" "2022" "14:20:36" "-0800" "lewis john mcgibbney" "lewismc@apache.org" nil "26" "[oss-security] CVE-2022-25312: An XML external entity (XXE) injection vulnerability exists in the Apache Any23 RDFa XSLTStylesheet extractor" nil nil nil "3" nil nil (number mark "U       lewismc@apac Mar  4   26/920   " thread-indent "\"[oss-security] CVE-2022-25312: An XML external entity (XXE) injection vulnerability exists in the Apache Any23 RDFa XSLTStylesheet extractor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-25312: An XML external entity (XXE) injection vulnerability exists in the Apache Any23 RDFa XSLTStylesheet extractor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19653 invoked by uid 550); 4 Mar 2022 23:52:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19726 invoked from network); 4 Mar 2022 22:21:19 -0000
X-Gm-Message-State: AOAM532eHr24GebhCWtV8XvBBZ0XR2o1hoI9u6mF6ig4bq3iVQp7eQUV
	yA5YYa90KpMuXzsdfoUZIwtDrbP7zCZ/jgkjvjU=
X-Google-Smtp-Source: ABdhPJz0FODWHO7v7qhVNnq9b3AXUzI4jD7sJHuY1+yeS8Yg55V8HhWI5c/20oXTGEsUZm+vma0hIBt+WDErwNEyHxo=
X-Received: by 2002:a17:902:bc83:b0:14f:d9b7:ab3 with SMTP id
 bb3-20020a170902bc8300b0014fd9b70ab3mr463991plb.23.1646432447137; Fri, 04 Mar
 2022 14:20:47 -0800 (PST)
MIME-Version: 1.0
From: lewis john mcgibbney <lewismc@apache.org>
Date: Fri, 4 Mar 2022 14:20:36 -0800
X-Gmail-Original-Message-ID: <CAGaRif0TSpR9GYCMd3O5aFhA=N=qatnpeeq+0xL2jNOKp_0+KA@mail.gmail.com>
Message-ID: <CAGaRif0TSpR9GYCMd3O5aFhA=N=qatnpeeq+0xL2jNOKp_0+KA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-25312: An XML external entity (XXE) injection vulnerability
 exists in the Apache Any23 RDFa XSLTStylesheet extractor

Description:

An XML external entity (XXE) injection vulnerability was discovered in
the Any23 RDFa XSLTStylesheet extractor and is known to affect Any23
versions < 2.7. XML external entity injection (also known as XXE) is a
web security vulnerability that allows an attacker to interfere with
an application's processing of XML data. It often allows an attacker
to view files on the application server filesystem, and to interact
with any back-end or external systems that the application itself can
access.

Resolution:

This issue is fixed in Apache Any23 2.7 which can be downloaded from
https://any23.apache.org/download.html. We strongly encourage all
Any23 users to upgrade to Apache Any23 2.7.

Credit:

The Apache Any23 Project Management Committee would like to thank Lion
Tree a.k.a liontree0110 for reporting this issue.


-- 
http://home.apache.org/~lewismc/
http://people.apache.org/keys/committer/lewismc
