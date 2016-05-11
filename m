X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1011" "Wednesday" "11" "May" "2016" "22:44:13" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdR-N=-+o7L_eCkd9b4Sv05woTVLh6_r7JekMEJFPBQmNw@mail.gmail.com>" "35" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" nil nil nil "5" "2016051120:44:13" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" (number mark "U       gustavo.grie May 11   35/1011  " thread-indent "\"[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml\"\n") "<20160509232519.6082F52E015@smtpvbsrv1.mitre.org>" ("<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>" "<20160509232519.6082F52E015@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23723 invoked by uid 550); 11 May 2016 20:44:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23696 invoked from network); 11 May 2016 20:44:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=jN/Hgc7vyP3QlTsoI/hkQhYw0k6GSFuERRnK4gpxxrw=;
        b=D49AlrkGlt/gHcN17X2jN4nkcOTz5vaZ8RCz7w5rKwpXBnUg2D4yk6LbbWuQaprzzI
         GOYflw7IRvm9nUtLmiOxOArAmtwPME9jxU/Xif45yiKY3N9mMoHvsXZSR46vGqfaOBUy
         DnZQ/N5vno7YrQKQta49QWvA9+D1CAV6WTXT9bS6CJ/eSfOsdpSIuJHBL/okHPctSlXe
         fW4Q64KOeSDfmZHhGF7f7vR71qCqJG94XzGGVG8KCOTdkPP1BKxA5eG2ripSwwPMruC5
         sUKhZaWJQTa9dxSDUroT2wJRTS7RkfGyuVLfDEcThH/CuYeKAXL29Mf3epCCHV4XTn/n
         h+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=jN/Hgc7vyP3QlTsoI/hkQhYw0k6GSFuERRnK4gpxxrw=;
        b=GHiGbIdaFlRN9veGwocbxwv8uyKZBVctS1rI6PMl+anlTjCs6uZPakschG4wJJkd1C
         p0VbYoI5BUtZH28m5/Sy8kR7Hd7sMmwaOqTqmDtq/vxkWd9bLS3TkgvkqllqDj1y4TJa
         q9EWbpG8gESSEOiTFRvf2PYvZkVkxSIkhjw4mDDbVpz9O8rp1tZBZbj3el8lGxJ34Mjh
         UVBNlYv/Zci+f/Aoef8e1PuYtQijoUZzAaBxPNIvivtYTM8r/CtQYKjsvZlARbZzs3xu
         6jjiTR8vVwREfpSYXWRhRljp0hpHQPIoRkZPLzHqSVBb+ron+HSGUUxTgpNhticMAmF0
         XpGg==
X-Gm-Message-State: AOPr4FWXG21ETr8+bZnAQskqSq8gvsRax2OGzWuAeWikoO6cWdhA6hL1inZsvj0BnvnS7MUMlCBCGdc9IwCPfg==
MIME-Version: 1.0
X-Received: by 10.25.207.134 with SMTP id f128mr2536269lfg.83.1462999453255;
 Wed, 11 May 2016 13:44:13 -0700 (PDT)
In-Reply-To: <20160509232519.6082F52E015@smtpvbsrv1.mitre.org>
References: <CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>
	<20160509232519.6082F52E015@smtpvbsrv1.mitre.org>
Date: Wed, 11 May 2016 22:44:13 +0200
Message-ID: <CACn5sdR-N=-+o7L_eCkd9b4Sv05woTVLh6_r7JekMEJFPBQmNw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml

2016-05-10 1:25 GMT+02:00  <cve-assign@mitre.org>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> We found two stack exhaustion conditions that can easily crash mxml
>> when parsing an xml.
>
> (The two example XML documents seem dissimilar. For example,
> stack-exhaustion-2.xml starts with "<?xml" whereas
> stack-exhaustion-1.xml does not.)
>
>
>> Recursion using mxmlDelete at mxml-node.c:217 (stack-exhaustion-1.xml)
>
> Use CVE-2016-4570.
>
>
>> Recursion using mxml_write_node at mxml-file.c:2739 (stack-exhaustion-2.xml)
>
> Use CVE-2016-4571.

Thanks!

The report of these stack exhaustions is here:

http://www.msweet.org/bugs.php?U549 (but you need to register)

Just to clarify, since we compiled testmxml with ASAN, in order to
reproduce  using the attached files in the original binary it is
necessary to reduce a little the stack size, for instance:

$ ulimit -s 4000

The stack exhaustations are still possible with the original testmxml
binary, but it requires slightly bigger files.
