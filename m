X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["856" "Wednesday" "18" "November" "2015" "10:14:52" "+0100" "Mathias Krause" "minipli@googlemail.com" "<CA+rthh9w8o_wSfMhYuveAE3RRc43FTZZAbzNMu9boq-_Db9Tbw@mail.gmail.com>" "23" "Re: [oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" nil nil nil "11" "2015111809:14:52" "[oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed" (number mark "U       minipli@goog Nov 18   23/856   " thread-indent "\"Re: [oss-security] CVE request - Linux kernel - Unix sockets use after free - peer_wait_queue prematurely freed\"\n") "<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>" ("<1352166228.7759646.1447813908682.JavaMail.zimbra@redhat.com>" "<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15517 invoked by uid 550); 18 Nov 2015 09:15:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15494 invoked from network); 18 Nov 2015 09:15:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iaSy+0INHr+rpBUntsUYRFHpotKOtEeQQ8Hd2/F1TBs=;
        b=ylkVCK2baDkqJ8ERvflHCv5CAAjfrP0qmFP32CpKPh+px9GCYOdaigAgm+V9O8ZdtA
         9+3IcdvhAlUv0JTV8AHRgxznQM13T2RsbICekQtZs3vOx1TpESA5a0IsSDj4f0grNTov
         5KI0MvlkLITK3ovgheX7smoYZOqhEk/T4ykqa99Yup3N5wcKtfX/RpsL3SmB5Ubw8Q3h
         5IaEjdWN0MboS/YLkNK+tFB5iznBlwQW/2mPqNTLQ6KfGoPsoddn2ULwc+/OGjcUo8xu
         8EPhU832AbSs8K66LVC+NitNjE1dmAIl3LKOuYinIbnZKm7A54wWApZEaY1+NgCjBvUp
         tHRg==
MIME-Version: 1.0
X-Received: by 10.13.230.11 with SMTP id p11mr373142ywe.213.1447838092586;
 Wed, 18 Nov 2015 01:14:52 -0800 (PST)
In-Reply-To: <225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>
References: <1352166228.7759646.1447813908682.JavaMail.zimbra@redhat.com>
	<225451526.7843702.1447833457143.JavaMail.zimbra@redhat.com>
Date: Wed, 18 Nov 2015 10:14:52 +0100
Message-ID: <CA+rthh9w8o_wSfMhYuveAE3RRc43FTZZAbzNMu9boq-_Db9Tbw@mail.gmail.com>
From: Mathias Krause <minipli@googlemail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE request - Linux kernel - Unix sockets use
 after free - peer_wait_queue prematurely freed

On 18 November 2015 at 08:57, Wade Mealing <wmealing@redhat.com> wrote:
> [...]
>
> Original discussion:
> - https://groups.google.com/forum/#!topic/syzkaller/3twDUI4Cpm8

Just for reference... There was an independent discovery earlier this
year, tracked in [1]. Even earlier discoveries ([2,3]) missed the
connection to AF_UNIX. [1] eventually lead to the incomplete patch [4]
and, after multiple non-public ineffective attempts on fixing the
issue, to the netdev posting [5]. That's where Jason and Rainer
started to post patches fixing the issue. However, none of the patches
has been applied yet.


Thanks,
Mathias

[1] https://forums.grsecurity.net/viewtopic.php?f=3&t=4150
[2] https://lkml.org/lkml/2014/5/15/532
[3] https://lkml.org/lkml/2013/10/14/424
[4] http://www.spinics.net/lists/netdev/msg318826.html
[5] https://lkml.org/lkml/2015/9/13/195
