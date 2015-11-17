X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1407" "Tuesday" "17" "November" "2015" "08:04:46" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<564B501E.5040401@oracle.com>" "30" "Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash" "^CC:" nil nil "11" "2015111716:04:46" "[oss-security] suckless sent and libxft-dev 2.3.2-1 crash" (number mark "U       alan.coopers Nov 17   30/1407  " thread-indent "\"Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash\"\n") "<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>" ("<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15367 invoked by uid 550); 17 Nov 2015 16:05:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14322 invoked from network); 17 Nov 2015 16:05:01 -0000
Message-ID: <564B501E.5040401@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
In-Reply-To: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0021.oracle.com [156.151.31.71]
CC: "X.Org Security Team" <xorg-security@lists.x.org>
Date: Tue, 17 Nov 2015 08:04:46 -0800
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash
To: oss-security@lists.openwall.com

On 11/16/15 02:47 PM, Simon . wrote:
> please review, whether this needs a CVE.

I can't speak for Mitre or any other CNA's, but I can speak for the
security team at X.Org, which is responsible for libXft and would
need to put out a security advisory if there is a CVE in it.

 From our point of view, there's too little information here to
determine, and that's after I went out and tracked down what the
hell "sent" does (when asking for CVE's for programs that aren't
very popular and have names that are hard to google because they're
also common words, it helps to provide some background).  It's also
generally useful to have a root cause determined first, so someone
knows which software to track the CVE against - would this be a CVE
against libXft for mishandling data, or a CVE againt the "sent"
program or some other library for not adequately verifying data from
a source it shouldn't have trusted?  Is libXft actually at fault or
is it the victim of memory corruption that happened before the call?

Is there any trust or privilege boundary being crossed here?
If a user can crash a program running as themselves, it's a bug,
but they can also kill -SEGV it, so it's not letting them do anything
they shouldn't be able to.

Why do you think this might deserve a CVE?

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

