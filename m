Received: (qmail 1834 invoked by uid 550); 27 Feb 2025 16:49:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16167 invoked from network); 27 Feb 2025 15:27:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740670049; x=1741274849; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/RSnSXt/3Hb6JzxOT9GNxyLchylerm+37hrZk9ki+rA=;
        b=bA6flN24hdg304hCXTgUxVK1Tvn4bQQDtvF8h0BHb1kVjyhoMaZqDaRuq0THKiFnbZ
         XgUlV78gitdf8Al4oal9tsDPcs1mnoQPlZJJRSFHkALRQo/92Exrj6LO5ipjU2M0s8ob
         1KvhUdPYCJjnpwiwq9zq8K3WP1X2wqDbS3jbMXjN20H8pZ9P2/WbsQAkOGjtcQIZCA1X
         1aeFPqKuivHkT3DBptsfFAqcJz0Q6r8uQDeMusDBPnK2k7Qf2u721F6sEDsEFyRrbGB9
         WDiEn5D2aPKpzAkW9VJGw8bF/rINU/xVa9C8gZqGRIMbkEy6iXfDNDKOc3OE0bXzR9UH
         soPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740670049; x=1741274849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RSnSXt/3Hb6JzxOT9GNxyLchylerm+37hrZk9ki+rA=;
        b=H7YexGTzaLyKbmQREg93jkGgjvEN+MjvSVfpdrayWFyB1JpIZGhL6AoCpwZ7IPxHm1
         ofz3IaLlpNGkI4X/VyxDc/a1g2iv4jYoZiTxyfyo+aRZYmy54sX7A7KDHPb3SIlDZXDh
         MZvNyf8IX2OIv2trIVPK3bLPiVTfQSPB20ft/xveMN15dLro3GQP6KDyLHJPrMCD1O1J
         8GnI9+Cyk0uv7oq94y6dpqp1AbEUWiz2j/VWBwwFRHsBGn8geTYbNS0y+IID/aZpG6hq
         riu0+cWJIaqDxA+FWGLmjeuJz59HoCSVy9G5nPb/cs8WCj55+ZG5ftJ9tHZ5dhejznC7
         2wCQ==
X-Gm-Message-State: AOJu0Yx7cO19L60XShHjQUv1Ar6ftludJ5OqI5jB4TDSvcPbGZ4/yZrw
	Ch4uznGIMmo99gMkORjrmcH17Za23XhKyhnMz1HDQvN+9hq9sDqTlB81tw==
X-Gm-Gg: ASbGnctD0DwsSWKdEAeBNSenx2rW4oy5SZWD5y3c8HzUukFzj0DIO+JE0LS37VnpELs
	JuJm1bQQFFZW0IYOr+fBpsbIlv/gzLjQstgLkqgB2C9WDXo2ubwjYveThJH7AsfxznNnm6/6Xv9
	bb6JOBS4LBXDCZEKdXOCsLg8lfsYvPTh8SGANLZ2ZqB/l6T4sxFDlG7T6sNG7bW3eW/OlLEYA9j
	RN7Zh83mxXA7AkoegyGOMIDXg26FY/6XpdJiqama7+Gj8Q6DqgqkSK9OY4MKl+5toWq/Jj/raDO
	XQz1ftNGg7E1A2foKZsIjkjtLpRu1CRRVzjc59XRO9AtCxoc
X-Google-Smtp-Source: AGHT+IFkCNRB3QuIDG3sHxSSFh2xYMLnxURAvzSTyc6U8biYMeoywnRVuZOkgZ818ktWj4HNBX8wKA==
X-Received: by 2002:a2e:bccf:0:b0:309:1d34:1089 with SMTP id 38308e7fff4ca-30a809e76e0mr81324961fa.0.1740670049135;
        Thu, 27 Feb 2025 07:27:29 -0800 (PST)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <5215a75e-e20c-46f3-adca-471b04e1dbab@gmail.com>
Date: Thu, 27 Feb 2025 22:27:27 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <a80334d5-1e6d-4303-a3b2-4f5a92344e24@oracle.com>
Content-Language: en-US, ru-RU
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <a80334d5-1e6d-4303-a3b2-4f5a92344e24@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: GNU Emacs 30.1 released with 2 CVE fixes

On 27/02/2025 06:45, Alan Coopersmith wrote:
> 
>> ** Fix shell injection vulnerability in man.el (CVE-2025-1244).
>> We urge all users to upgrade immediately.
> 
> This was reported in https://debbugs.gnu.org/cgi/bugreport.cgi?bug=66390

Reading <https://bugzilla.redhat.com/show_bug.cgi?id=2345150> I have 
realized that org-link was not the only package that did not follow 
(from #66390):
"'man' is an interactive command, so it should not
second-guess the user who invokes it.  Commands that call 'man'
non-interactively should make sure they call 'man' with a valid
argument, especially when the argument comes from some file."
Fortunately, finally it was fixed in man.el, so other callers are not 
affected any more as well.

> CVE-2024-53920 is further described in
> https://eshelyaron.com/posts/2024-11-27-emacs-aritrary-code-execution- 
> and-how-to-avoid-it.html
[...]
>> - Avoid visiting untrusted .el files in Emacs

Do not open *any* file that you do not trust. The issue is not specific 
to files having .el suffix. In default configuration emacs-lisp mode may 
be forced by specifying file-local variables inside a file.

>> - Disable automatic error checking (with Flymake or Flycheck) in 
>> untrusted .el files

Disabling flymake may be tricky. File-local variables allow to force it 
(in default configuration).

>> - Disable auto-completion features in untrusted .el files
>> - UPDATE: Also set enable-local-eval to nil

It should work, however it is rather drastic measure that may cause 
inconvenience.

It is funny that a similar suggestion was published in the previous century.

Simson Garfinkel, Gene Spafford. Practical UNIX & Internet Security. 
1996. Chapter 11 Protecting Against Programmed Threats:
> Another possible source of initialization errors comes into play
> when you edit files that have embedded edit commands. Both vi/ex
> and Emacs allow you to embed editor commands within text files so
> they are automatically executed whenever you edit the file. For
> this to work, they must be located in the first few or last few
> lines of the file.
> 
> To disable this feature in Emacs, place one of these lines in your .emacs file:
>     (setq inhibit-local-variables t) ; emacs version 18
> or:
>     (setq enable-local-variables "ask") ; emacs verison 19 and above

The following bugs have not marked as fixed for some reason, but from my 
point of view, original reports prominently highlight risk of 
CVE-2024-53920.

- <https://debbugs.gnu.org/37656> Tue, 8 Oct 2019 08:49:02 UTC
   Arbitrary code execution with special `mode:'
- <https://debbugs.gnu.org/32495> Wed, 22 Aug 2018 00:13:02 UTC
   Arbitrary code execution when completing inside untrusted elisp code
