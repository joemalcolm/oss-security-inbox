X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2890" "Monday" "1" "October" "2018" "08:50:10" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2XPoZgv-2Pah5DmKifD6s+sKJk9SoK28T_2j2zb+53RNw@mail.gmail.com>" "71" "Re: [oss-security] Django security release issued: 2.1.2" "^Cc:" nil nil "10" "2018100112:50:10" "[oss-security] Django security release issued: 2.1.2" (number mark "        alex.gaynor@ Oct  1   71/2890  " thread-indent "\"Re: [oss-security] Django security release issued: 2.1.2\"\n") "<20181001124547.GA6845@openwall.com>" ("<D256F892-8344-4273-A676-93D62E0CC984@gmail.com>" "<20181001124547.GA6845@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24103 invoked by uid 550); 1 Oct 2018 12:50:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24079 invoked from network); 1 Oct 2018 12:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WIPMc48T/qb+mKFPWuC0hNxhCdaSj2F3YYYodDVrhl4=;
        b=MMQc/8UzU/yn87f0AMSE8rICQGhnkpfaRA76V3XUI9/GVkSY2Iieopat9vAHyQ+Z0k
         IaxBTjSlx9qjTsyyESVPBkNe2AWBWWyCMNPkSKL/7lL3TFoKWFgZGSoyFn8sVNxP7mXV
         K9OyBTBlL2YEYA820R8gsVI6sx1uyzvo7DcjhyFPGAy/s9MMafZ1op6KhNcckJFqEwb6
         CHQWYpc4WdQfAFmQqxUadhB1cHZM91V316KR0SLF3f3Nv+ER8SgXmMGfYOCJu+SxG+hw
         zDJ3jtCW2qZ2blY4hn84XYRTkF50e+h0SwxEPEqIJE9cbzCPJiaQ9Ygj4Oo8vf+nWEYj
         y3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WIPMc48T/qb+mKFPWuC0hNxhCdaSj2F3YYYodDVrhl4=;
        b=V3dJRqBApTXNqW6YikqtDGyVa3AgbkXFyChAFotwLSpDpYD9MiAevsq8E8nA1ynUOe
         BCLyrBcgXlZ+X5M2IOuc6bqouI0nArobALmJ2opdZeMZJD4T5A4zQwP4cuuvO4wF7W6+
         rBjOK7Iry27n6IC8qFUc/ssYZDuz4OgzovjhcBe/Aksvix3HM3AJRUuNwwz3Wi3n9Ab+
         lbtZI6LWwy4ZBxHDTLs72q2sDMnoPx7JIpuEC44JQdbOs3EY2rjG6CSLTBBbqHy86v82
         EinCwepxFKY5kylFOogUjVuQV1K0x6MK7GdRh9Sol51T3+hcOI+yeaZ76mcE90+O9HUc
         i7sg==
X-Gm-Message-State: ABuFfogCf8r8W8GmOof/Dkyv99O35ajUUcbsxrpWLXL6a901YA63uFTA
	vAta7+b2fs2gmZgDxHbZX/BWuHtaOsT27uQPUlMTE5L7
X-Google-Smtp-Source: ACcGV638ixBqK8hYKLatJ3sWc2jr736RnVHb0onF2zPakZlpd28kVPcEH+BePnTUShepdGbTUYyVTEqxl0rVrw2u5Gs=
X-Received: by 2002:a2e:99d3:: with SMTP id l19-v6mr6010679ljj.132.1538398222440;
 Mon, 01 Oct 2018 05:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <D256F892-8344-4273-A676-93D62E0CC984@gmail.com> <20181001124547.GA6845@openwall.com>
In-Reply-To: <20181001124547.GA6845@openwall.com>
Message-ID: <CAFRnB2XPoZgv-2Pah5DmKifD6s+sKJk9SoK28T_2j2zb+53RNw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000925bcd05772a3f9e"
Cc: Carlton Gibson <carlton.gibson@gmail.com>
Date: Mon, 1 Oct 2018 08:50:10 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Django security release issued: 2.1.2
To: oss-security@lists.openwall.com

--000000000000925bcd05772a3f9e
Content-Type: text/plain; charset="UTF-8"

FWIW, Django's default new-project template includes a password validator
that denies the ability to use 20,000 common passwords:
https://github.com/django/django/blob/master/django/conf/project_template/project_name/settings.py-tpl#L87-L100

-- This will not be true for older projects with settings.py that upgraded
Django versions, but did explicitly set PASSWORD_VALIDATORS, so that's a
thing people should do :-)

Alex

On Mon, Oct 1, 2018 at 8:47 AM Solar Designer <solar@openwall.com> wrote:

> On Mon, Oct 01, 2018 at 11:33:47AM +0200, Carlton Gibson wrote:
> > Today the Django team issued 2.1.2 as part of our security
> > process. This release address a security issue, and we encourage all
> > users to upgrade as soon as possible:
> >
> > https://www.djangoproject.com/weblog/2018/oct/01/security-release/
>
> First of all, thank you for sharing this with oss-security.
>
> Per oss-security list content guidelines, actual vulnerability detail
> must be included in postings (message body or text/plain attachment).
> The Subject could have easily been more descriptive for this list, too -
> e.g., "CVE-2018-16984: Django: Password hash disclosure to "view only"
> admin users".
>
> Carlton, I'd appreciate it if you include such detail in your
> oss-security postings (if any) on future occasions.  Including the links
> as well is great (such as for easy access to updated revisions while
> the links work); including only links is discouraged.
>
> Here's the vulnerability detail from the above URL:
>
> ---
> CVE-2018-16984: Password hash disclosure to "view only" admin users
>
> If an admin user has the change permission to the user model, only part
> of the password hash is displayed in the change form. Admin users with
> the view (but not change) permission to the user model were displayed
> the entire hash. While it's typically infeasible to reverse a strong
> password hash, if your site uses weaker password hashing algorithms such
> as MD5 or SHA1, it could be a problem.
>
> Thanks Phithon Gong for reporting this issue.
> ---
>
> BTW, the feasibility of "reversing" a password hash depends not only on
> hash type, but also on how many guesses the attacker would need to make
> before likely hitting the right password.  Without target user specific
> information, that number depends on how common or not the password is.
>
> Maybe the word "typically" allows for this exception for weak passwords.
> However, unnecessarily revealing the password hash is a problem on its
> own, not just "could be a problem" depending on hash type, although the
> restriction to "admin users" and password hashing do mitigate the issue
> to some extent.
>
> Thanks,
>
> Alexander
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--000000000000925bcd05772a3f9e--
