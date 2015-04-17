X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2810" "Friday" "17" "April" "2015" "14:52:01" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKcWCUnKqeqD5frmq8A7OTTKHAkAYkoBvCocK39SkUu1Q@mail.gmail.com>" "60" "[oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041721:52:01" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 17   60/2810  " thread-indent "\"[oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<55315C2B.6050207@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12024 invoked by uid 550); 17 Apr 2015 21:52:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12001 invoked from network); 17 Apr 2015 21:52:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=mr5UMzJC5h21mMA6341SbegVPkfg51j3w8E+jdB6v/o=;
        b=nw6bOFRnTkuHw69OKKTVDHcLbdNYCFtNIv5JbIUBoX4jrjivCoXXUW1TPAu7wT6XLi
         5NU+3+P+IWlU3Ce0JqcOQVWYdbVLL+7NI4jH1A69HRc8yY1T2+OBdWutL5d7PfX2uzQy
         P3Vy/Kzp3tDnSD2FnA/pgrilg/y+Jc0MKaRI4vxDXGVenea6hDqfuyA0cONXLJx4A+07
         qj5j1yRTVE+fUVHHCnMcv9SazV23eLiluE0ODc/qx+9S8VtS3NABpZOJ/7hPvINrN/MS
         q0JLdRbPl1EUNzVP+3fAwfCQiFoS4IOTTkvZwyG3/YpPkSPHACOEbvLxCKA1Sq926+xt
         HjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=mr5UMzJC5h21mMA6341SbegVPkfg51j3w8E+jdB6v/o=;
        b=Cz4BHYcEmznmDvZgowqfES+E9hGWSxRz1zv7kFFsu0KYwN7eL4XAgddTpgMtqWUtRL
         c0ea6oIknINJNo2sOgbunRWXPScbxrafE7w7p9m2HzS9n6nVKRBrRDj+fO+5qq4rUfZw
         Q5GrFh0OX2dWObf5P7qLpsyjt13jYEkZnETbDaIrKeHsqdTqMAMyDdaJjF9eWdKeYKmO
         G8CyknMVx0UuXunri23Ktr/GM0RemqMtyo4yYQjwligfrnTd7y4HuHQON1sTdf8hN2eY
         AAKXfJrCs14Db/p1QgQNzplQJsL4/zGkq7oM5sGAk5QiaKsZt8fgeDnkOT+qjTOnDY3Z
         gRww==
X-Gm-Message-State: ALoCoQm9rlwQ/lYSMNm/0i0BEpyBbHofCtXBBAyJJbg0xYkZp8dqQQmeJiyZ16kBlr+jucMSc4aU
MIME-Version: 1.0
X-Received: by 10.55.21.139 with SMTP id 11mr9956590qkv.19.1429307521411; Fri,
 17 Apr 2015 14:52:01 -0700 (PDT)
In-Reply-To: <55315C2B.6050207@redhat.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
	<55315C2B.6050207@redhat.com>
Message-ID: <CAJ_zFkKcWCUnKqeqD5frmq8A7OTTKHAkAYkoBvCocK39SkUu1Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147eeb816e5cd0513f29721
Date: Fri, 17 Apr 2015 14:52:01 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Problems in automatic crash analysis frameworks
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a1147eeb816e5cd0513f29721
Content-Type: text/plain; charset=UTF-8

On Friday, April 17, 2015, Florian Weimer <fweimer@redhat.com> wrote:
> A quick update on the abrt situation.
>
> Most of these issues center around file ownership and contents under
> so-called problem directories (subdirectories of /var/tmp/abrt or
> /var/spool/abrt).  Problem directories are owned by root and have mode
> 750 on Red Hat Enterprise Linux 6, which suggest that with this older
> abrt version, exploits are only possible if uploads are enabled in some
> way (see below).
>
> abrt writes coredumps to existing world-writable files owned by other
> users, disclosing coredump contents across user boundaries.  This
> affects a default configuration, but requires an application to crash
> while its current directory is world-writable, so exploiting it seems
> difficult.  We have assigned CVE-2015-3142.
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212818>
>
> By default, abrt automatically runs post-crash actions on problem
> directories (event handling scripts).  These scripts have symlink issues
> and other race conditions.  This is more or less a repeat of the main
> abrt-hook-ccpp issue Tavis' reported, but at a higher level.  It means
> that hardening the file system access in abrt-hook-ccpp is insufficient.
>  We have assigned CVE-2015-1869:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212861>
>
> The default event handling scripts add a sosreport file (containing
> files which are not world-readable) and user-controlled excerpts from
> /var/log/messages to the user-readable problem directory.  This is an
> information disclosure flaw, CVE-2015-1870:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212868>
>
> abrt has an upload functionality which allows, after non-default but
> documented/supported configuration, other systems to upload crash
> reports.  This indirectly allows one to create a problem directory with
> symbolic links and unintended permissions, enabling further attacks.  We
> treat this as a vulnerability, CVE-2015-3147:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212953>
>
> As explained in the parallel thread, abrt needs to disable user coredump
> files in fs.suid_dumpable=2 mode, like the kernel does, and we don't
> treat this as a vulnerability:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212873>
>
> It makes sense to have separate abrt-hook-ccpp implementation that does
> not write user coredump files.  It would not have to write to arbitrary
> file system locations, so it can be restricted with SELinux.  This
> enhancement is tracked as:
> <https://bugzilla.redhat.com/show_bug.cgi?id=1212885>
>
> There is a backlog of other issues for which I have not yet filed bugs.
>

Appreciate the updates Florian.

Tavis

--001a1147eeb816e5cd0513f29721--
