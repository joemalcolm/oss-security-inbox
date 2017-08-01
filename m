X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1135" "Tuesday" "1" "August" "2017" "13:40:45" "-0700" "Sean Cassidy" "sean@defensestorm.com" "<CABOeKPFALNQqQvDOdAuCc6HNC7eEoshjneyiu-0euhThiuv-8g@mail.gmail.com>" "30" "Re: [oss-security] Syslog forwarding with IP spoofing" nil nil nil "8" "2017080120:40:45" "[oss-security] Syslog forwarding with IP spoofing" (number mark "U       sean@defense Aug  1   30/1135  " thread-indent "\"Re: [oss-security] Syslog forwarding with IP spoofing\"\n") "<1501597646.744346.23695.25373@mail.rambler.ru>" ("<1501597640.407871.9894.30815@mail.rambler.ru>" "<1501597646.744346.23695.25373@mail.rambler.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28154 invoked by uid 550); 1 Aug 2017 20:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13474 invoked from network); 1 Aug 2017 20:41:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=defensestorm-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=d8/ShoLISIY6VGzIDSGN7EJhO259QH+eS8fVHkI61ec=;
        b=M1z8SHsCEf0ecqp8zcx91zhXfh3ZpJkLvncpsapK6r/8r5J919vtBPb2QhVUA7UA2e
         SY36BiHYMFjUCbEOgeWvsE0ZjmcPTW5biUr7KkZTnK7Dq/jD/sGs26DTIYNWf6Xk0MO/
         CGII6veDjOjCwzA9IWOPqefuoOykswuqUsanVLk4NL9C48P6EkWopZ9qWt6QhpYpvo3N
         FwTA0eVe2TnHL7rP9JLLvJ5KciLVPZbegVsYP1lIfpkzqrRa4689KR9LeYdqVn+GzcpE
         x/CPW34L3qkwjCTDPOrxegxjxY/SVJyQU4xPV7fOZ94eEGGgjH3lH1j8VDFOOJisfABD
         8KBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=d8/ShoLISIY6VGzIDSGN7EJhO259QH+eS8fVHkI61ec=;
        b=ZOLMajRJbeLqJWG1TkqXJFTwfLhfrfrnEIKFhvuMQ1B6eC/cCtjmMzOgNnkzKKAJGJ
         sxbnoNlsM7HNjW1gn9mY+ktmivfAX0zfC47PBScHyCQLCNlZLjhZUihHaB9UL+EXsC5e
         R0TKCF+IPxd27mjw01TDih8MZ2sDLtsFxdUxdkb8UjSRJOOw2dtU8nqunVzZvCkBidDP
         oMS95u4va7nbBJp0mO9tdGesiUI4zFR8heqYzkIfQt7g94e77O3W0V11mwA4ogEsHcm7
         8AMkGirwDn2hgO9hY/JVsQ4nvzXe/EBz+l0iwhMkojdOswSbFWCBsiwXeDQMmz5S2bf1
         Q19Q==
X-Gm-Message-State: AIVw113yZuDy+VMJSOa3xxAVNk4FvVRZ1A94iwjYU+XvY1p0KRfa7jqR
	nWKVMtm9eOmy60aGhwGthYMSPWAqdiLaQu3p8A==
X-Received: by 10.25.99.145 with SMTP id v17mr6990426lfi.209.1501620075822;
 Tue, 01 Aug 2017 13:41:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1501597646.744346.23695.25373@mail.rambler.ru>
References: <1501597640.407871.9894.30815@mail.rambler.ru> <1501597646.744346.23695.25373@mail.rambler.ru>
From: Sean Cassidy <sean@defensestorm.com>
Date: Tue, 1 Aug 2017 13:40:45 -0700
Message-ID: <CABOeKPFALNQqQvDOdAuCc6HNC7eEoshjneyiu-0euhThiuv-8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Syslog forwarding with IP spoofing

On Tue, Aug 1, 2017 at 7:27 AM, =D0=90=D0=BB=D0=B5=D0=BA=D1=81=D0=B0=D0=BD=
=D0=B4=D1=80 =D0=9D=D0=BE=D1=81=D0=B0=D1=80=D0=B5=D0=B2 <nosarev-ay@rambler=
.ru> wrote:
>
> Good day!
>
>
> I need to recive syslog messages, filter them and send them forward to th=
e SIEM.
>
> Also HOST field is not represented in syslog, so i need to spoof IP of fo=
rwarding
> packets to bind messages recived by SIEM to it's original source IP.
>
> If i will try to add some marks to syslog message, I will need to override
> parsers for each syslog source type, so it seems like abad idea.
>
> Is there any open source tool for that task?

I would use syslog-ng for this. It can rewrite syslog messages
(including adding/modifying the HOST field) and then do nearly
anything with the result. You can have it call a program, put it on an
AMQP queue, write it to disk, or whatever, really.

https://www.balabit.com/documents/syslog-ng-ose-latest-guides/en/syslog-ng-=
ose-guide-admin/html/chapter-manipulating-messages.html
https://www.balabit.com/documents/syslog-ng-ose-latest-guides/en/syslog-ng-=
ose-guide-admin/html/chapter-destinations.html

Sean
