Received: (qmail 21897 invoked by uid 550); 28 Jun 2022 19:42:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10001 invoked from network); 28 Jun 2022 19:32:25 -0000
X-Gm-Message-State: AJIora9Nb2kNXMCehrhXAFpN2Z1wJm2phnauNh19FA10ZKYDpgS2puYk
	H1W5MjHLQ3Wr1RSTe4IernA7TeuvGXhA3YYy+GM=
X-Google-Smtp-Source: AGRyM1twzPyYB+gKLQihZKXS8J3wICPFYOHQBupcuCTORuiJw9LTGHev13ga+AzXpU6Nosrl30N294B51PwNUCht0/4=
X-Received: by 2002:aa7:c38d:0:b0:435:9257:99a5 with SMTP id
 k13-20020aa7c38d000000b00435925799a5mr25259796edq.204.1656444732400; Tue, 28
 Jun 2022 12:32:12 -0700 (PDT)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Tue, 28 Jun 2022 15:32:01 -0400
X-Gmail-Original-Message-ID: <CAH9eYVqfx9RvVpg34arMu4unNkmzwAbtL2umS+41atCZAVyctw@mail.gmail.com>
Message-ID: <CAH9eYVqfx9RvVpg34arMu4unNkmzwAbtL2umS+41atCZAVyctw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000dd6c8505e287173f"
Subject: [oss-security] CVE-2022-32532: Apache Shiro: Authentication Bypass Vulnerability

--000000000000dd6c8505e287173f
Content-Type: text/plain; charset="UTF-8"

Description:

Apache Shiro before 1.9.1, A RegexRequestMatcher can be misconfigured
to be bypassed on some servlet containers. Applications using
RegExPatternMatcher with `.` in the regular expression are possibly
vulnerable to an authorization bypass.

Credit:

Apache Shiro would like the thank 4ra1n for reporting this issue.

--000000000000dd6c8505e287173f--
