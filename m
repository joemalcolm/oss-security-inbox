X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1429" "Friday" "3" "April" "2015" "10:17:30" "+0200" "Jan Rusnacko" "jrusnack@redhat.com" "<551E4C9A.7000008@redhat.com>" "26" "Re: [oss-security] Re: libyaml / YAML-LibYAML DoS" nil nil nil "4" "2015040308:17:30" "[oss-security] Re: libyaml / YAML-LibYAML DoS" (number mark "        jrusnack@red Apr  3   26/1429  " thread-indent "\"Re: [oss-security] Re: libyaml / YAML-LibYAML DoS\"\n") "<20141128200411.70A406C0018@smtpvmsrv1.mitre.org>" ("<20141128200411.70A406C0018@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12051 invoked by uid 550); 3 Apr 2015 08:17:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12030 invoked from network); 3 Apr 2015 08:17:47 -0000
Message-ID: <551E4C9A.7000008@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20141128200411.70A406C0018@smtpvmsrv1.mitre.org>
In-Reply-To: <20141128200411.70A406C0018@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
CC: oss-security@lists.openwall.com
Date: Fri, 03 Apr 2015 10:17:30 +0200
From: Jan Rusnacko <jrusnack@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: libyaml / YAML-LibYAML DoS
To: cve-assign@mitre.org

On 11/28/2014 09:04 PM, cve-assign@mitre.org wrote:
> This Python code is apparently intended to correspond directly to the
> yaml_parser_save_simple_key C code. However, because it's in a
> different programming language, we would typically consider it a
> separate codebase, eligible for its own CVE IDs. Here, "assert
> self.allow_simple_key or not required" is not within the scope of
> CVE-2014-9130.
> 
> One question is whether identifying a security-relevant DoS caused by
> an assert in C code means that there is also a security-relevant DoS
> caused by an assert in corresponding Python code. In other words,
> should the threat model be considered the same: the assert within
> scanner.c might cause an outage of a C application that was intended
> to remain available for processing YAML from other clients, and the
> assert within scanner.py might cause an outage of a Python application
> that was intended to remain available for processing YAML from other
> clients? Or should the latter be considered much less plausible? If
> the threat model is largely the same, we will assign a second CVE ID
> for the scanner.py issue.

Belated ping on this one - since I don`t see a separate CVE assigned 
for scanner.py, shall it be tracked under CVE-2014-9130, despite the
above statement that it is not within it`s scope ? Statement on how to
track this would be appreciated.
-- 
Jan Rusnacko, Red Hat Product Security
