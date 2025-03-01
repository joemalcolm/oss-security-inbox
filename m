Received: (qmail 28378 invoked by uid 550); 1 Mar 2025 18:41:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13662 invoked from network); 1 Mar 2025 18:18:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740853074; x=1741457874; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=j0DAYaYNQjn7YYTFfyaVeT83XuZDrMjoMOyi33GgCZA=;
        b=N9E5ZldjDqb20gwmfmMHygauAkC9rjaaIvKHyAHnLgLLQzRc/Zzfe9RQacT/VlQXp8
         XfB8Bm1Kx1kXGLS8X8928kONjNVKmsJ+kj28EQkPpg4XP4eioPQIWvs7s5RzUsQneX47
         4j1oe/pJFzA111aRz04K8ZAhkxDXuibh4QHb6q44vUbtShvC3MhJsYEK00jfl3cEuWcm
         InD9doYbHJW1m2dwI1AXpYwYmmeMjDkvxj/Ax05bihHQz5eahu6wai6x7q9tw9PV/DSR
         teYooMt+Da2WYnVtI8bQkt3s+e2/9cusUmzFnWMSMucDlD4uDtbHZ8rqRVZG7yoArsvs
         Lk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740853074; x=1741457874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0DAYaYNQjn7YYTFfyaVeT83XuZDrMjoMOyi33GgCZA=;
        b=jPVXvGKTyxPy2KUtMD0PUcwFOjvqhU2npIZ+0KsLrv5ugKFJn/YNQQPDYojgtpdfwk
         cDBwDQ+GEJdV3P4aGtGEtPhTP9HpWvQyRHFlOQracVPE8sHtXMC9J2Z/Nl6zlig9J/5o
         y5HZVvKBvyPAk1gFU8EYQEW6SpaOCYaZGSN0ESZMsmZEtX4A3VoY9ATpX6tqCmFmeENs
         xRmq7a0H1VkG7mlYx0t0N9ZxBrla3VhQMIoZWTU2i8LdzLbjA2iujhbFE0QNfsnqqB4C
         1WQ3v6cPe6hFF6BO839Nzm49Z1e2Flm2qVCD0X4/b2mMoL8T3UkbWfD50PrRkDJOpEh8
         E1kQ==
X-Gm-Message-State: AOJu0Yw7u9/ffeNJglod9h1vlmZnUmsynDYM/fSp2Y1EpIHDLxbaGVCn
	dUng7fdkibP1uSJq5sqpx9/59I4pkmmqX9V2f1NkXUwf4+yo68Vq
X-Gm-Gg: ASbGncum042OWktuEoy9YpWYuRiFJF4EIcr5epLJT7Y7djw1gF9VYnZXAs3vQjX+r7X
	QBl/xhRcWW/C4M63i5TanRLRlFTEGJ/E4EGnWlAz+h9amtiyeneNeHdX560nkck3FD9AquRKgBD
	DBO3OW5jpE9OvUQqKWIHSg9qPgig+vfTBnX00TzYRHMITomnYILzyLKAwl6B/PuiJGdz2Y5PvL1
	1F/VjBnj148BT8Q3EhhPObPYimLTbtkp8+ROB60oT0FO+yszZ8pR0QOWM3piv+iQFB3x6PH9baJ
	C9GgEPk5StGRzjxMI+23IaEluf+qLkPIfPCpPMH1mKlKzcnoxQP4qBYiSd/2YZVQya4=
X-Google-Smtp-Source: AGHT+IHPKdWQxPS1FMfVaH+JB0cg5bmAloio1WpH/A262zPa2B9JjhuCfcklbWVWmE0xaCQlxfaUNw==
X-Received: by 2002:a2e:b8d1:0:b0:306:10d6:28b0 with SMTP id 38308e7fff4ca-30b931fb7dcmr28674181fa.1.1740853073835;
        Sat, 01 Mar 2025 10:17:53 -0800 (PST)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <14c3bf23-eadb-475d-9fd7-d4f97e70c7a1@gmail.com>
Date: Sun, 2 Mar 2025 01:17:52 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Henrik Ahlgren <pablo@seestieto.com>
Cc: oss-security@lists.openwall.com
References: <a80334d5-1e6d-4303-a3b2-4f5a92344e24@oracle.com>
 <5215a75e-e20c-46f3-adca-471b04e1dbab@gmail.com>
 <874j0d7wnp.fsf@noux.seestieto.com>
Content-Language: en-US, ru-RU
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <874j0d7wnp.fsf@noux.seestieto.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: GNU Emacs 30.1 released with 2 CVE fixes


>>>> - Disable auto-completion features in untrusted .el files
>>>> - UPDATE: Also set enable-local-eval to nil
>>
> Max Nikulin writes:
>> It should work, however it is rather drastic measure that may cause
>> inconvenience.

It is more tricky. At least in Emacs-28, enable-local-eval helps to 
mitigate the variant from the blog post

;; -*- eval: (flymake-mode 1) -*-

however the user option has no effect for the case reported in the Emacs 
bug#37656 ("deprecated" feature)

;; -*- mode: emacs-lisp; mode: flymake -*-

Neither
     emacs -Q --eval '(setq enable-local-eval nil)' poc.txt
nor
     emacs -Q --eval '(setq enable-local-variables :safe)' poc.txt
prevents execution of code from the file.

Unfortunately
     emacs -Q --eval '(setq enable-local-variables nil)' poc.txt
or a similar form in init.el disables file-specific major modes as well. 
So "mode: outline" is ignored in files like "NEWS". enable-local-eval 
affects "eval: (...)", but not "mode: ...". These settings are described in
<https://www.gnu.org/software/emacs/manual/html_node/emacs/Safe-File-Variables.html>
and in doc strings
<https://git.savannah.gnu.org/cgit/emacs.git/tree/lisp/files.el?h=emacs-30.1#n669>

So setting enable-local-variables to nil is a better recommendation, but 
the price is inconvenience. An attack can not be prevented by setting 
enable-local-eval.

On 01/03/2025 19:39, Henrik Ahlgren wrote:

> I wanted to point out an interesting aspect of Emacs file local
> variables. It may be surprising to some that including `-*-
> eval:(foobar-mode) -*-` at the beginning of a file will happily evaluate
> the specified function, regardless of whether it is an "actual" minor
> mode created with `define-minor-mode'. The only requirement is that the
> name ends with "-mode."
> 
> This raises some questions about potential security implications.

Language encourage this kind of tricks. Function names at least have to 
have -mode suffix. In the case of CVE-2025-1244, "man:" URL scheme 
causing attempt to load url-man.el (does not exist) then call to the 
url-man function from url-misc.el, see url-scheme-get-property in 
lisp/url/url-methods.el. The url package is a mix of functions 
implementing some URL schemes (url-info, url-http, etc.), API functions, 
and helpers having url-* names. There are no settings in url similar to 
browse-url-handlers and eww-use-browse-url that define explicit mapping 
(e.g. to browse-url-man) and limit schemes available through browse-url.el.
