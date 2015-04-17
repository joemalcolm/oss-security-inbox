X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["876" "Friday" "17" "April" "2015" "09:41:46" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5530B93A.5090701@redhat.com>" "21" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" nil nil nil "4" "2015041707:41:46" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" (number mark "        fweimer@redh Apr 17   21/876   " thread-indent "\"[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation\"\n") "<CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>" ("<552FAE4F.6070300@redhat.com>" "<CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3413 invoked by uid 550); 17 Apr 2015 07:59:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3382 invoked from network); 17 Apr 2015 07:59:15 -0000
Message-ID: <5530B93A.5090701@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <552FAE4F.6070300@redhat.com> <CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>
In-Reply-To: <CAGXu5jK2m4qZ0Qmhr9zUFjCxNPza6bRsAaAxDaxM9oUi+b=99Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
CC: oss-security@lists.openwall.com
Date: Fri, 17 Apr 2015 09:41:46 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation
To: Kees Cook <keescook@chromium.org>

On 04/16/2015 08:41 PM, Kees Cook wrote:
> On Thu, Apr 16, 2015 at 5:42 AM, Florian Weimer <fweimer@redhat.com> wrote:
>> Should this be treated as a security vulnerability?
>>
>> “fs: make dumpable=2 require fully qualified path”
>> <http://lwn.net/Articles/503682/>
>>
>> Some widely-used cronie versions still do not have hardening and parse
>> commands in core dumps.
> 
> I didn't seek a CVE for this at the time since it requires a pretty
> specific combination of configurations. Namely: setting dumpable=2
> without a dump handler, which I couldn't find any distro doing. I have
> no objection, of course.

Ah, right.  I noticed this while looking at the file-based coredump
emulation in abrt-hook-ccpp.  It's not the default, either, so we have
not yet assigned a CVE, and we probably won't call it a vulnerability.

-- 
Florian Weimer / Red Hat Product Security
