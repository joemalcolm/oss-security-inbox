Received: (qmail 27655 invoked by uid 550); 17 Jan 2023 18:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21886 invoked from network); 17 Jan 2023 18:06:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:message-id:date:references:subject:cc:to
         :from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zL/5g5tD/ITo1G86LLL5iEldtncPtnruhMS5tn83jTs=;
        b=OM1MCGVf/AZfm4pZbCUZO61YPX2/7MHR3f230DN2/w9XQIpk1OCztyBaFgLrs/qwcm
         siQ/jzu7y8dZu8ZP0yzxm9OcgZdPwB7ituAyg9W3xZq46tlInfBc3HTKy5cDsqEZUaj1
         adqv9mkdx6e4xiGnJAPQrPRHRj46C4ZWEGoTwL6bjjUucMYx2suCVx3gGp3qPQUV2Igb
         pgLcA0DSwetmjsN8KU3leDPbic8IpGRW+FG5RmkAtuiI4VvKSfX7njoh4N4dWazP427S
         l4y0Cj+kigrmh0906tWAX4k4w91tKzXmA9rqdt/0ASjUwxvp5sx9bRMCvj+uqRwExqih
         B3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:message-id:date:references:subject:cc:to
         :from:sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zL/5g5tD/ITo1G86LLL5iEldtncPtnruhMS5tn83jTs=;
        b=Ob179h8Wkn94VBKECYrAzNfs+8vx0vqJz0voLxzv/HHePQcrL4W7J9wSaWV5c6bf/7
         zvWWfi9Lb5LOtIeHlU46i6gXsXBI5JTkdrq7o9AiUsgkgqp2L9VXUedww+oH5u3+qd6o
         H/TnPxLjYcem/r3NvLhvS4pdDI7kjSRlNAAdZWLlNOF5SS2UB3QIMQe1rrKa5kZ2Mhdb
         aVkB6k/A+wgXkhTObalfAM0X4ydwDymOD2HLKf/N0L3Pkrxnv7yKUIhCP0LdT7an+7MZ
         8PJLSzNkR9GBwf78Rdjw928fJpJq05nRyKz+KtPXI4BLkeh2UqOzI4bzfm6mZcitGJs6
         N+6A==
X-Gm-Message-State: AFqh2kpWxk/no69zz2Do9Bvg1bqMurnCuu1ic5DiDpz7rvAzDdZQODPE
	bbCVsk9OQbVYNTDZe0NoRGx25X8Gi04=
X-Google-Smtp-Source: AMrXdXt24+FmNZfIBR4KOkEsJ4tQLD4Fb12lilCgV1bwd58C8RI+Spfwvv46Qc3NjpSKURwUggFoQQ==
X-Received: by 2002:a17:902:a5c6:b0:193:33d4:d509 with SMTP id t6-20020a170902a5c600b0019333d4d509mr26016776plq.30.1673978771180;
        Tue, 17 Jan 2023 10:06:11 -0800 (PST)
Sender: Junio C Hamano <jch2355@gmail.com>
From: Junio C Hamano <junio@pobox.com>
To: oss-security@lists.openwall.com
Cc: git-security@googlegroups.com
References: <xmqqfscit2ct.fsf@gitster.g>
Date: Tue, 17 Jan 2023 10:06:10 -0800
Message-ID: <xmqqzgah8299.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Git 2.39.1 and friends

The Git project released versions v2.30.7, v2.31.6, v2.32.5,
v2.33.6, v2.34.6, v2.35.6, v2.36.4, v2.37.5, v2.38.3, and v2.39.1
today.  These maintenance releases are to address the security
issues identified as CVE-2022-41903 and CVE-2022-23521.

The tarballs are found at:

    https://www.kernel.org/pub/software/scm/git/

The following public repositories all have a copy of the v2.39.1
tag, as well as the tags for older maintenance tracks for v2.30.7,
v2.31.6, v2.32.5, v2.33.6, v2.34.6, v2.35.6, v2.36.4, v2.37.5, and
v2.38.3.

  url = https://git.kernel.org/pub/scm/git/git
  url = https://kernel.googlesource.com/pub/scm/git/git
  url = git://repo.or.cz/alt-git.git
  url = https://github.com/gitster/git

The addressed issues are:

 * CVE-2022-41903:

   git log has the ability to display commits using an arbitrary
   format with its --format specifiers. This functionality is also
   exposed to git archive via the export-subst gitattribute.

   When processing the padding operators (e.g., %<(, %<|(, %>(,
   %>>(, or %><( ), an integer overflow can occur in
   pretty.c::format_and_pad_commit() where a size_t is improperly
   stored as an int, and then added as an offset to a subsequent
   memcpy() call.

   This overflow can be triggered directly by a user running a
   command which invokes the commit formatting machinery (e.g., git
   log --format=...). It may also be triggered indirectly through
   git archive via the export-subst mechanism, which expands format
   specifiers inside of files within the repository during a git
   archive.

   This integer overflow can result in arbitrary heap writes, which
   may result in remote code execution.

* CVE-2022-23521:

    gitattributes are a mechanism to allow defining attributes for
    paths. These attributes can be defined by adding a `.gitattributes`
    file to the repository, which contains a set of file patterns and
    the attributes that should be set for paths matching this pattern.

    When parsing gitattributes, multiple integer overflows can occur
    when there is a huge number of path patterns, a huge number of
    attributes for a single pattern, or when the declared attribute
    names are huge.

    These overflows can be triggered via a crafted `.gitattributes` file
    that may be part of the commit history. Git silently splits lines
    longer than 2KB when parsing gitattributes from a file, but not when
    parsing them from the index. Consequentially, the failure mode
    depends on whether the file exists in the working tree, the index or
    both.

    This integer overflow can result in arbitrary heap reads and writes,
    which may result in remote code execution.

Credit for finding CVE-2022-41903 goes to Joern Schneeweisz of GitLab.
An initial fix was authored by Markus Vervier of X41 D-Sec. Credit for
finding CVE-2022-23521 goes to Markus Vervier and Eric Sesterhenn of X41
D-Sec. This work was sponsored by OSTIF.

The proposed fixes have been polished and extended to cover additional
findings by Patrick Steinhardt of GitLab, with help from others on the
Git security mailing list.
