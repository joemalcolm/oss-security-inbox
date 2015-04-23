X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1059" "Thursday" "23" "April" "2015" "16:35:48" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55390344.4020909@redhat.com>" "28" "Re: [oss-security] Re: open(2) with side effects" nil nil nil "4" "2015042314:35:48" "[oss-security] Re: open(2) with side effects" (number mark "        fweimer@redh Apr 23   28/1059  " thread-indent "\"Re: [oss-security] Re: open(2) with side effects\"\n") "<20150423141623.GC7753@chaz.gmail.com>" ("<5538EEDB.50308@redhat.com>" "<20150423141623.GC7753@chaz.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1575 invoked by uid 550); 23 Apr 2015 14:36:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1548 invoked from network); 23 Apr 2015 14:36:03 -0000
Message-ID: <55390344.4020909@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5538EEDB.50308@redhat.com> <20150423141623.GC7753@chaz.gmail.com>
In-Reply-To: <20150423141623.GC7753@chaz.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 23 Apr 2015 16:35:48 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: open(2) with side effects
To: oss-security@lists.openwall.com

On 04/23/2015 04:16 PM, Stephane Chazelas wrote:
> 2015-04-23 15:08:43 +0200, Florian Weimer:
>> How common are file names on Linux which, when just opened and closed
>> (maybe with fstat or fgetattr inbetween), trigger side effects, such as
>> tape rewind?
> [...]
> 
> Depends what you mean by side effect.

I'm only interested in side effects which are visible to other users and
not directly related to global resource consumption (e.g., dentry usage
or disk space due to keeping open a deleted file).

Pretend that I'm writing a backup tool or something AV-like, which has
to files without interfering with anything else.

> named pipes come to mind.
> 
> If a process is blocked on open() with O_RDONLY or O_WRONLY on a
> named pipe, then when another process comes along and does the
> symmetric (O_WRONLY or O_RDONLY) open(), the first process is
> unblocked, and when you close() it, the other process will see
> eof() on the fd or get a SIGPIPE if it writes...

Interesting.  I don't like that at all.

-- 
Florian Weimer / Red Hat Product Security
