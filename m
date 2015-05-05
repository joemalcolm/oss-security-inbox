X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1310" "Tuesday" "5" "May" "2015" "14:17:32" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5548B4DC.4080305@redhat.com>" "36" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "5" "2015050512:17:32" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh May  5   36/1310  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<553943C3.5060704@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>" "<553943C3.5060704@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1336 invoked by uid 550); 5 May 2015 12:17:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32759 invoked from network); 5 May 2015 12:17:47 -0000
Message-ID: <5548B4DC.4080305@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com> <55315C2B.6050207@redhat.com> <553943C3.5060704@redhat.com>
In-Reply-To: <553943C3.5060704@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 05 May 2015 14:17:32 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 04/23/2015 09:10 PM, Florian Weimer wrote:
> On 04/17/2015 09:16 PM, Florian Weimer wrote:
>> A quick update on the abrt situation.
> 
> Another update.  We now have a public tracking bug listing the issues:
> 
>   <https://bugzilla.redhat.com/show_bug.cgi?id=1214172>

We have identified one more issue:

abrt-action-install-debuginfo-to-abrt-cache is a SUID wrapper which
incorrectly filters the process environment (umask and truncated command
line arguments such as “--ca“) before invoking the actual program.  This
allows a local attacker to create a world-writable problem directory and
eventually escalate their privileges to root.  (Other attacks against
the cpio extraction might be feasible.)  CVE-2015-3159
<https://bugzilla.redhat.com/show_bug.cgi?id=1216962>

Jakub Filak has created several pull requests fixing all the issues
identified so far:

  <https://github.com/abrt/abrt/pull/950>
  <https://github.com/abrt/abrt/pull/955>
  <https://github.com/abrt/libreport/pull/346>

There is a public build (against EPEL7) of the consolidated fixes,
available as a Copr repository:

  <http://copr.fedoraproject.org/coprs/jfilak/abrt-hardened/>

This also includes the consolidated fixes.

At this stage, we'd appreciate additional comments/reviews.

-- 
Florian Weimer / Red Hat Product Security
