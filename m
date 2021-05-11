X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1768" "Tuesday" "11" "May" "2021" "13:23:43" "+0200" "null p0int3r" "nullp0int3rx@gmail.com" nil "48" "[oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil "5" nil nil (number mark "U       nullp0int3rx May 11   48/1768  " thread-indent "\"[oss-security] [CVE-2020-28018] Use-After-Free on Exim Question\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-28018] Use-After-Free on Exim Question" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18296 invoked by uid 550); 11 May 2021 11:27:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16088 invoked from network); 11 May 2021 11:24:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=X53l17naOOotVEAH+YWaZh1bqDILpSGppbpFPdlvX6c=;
        b=NoT7cjXUYgJohXRgNkZgt406H/hwVHkIjtyZioQj5W/phFTPNTENkcHHlw3kv8CMjn
         f86wAPIUD07vCnXiExuoqpudlrjVHKRE9KVvXNf+cbLxYQ4YhGEFZFEuWzFrRqUEL725
         wdHcWol79LJPNt+HCkB+7WKng20n3C8lerVL/s7aH6Gephur6tUi/zQhFxzJ+u6bdZCL
         wxP+FQfQmwVcuwN1nQMXLGm336yaykCYOaRaYAqqmQWHH/s+P91Ah2QjeLydyzc5z4bH
         GIdQCBJopITxQeZT6JPgDMGLH15S9DjpSHg7ahFSdLppjlEeX8NqLTkLA9AdMAGVHSRK
         XvQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=X53l17naOOotVEAH+YWaZh1bqDILpSGppbpFPdlvX6c=;
        b=F5u9ZIVdIHcD1mO+Fd9OnqcgQwstw/C61AqooUFAoOIDyxCKfUfz2xMvjatVFprZAr
         loxtaxk1t+3GbrvfCnbbY6qeT68I8VpKkGqIPLzTFn4TYB6XSmuKSf7doNLXXYruf0G6
         l6dkiSJ4rKYEq7ZMhhrQyFUr/aqdWSeGNeb2NCGA5M0yqHShk/Fm3hMagt1UXtTr+Gnp
         +vHjcMa7NPSguf9pvTITwCQFjPj3ZxWa6Rsu7XpKlfh5ilN+2xEkVA0DvPKzYN2eL0l9
         5lcKJSGsbWOXlafOL4NfFNOYmyML2yfX97vyYuZdhRzlj7jIdnoCmgMHj98WHhuu9KYO
         fA0A==
X-Gm-Message-State: AOAM532B0X778m+653gsk5C5ODPJOAhDlSl+qm5//I7Hwbf+hPISWhtA
	sAGr/OcnLP0xMrOgcnYTyOl1NhwOMETFDclXwSX+Fa2/7g==
X-Google-Smtp-Source: ABdhPJyikUPH7//KCarjk/317iQgNvBOCW2AuzHan6trJzhs0Zf637RZcGP4f8jZVjt0jaULc37MwoM/myDfWCEXK3Y=
X-Received: by 2002:a2e:b4ed:: with SMTP id s13mr23918860ljm.86.1620732234077;
 Tue, 11 May 2021 04:23:54 -0700 (PDT)
MIME-Version: 1.0
From: null p0int3r <nullp0int3rx@gmail.com>
Date: Tue, 11 May 2021 13:23:43 +0200
Message-ID: <CAOni+oNB4JCe+Z=V+_bQGHBJ-HfN0AwVLC_H0qwVBsF0KKEoYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000016982d05c20c21cf"
Subject: [oss-security] [CVE-2020-28018] Use-After-Free on Exim Question

--00000000000016982d05c20c21cf
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a question to the Qualys researchers that discovered and
successfully achieved RCE on CVE-2020-28018 (Use-After-Free vulnerability
on tls-openssl.c).

This question is nor avisory related nor vulnerability discovery but about
exploitation, so I am not sure if it is on the scope of this mailing list.

I am developing a Proof-of-Concept exploit for the previously mentioned bug.

I know once you reach tls_write() again, the UAF is lost as the pointer is
NULL'ed

"- finally, we send a MAIL FROM command whose response overwrites Exim's

  configuration with our arbitrary "${run{...}}" (which is eventually
  executed by expand_string())."

In the advisory it says that you sent a second "MAIL FROM"  command to the
server so the response on tls_write() is written to the area pointed to by
the s pointer on the UAF'ed gstring struct.

So I suppose that command is the first you send after the second "STARTTLS"
command being sent right?

I was able to overwrite gstring struct using a "MAIL FROM" command but
after the "STARTTLS", which makes it difficult to use the same response for
it to overwrite the target buffer as a NULL byte not allowed message is
returned instead.

So my question in summary, you corrupted the gstring struct before the
STARTTLS and then sent another MAIL FROM command after the STARTTLS? Or you
used two "MAIL FROM" commands after the STARTTLS or a pipelined one both
after?

I guess pipelining cannot be used as you would first need a EHLO response
saying the PIPELINING module is available. Doing so requires the use of
tls_write() which means breaking the UAF.

PD: Congrats for those nice bugs discovered.

Thanks

--00000000000016982d05c20c21cf--
