X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Friday" "23" "February" "2018" "09:25:55" "+0000" "Mark Thomas" "markt@apache.org" "<b1b66680-c525-4bdd-0359-4162372ad073@apache.org>" "21" "Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" nil nil nil "2" "2018022309:25:55" "[oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" (number mark "U       markt@apache Feb 23   21/878   " thread-indent "\"Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored\"\n") "<20180223042948.GA9316@sin.redhat.com>" ("<2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>" "<119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>" "<20180223042948.GA9316@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7593 invoked by uid 550); 23 Feb 2018 11:21:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30264 invoked from network); 23 Feb 2018 09:26:11 -0000
To: Doran Moppert <dmoppert@redhat.com>, oss-security@lists.openwall.com
References: <2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>
 <119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>
 <20180223042948.GA9316@sin.redhat.com>
From: Mark Thomas <markt@apache.org>
Message-ID: <b1b66680-c525-4bdd-0359-4162372ad073@apache.org>
Date: Fri, 23 Feb 2018 09:25:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180223042948.GA9316@sin.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints
 mapped to context root are ignored

On 23/02/18 04:29, Doran Moppert wrote:
> On Feb 23 2018, Mark Thomas wrote:
>> CVE-2018-1304 Security constraints mapped to context root are ignored
>>
>> Mitigation:
>> Users of the affected versions should apply one of the following
>> mitigations:
>> - Review security constraints and confirm none use a URL patten of ""
>>   (the empty string)
> 
> Will a URL pattern of "/" correctly protect the context root of
> vulnerable versions?  If so, this seems worth mentioning.

The problem typically occurs with security annotations on servlets. In
this case the security annotations pick up the mappings from the servlet
they are annotating. If you changed the servlet mapping from "" to "/"
that would almost certainly significantly change the behaviour of the
web application since you are changing the mapping from "exact match to
context root" to "default servlet".

Mark
