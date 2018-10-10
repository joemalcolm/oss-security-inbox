X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1499" "Wednesday" "10" "October" "2018" "02:55:17" "+0000" "Doran Moppert" "dmoppert@redhat.com" "<20181010025517.GC7851@dmoppert.redhat.com>" "39" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101002:55:17" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       dmoppert@red Oct 10   39/1499  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" "<CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1305 invoked by uid 550); 10 Oct 2018 02:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1281 invoked from network); 10 Oct 2018 02:55:38 -0000
Message-ID: <20181010025517.GC7851@dmoppert.redhat.com>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu>
 <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
 <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
 <20181009182643.5d601a06@jabberwock.cb.piermont.com>
 <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
 <CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Wed, 10 Oct 2018 02:55:26 +0000 (UTC)
Cc: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Wed, 10 Oct 2018 02:55:17 +0000
From: Doran Moppert <dmoppert@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

Given the number of eyes & hours on these issues my question has to be 
naive, so I apologise, but couldn't seccomp provide a safe "safe mode" 
relatively easily?  What syscalls does legit ghostscript need once the 
input and output streams are open?

On Tue, Oct 09, 2018 at 06:34:23PM -0400, Alex Gaynor wrote:
>Would they consider making a build-time "safe PS only" flag that ensured it
>was compiled without things like shell-invocation? Then we could just try
>to convince Linux distros to package it that way :-)
>
>Alex
>
>On Tue, Oct 9, 2018 at 6:33 PM Tavis Ormandy <taviso@google.com> wrote:
>
>> On Tue, Oct 9, 2018 at 3:27 PM Perry E. Metzger <perry@piermont.com>
>> wrote:
>>
>> > I keep wondering if there isn't a way to fully remove the dangerous
>> > bits from a postscript interpreter so it can _only_ be used to view
>> > the document and literally has no file system access compiled in at
>> > all, so there's no way to touch the fs etc. regardless of what flags
>> > the interpreter is invoked with.
>> >
>> > (I, too, find removing the ability to look at historical postscript
>> > documents a bit more draconian than I like.)
>> >
>> >
>> I've discussed it with upstream, it's a hard no because they feel it would
>> make ghostscript non-conforming (i.e. non-conforming with the Adobe
>> PostScript Language Reference Manual)
>>
>> We probably have similar thoughts on this, but that is the final word from
>> upstream.
>>
>> Tavis.

-- 
Doran Moppert
Red Hat Product Security
