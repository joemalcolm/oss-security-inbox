X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["726" "Monday" "9" "May" "2016" "10:53:39" "-0700" "Jann Horn" "jannh@google.com" "<CAG48ez0_BFmrhW_JaKFSNz0tH3U+vmVnsA_1NaZcbCsYHURiHw@mail.gmail.com>" "17" "Re: [oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" nil nil nil "5" "2016050917:53:39" "[oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" (number mark "U       jannh@google May  9   17/726   " thread-indent "\"Re: [oss-security] Re: CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)\"\n") "<20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>" ("<20160506131455.GA17272@lorien.valinor.li>" "<20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19723 invoked by uid 550); 9 May 2016 18:02:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15444 invoked from network); 9 May 2016 17:54:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=NzxCX16CIOMEf4NLmXx0+DGyjM9005lyKX4AgvOyuI4=;
        b=G8FUN9FjRnCZFEEckArIu4dY+615PzRPh3qVVStZpoZRy41kD2MuYjrGCRPwG6ZQUt
         odizbPsPYL9IO6/J9blYeBvmOXDJqnkR2dBq0neS1X2MIV/1ME940A8O/TPdkpq4kv3O
         3r8n74nNkh2rhqEVXYF/CzgKz+mp8OIYHS8yrMTSfVjFIP+waNgduPCjvNIEPkTFNP17
         OBfHpu5gEp29OKIC6VdFXSROtay17EoYRZcwNDqx4B+6rEoIM6poVaHXDMk67pzOFNmc
         w1h6I4tSW6HfHLlQ4b0EG3Rvm1txAeSPXBLjMt8T2ZhXQUnPNAfoWNPuyAp0KZ9m3YZL
         tgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=NzxCX16CIOMEf4NLmXx0+DGyjM9005lyKX4AgvOyuI4=;
        b=KZhtd3rZsZPJx+crAqo8l2ZOuvS40sNvaxVBTe/zst9oquzcOc4JkveoSurt0huyUO
         Zj4pZIEKjvH5XHYFuRzD22azawLYRBbINE9IVuxKXLrJi4Am1ME5/fgFq3Fsh1NvYhc9
         PQwOEBzkpyA21WX5LzQ0sRuTtwErUUJeZOfw6kI25EBfX2RC7DGVDPJX8e/SWkRHLrpk
         jkXWmYJ28jDno5YVAufGBg9pJKe3C5/CO0b5ecoT6lx3l03qRy4hKrlzC6yDH6CFxo74
         gJfNI8VnMW1Gx46RP+IVxCyfBZfEXIGcH+WPyCR1+oAojwAq6zWn9nbLGrEcpHy6sRWP
         OorQ==
X-Gm-Message-State: AOPr4FW+s4wgw4IhC2GWynmmyk4zHcpFibE+QqQ2Dyn2zX6F89YrDomPsgyQfayJ8VtcclQIZJ6kr0NewRPBAtjS
X-Received: by 10.107.44.8 with SMTP id s8mr40159026ios.90.1462816439253; Mon,
 09 May 2016 10:53:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>
References: <20160506131455.GA17272@lorien.valinor.li> <20160506154021.7AD8B72E002@smtpvbsrv1.mitre.org>
From: Jann Horn <jannh@google.com>
Date: Mon, 9 May 2016 10:53:39 -0700
Message-ID: <CAG48ez0_BFmrhW_JaKFSNz0tH3U+vmVnsA_1NaZcbCsYHURiHw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: carnil@debian.org, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: CVE Requests: Linux: BPF flaws (one
 use-after-free / local root privilege escalation)

On Fri, May 6, 2016 at 8:40 AM,  <cve-assign@mitre.org> wrote:
>> bpf: fix check_map_func_compatibility logic
>> https://git.kernel.org/linus/6aff67c85c9e5a4bc99e5211c1bac547936626ca
>>
>> Not sure though if the later one has a security impact.
>
> We have not yet assigned a CVE ID to
> 6aff67c85c9e5a4bc99e5211c1bac547936626ca in case someone else wants to
> provide additional information.

I'm the original reporter of that bug. As far as I can tell, its
impact is low - you could use it to:

 - obtain the ability to execute BPF programs that are owned by other processes
 - perhaps cause a NULL dereference in an exiting task if the BPF
program is executed in
   softirq context after exit_files() has nulled tsk->files
