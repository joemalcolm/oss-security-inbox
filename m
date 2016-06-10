X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Friday" "10" "June" "2016" "09:23:50" "+0200" "Reed Loden" "reed@reedloden.com" "<CALPTtNXwk-si9KX9c8dMY2uyKAFdc6NLGPUxrVgXMSCDGQU0xw@mail.gmail.com>" "20" "Re: [oss-security] Ruby gem rack-mini-profiler CVE-2016-4442" nil nil nil "6" "2016061007:23:50" "[oss-security] Ruby gem rack-mini-profiler CVE-2016-4442" (number mark "U       reed@reedlod Jun 10   20/508   " thread-indent "\"Re: [oss-security] Ruby gem rack-mini-profiler CVE-2016-4442\"\n") "<CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>" ("<CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10011 invoked by uid 550); 10 Jun 2016 07:24:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9993 invoked from network); 10 Jun 2016 07:24:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DKpD3BT3+vwOJv9QflImx/tg5C7FiCoWCx2OjkJoETQ=;
        b=Es/pd3GWE1J8/rDGRkOetJFM8/ZCo5cquB3Q0gwgqifN6qkDvLy3k0vgFhYOzlowOl
         pqqtEdZpv5NR/8VBReFK92LPnQbpctd5O8S5RLSnoVUK8wFrPNWXJmD1J5o4DiOeOp1Q
         w6nQKFADn7NFKIgjWqaf6DqHX9yN9Ijj1/Njw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DKpD3BT3+vwOJv9QflImx/tg5C7FiCoWCx2OjkJoETQ=;
        b=QHXpoMJOBp2ad8zzjZx00ZlyhuGUzNOvaF0IfWFndax+dBaaRLjl7Hr9whLZVJS4ij
         wWCHTJm8KFz7q9OvCV7AmXiJVZwh9vNnyZzGVxfQPWnVu4+Z9XkfkeDn310n07oyasiU
         +X+4uhZPEQBcB8SwNjjZU7nvXb9nvWT3b01h7XUylwCweha42Pq+QsxDsbKCQ6TBWgNl
         xL7TvJsJvwz4YSsym5IrUv40C5VavRjqsXyewxgMhFnN2lWdjuqaXBy6gWT6WZmMQkWa
         IllD4eh4K8M7FlQmq9eBnuGq8GQOZ8usnz+CxBBRuc9JbeugkUzEL0ng3VOfHa8kxOP1
         wKkg==
X-Gm-Message-State: ALyK8tJmNSbM9iVfcY/lOH2LXGquvg3DTmp52UDvCpkt9izm/ROIJKVy/1yZzlFqcVpKLI1lMRGgCwTdz/3zGjXL
X-Received: by 10.46.32.85 with SMTP id g82mr171210ljg.51.1465543449795; Fri,
 10 Jun 2016 00:24:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>
References: <CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>
From: Reed Loden <reed@reedloden.com>
Date: Fri, 10 Jun 2016 09:23:50 +0200
Message-ID: <CALPTtNXwk-si9KX9c8dMY2uyKAFdc6NLGPUxrVgXMSCDGQU0xw@mail.gmail.com>
To: Sam Saffron <sam.saffron@gmail.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142b20cba81280534e76c95
Subject: Re: [oss-security] Ruby gem rack-mini-profiler CVE-2016-4442

--001a1142b20cba81280534e76c95
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 10, 2016 at 8:10 AM, Sam Saffron <sam.saffron@gmail.com> wrote:

>
> I am not sure how to go about announcing this CVE, where else to I
> need to post this?
>

This is actually somewhat documented, believe it or not!

http://guides.rubygems.org/security/#reporting-security-vulnerabilities

Yay for documentation! Though, boo for it needing to be updated since OSVDB
is gone now. :(

~reed

--001a1142b20cba81280534e76c95--
