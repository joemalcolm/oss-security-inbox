X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["824" "Friday" "8" "October" "2021" "23:59:03" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" nil "23" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       ylavic.dev@g Oct  8   23/824   " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24329 invoked by uid 550); 8 Oct 2021 22:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18403 invoked from network); 8 Oct 2021 21:59:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=J9GLY8KQ9s4w8UtweTutckRvNRWe0QM9IiqIh+fobbA=;
        b=L9Qu8oeZC+lbAUwdjFdSWRradWn2GKdJG9j8ZABtNyh3TaviOsqd7I0Ph6Em2OKEvW
         xrkpj6VE/2nFzA6kmdxEH3MCWDaBn/l0svFSzpyTYQOZ0WZnJc3eA9Z5WrG42MBILeIw
         vk4GynIWijq89YbzGb7UnIjHJKQe/YnqQ04L/l74BgYKg5+z7nvJ6MdUwE8bpX27JCzp
         deI4W9eLqjkvltG2gM3jV+u7y3n0dVIkluGTwWIlAgwnSwTqh+/ScotcXXypHDAiPjHJ
         s95Pn9CQPP25CLUBP575zAr89TtROjn9jEwtNe8p6dfkWQ9NSRcQy94GHNAxU0hf17rK
         BfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=J9GLY8KQ9s4w8UtweTutckRvNRWe0QM9IiqIh+fobbA=;
        b=EeEVD7b671Fqp3ZI1OD62QQwR6mY72ehHSZRm8AZqzMLoh/mlcpWdCSxDnmnRZyXyp
         qJ31Wlx/cG7wIV0Guzpf5mw2BZtTbC1pjGXRu8ltvipiJ80tnRV9Pj3oCN640OEuz+61
         EDviHT2jmdAZjfiNx1sMbMHQTmO74hcNpdoNtwWA8yBIQpM9H9tXP92z6jAR1OQa6JO1
         LL8d2xJakIcNA25O1TxVcSH6lDU8hioIRzUhB9DcHC/KgP3O5reWYXGwIHrGcSc4Xqln
         hEKJbfBcuo5JokYohNTbGGc4lKr5p8lXIVLsXGntuHNnXg7E/OwnjWUYVV4dGm3I6fcm
         kTNg==
X-Gm-Message-State: AOAM53394f2Rw+8IY8spmjWugtrdOwBIG6V4vtw3PyBE1mCg8Wuxtbll
	CCg3ui4RLtqGtxXk9AdBGjf/U+4XeXwcbF4BAfskNse3
X-Google-Smtp-Source: ABdhPJzKG00cxfy7DaXN+BD8PdYXjEDK01DEE+CSoqR9obHQM3UrqnWhqKdxGyjz7BEwgQs8hTDP6cbrfhgLP+7QcpY=
X-Received: by 2002:a17:906:7632:: with SMTP id c18mr7642363ejn.317.1633730354423;
 Fri, 08 Oct 2021 14:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
 <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com> <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
 <20211008210821.GA2660@openwall.com> <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
 <20211008214414.GA3004@openwall.com>
In-Reply-To: <20211008214414.GA3004@openwall.com>
From: Yann Ylavic <ylavic.dev@gmail.com>
Date: Fri, 8 Oct 2021 23:59:03 +0200
Message-ID: <CAKQ1sVP9YFXTvqqfHDSpGDv=552iL48xdDtQyqV7-MAVg4jWCA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)

On Fri, Oct 8, 2021 at 11:46 PM Solar Designer <solar@openwall.com> wrote:
>
> On Fri, Oct 08, 2021 at 11:27:37PM +0200, Yann Ylavic wrote:
> > For completeness I'll add this tweet/blog from Stefan (OP) about the
> > vulnerability and the fixes in httpd:
> > https://twitter.com/icing/status/1446504661448593408
>
> Thanks, but you just did that again...  For completeness, let's have the
> actual content on the list, not only links to content.
>
> That tweet above refers to "Apache httpd 2.4.50 post mortem" at:
>
> https://github.com/icing/blog/blob/main/httpd-2.4.50.md
>
> I'm attaching the httpd-2.4.50.md file above to this message.
>
> This way, historians will be able to make full sense of the thread in
> here even after Twitter and GitHub are gone. ;-)

Noted, thanks for correcting me (again).

Regards;
Yann.
