X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Friday" "17" "April" "2015" "21:16:59" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55315C2B.6050207@redhat.com>" "52" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041719:16:59" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh Apr 17   52/2549  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21864 invoked by uid 550); 17 Apr 2015 19:17:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21841 invoked from network); 17 Apr 2015 19:17:18 -0000
Message-ID: <55315C2B.6050207@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
In-Reply-To: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Fri, 17 Apr 2015 21:16:59 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

A quick update on the abrt situation.

Most of these issues center around file ownership and contents under
so-called problem directories (subdirectories of /var/tmp/abrt or
/var/spool/abrt).  Problem directories are owned by root and have mode
750 on Red Hat Enterprise Linux 6, which suggest that with this older
abrt version, exploits are only possible if uploads are enabled in some
way (see below).

abrt writes coredumps to existing world-writable files owned by other
users, disclosing coredump contents across user boundaries.  This
affects a default configuration, but requires an application to crash
while its current directory is world-writable, so exploiting it seems
difficult.  We have assigned CVE-2015-3142.
<https://bugzilla.redhat.com/show_bug.cgi?id=1212818>

By default, abrt automatically runs post-crash actions on problem
directories (event handling scripts).  These scripts have symlink issues
and other race conditions.  This is more or less a repeat of the main
abrt-hook-ccpp issue Tavis' reported, but at a higher level.  It means
that hardening the file system access in abrt-hook-ccpp is insufficient.
 We have assigned CVE-2015-1869:
<https://bugzilla.redhat.com/show_bug.cgi?id=1212861>

The default event handling scripts add a sosreport file (containing
files which are not world-readable) and user-controlled excerpts from
/var/log/messages to the user-readable problem directory.  This is an
information disclosure flaw, CVE-2015-1870:
<https://bugzilla.redhat.com/show_bug.cgi?id=1212868>

abrt has an upload functionality which allows, after non-default but
documented/supported configuration, other systems to upload crash
reports.  This indirectly allows one to create a problem directory with
symbolic links and unintended permissions, enabling further attacks.  We
treat this as a vulnerability, CVE-2015-3147:
<https://bugzilla.redhat.com/show_bug.cgi?id=1212953>

As explained in the parallel thread, abrt needs to disable user coredump
files in fs.suid_dumpable=2 mode, like the kernel does, and we don't
treat this as a vulnerability:
<https://bugzilla.redhat.com/show_bug.cgi?id=1212873>

It makes sense to have separate abrt-hook-ccpp implementation that does
not write user coredump files.  It would not have to write to arbitrary
file system locations, so it can be restricted with SELinux.  This
enhancement is tracked as:
<https://bugzilla.redhat.com/show_bug.cgi?id=1212885>

There is a backlog of other issues for which I have not yet filed bugs.

-- 
Florian Weimer / Red Hat Product Security
