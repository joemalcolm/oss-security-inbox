X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1313" "Tuesday" "12" "July" "2016" "18:20:18" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSqW32_ii65vffOokARjT2efpK=iSfDuqVK62ay0+jB3w@mail.gmail.com>" "39" "[oss-security] Re: CVE-2016-5389: linux kernel - challange ack information leak." "^Date:" nil nil "7" "2016071208:20:18" "[oss-security] Re: CVE-2016-5389: linux kernel - challange ack information leak." (number mark "        wmealing@red Jul 12   39/1313  " thread-indent "\"[oss-security] Re: CVE-2016-5389: linux kernel - challange ack information leak.\"\n") "<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31826 invoked by uid 550); 12 Jul 2016 08:20:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31808 invoked from network); 12 Jul 2016 08:20:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=vJxSTbNByAYCxv0aCrj1mljhLK5y+djMoxtHbHlBo6M=;
        b=D4mxf8MUPuIoKiKBhT8pNNWuv4493hY3yI4ttlzxRYer+ulnf0IyVarMQBF/icXQPi
         pS5J4ZnJqsDpn4V4g40rJ9PTDgztcB/APszgD5t2U2IpLR6j8bgI2WzYon1lBHtO3a6o
         fEEC8pNf0I8AbZ4BfBHMxSBBWykvtKb60Dyjro3g0MdjWaXCkp3QMiQ/MtkXVbZK+b5/
         VzuQS/MjzJQ8AwpTS7K4kzGzcegBeHffe7Ir6iMktLnBMLTzejQn8Bk1QMQ87HLRiodz
         NXvhqzk0CVajGkS8t2VmZcQMtKk8m9iXbBu4d+VlvoGOmk1CKm0/6zGkzS9kTJHm96ja
         DMvg==
X-Gm-Message-State: ALyK8tLWaxI9VM8SOcLuUi88gvy9ghGRN8URdReWIpHJ6QUub0prqKZ5LrgVZBUTLPyDIKTh7vvVL+s6KnuZszkx
X-Received: by 10.36.149.69 with SMTP id m66mr1448614itd.85.1468311619155;
 Tue, 12 Jul 2016 01:20:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
Message-ID: <CALJHwhSqW32_ii65vffOokARjT2efpK=iSfDuqVK62ay0+jB3w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 12 Jul 2016 18:20:18 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2016-5389: linux kernel - challange ack information leak.
To: oss-security@lists.openwall.com

I've since been contacted by the researcher and have been told that
CVE-2016-5696 was reserved by mitre for this issue.  I'd like to
withdraw the usage of this CVE number and use CVE-2016-5696.

Sorry for any confusion.

Wade Mealing

On Tue, Jul 12, 2016 at 2:33 PM, Wade Mealing <wmealing@redhat.com> wrote:
> Gday,
>
> Red Hat Product Security has been made aware of an important issue in
> the Linux kernel's implementation of challenge ACKS as specified in
> RFC 5961. An attacker which knows a connections client IP, server IP
> and server port can abuse the challenge ACK mechanism
> to determine the accuracy of a normally 'blind' attack on the client or server.
>
> Successful exploitation of this flaw could allow a remote attacker to
> inject or control a TCP stream contents in a connection between a
> Linux device and its connected client/server.
>
> * This does NOT mean that cryptographic information is exposed.
> * This is not a Man in the Middle (MITM) attack.
>
> This was reported to Red Hat by Yue Cao, part of the Cyber Security
> Group in the University of California
>
> Thanks,
>
> Wade Mealing
> Red Hat Product Security Team
>
> Red Hat Bugzilla:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1354708
>
> Patch:
>
> https://www.mail-archive.com/netdev@vger.kernel.org/msg118677.html
