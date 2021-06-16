X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["342" "Tuesday" "15" "June" "2021" "22:50:07" "-0400" "Robert Middleton" "rmiddleton@apache.org" nil "15" "[oss-security] CVE-2020-9493: Apache Chainsaw: Java deserialization in Chainsaw" nil nil nil "6" nil nil (number mark "U       rmiddleton@a Jun 15   15/342   " thread-indent "\"[oss-security] CVE-2020-9493: Apache Chainsaw: Java deserialization in Chainsaw\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-9493: Apache Chainsaw: Java deserialization in Chainsaw" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15416 invoked by uid 550); 16 Jun 2021 04:47:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1573 invoked from network); 16 Jun 2021 02:50:43 -0000
X-Gm-Message-State: AOAM530njd4BnPvEZ0rWCXD1qwYzomGbNc01BgHBX9rcAIFjAKBPZ7hn
	O28sh9oKPb6WcJVGLDXlnu53Y/Wn3gckqT+4NqY=
X-Google-Smtp-Source: ABdhPJzw7Vt3azYfuDXcsBv7Iq6JJ2IgtGaVfwRngdYpy8Y55cgYpAZIXSNiOFmS0ToIEGd/edUo6Wnd9jlG/AIzfrE=
X-Received: by 2002:a25:2d6c:: with SMTP id s44mr2871411ybe.126.1623811817566;
 Tue, 15 Jun 2021 19:50:17 -0700 (PDT)
MIME-Version: 1.0
From: Robert Middleton <rmiddleton@apache.org>
Date: Tue, 15 Jun 2021 22:50:07 -0400
X-Gmail-Original-Message-ID: <CAKpcJVYTkZzBaWmt_fLqLw4BNmXuXGzCSvLe9YOB-4sew8w_sQ@mail.gmail.com>
Message-ID: <CAKpcJVYTkZzBaWmt_fLqLw4BNmXuXGzCSvLe9YOB-4sew8w_sQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-9493: Apache Chainsaw: Java deserialization in Chainsaw

Reply-to: general@logging.apache.org

Description:

A deserialization flaw was found in Apache Chainsaw versions prior to
2.1.0 which could lead to malicious code execution.

Mitigation:

Don't configure Chainsaw to read serialized log events.  Use a
different receiver, such as XMLSocketReceiver

Credit:

This issue was reported by @kingkk
