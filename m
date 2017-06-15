X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1981" "Thursday" "15" "June" "2017" "11:29:26" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>" "48" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061517:29:26" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        kseifried@re Jun 15   48/1981  " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<20170615172804.GA21944@wopr>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" "<20170615172804.GA21944@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26266 invoked by uid 550); 15 Jun 2017 17:34:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26242 invoked from network); 15 Jun 2017 17:34:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6q5nJkYKtIO8p1I9KNm9dYgix5rfaELVxXsaZddl2Ys=;
        b=kUEKfNANgSkAuN34GksOFEpZbQXOKbiZbu6D1/4IbEFFSkFHym9vJmjoaCsvSJuXOy
         uFXuCRrMfhQEyEbKThVYbf607Tm0NZ9KC0/P6TSXtK8UBOWZMjvbbJsnpZzUD2sGEIZd
         58guz1M2M8CBpPwfiOuya/c7yDpnHB0gbXtr3W6ZemrUgBpFHT6KOVe1enIPm0oP5sp6
         +m9WFhCiJSJ/MBGv4ODjSb69CxKuSnj60BesxgonXGOK+A+UR7IUxpwhgPE2gbMz4V+L
         CoB4Rqyt9HglmfYuFSZQsQ+V2QL9pTj2x5RVYxYRu7EqsgLL2fsa/0/fs6wPB3FBbNW1
         SXwg==
X-Gm-Message-State: AKS2vOy0BYxtnTG7hpxZe+G8PEPLwIMbvgXEMry542dIdBBgv9eZD2IN
	fCsxgtJqBWaFQ4M9vBwbYw==
X-Received: by 10.36.76.214 with SMTP id a205mr6593049itb.35.1497548064307;
        Thu, 15 Jun 2017 10:34:24 -0700 (PDT)
References: <201706082349.03355@pali> <201706122347.54536@pali>
 <1497534642.3053.3.camel@redhat.com>
 <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
 <20170615172804.GA21944@wopr>
Message-ID: <d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170615172804.GA21944@wopr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Thu, 15 Jun 2017 11:29:26 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after
 mysql_stmt_close()
To: oss-security@lists.openwall.com



On 06/15/2017 11:28 AM, Kurt H Maier wrote:
> On Thu, Jun 15, 2017 at 08:21:29AM -0600, Kurt Seifried wrote:
>> 1) Official documentation that says "do this [insecure thing]" should
>> probably get a CVE (e.g. "turn off all the encryption to make it work more
>> easily"). This should probably get a CVE, especially as it results in
>> operational changes which won't get a CVE (since it's not in code that
>> "ships", it's just on the end of whoever is using it).
> 
> I really like this idea.  What would be the approach to software whose
> documentation starts out with "turn off selinux," out of curiosity?

Good question. I would rephrase it was "turn off the firewall" or "turn
off the Anti virus" and I think we're definitely into the "yes, that
needs a CVE" territory (even if it can't be fixed, at least people will
be more aware and maybe make more informed decisions when picking).

> Obviously this lessens the security stance of the system, but presumably
> the system is designed to be operable without selinux.  Would CVEs get
> assigned for all bad ideas, or just those that expose actual attack
> vectors?

I would say that being told/forced (e.g. most systems that say turn off
SELinux say that because they couldn't make it work with SELinux on) do
definitely expose the system and people need to be aware of this.

> 
>> 3) Unofficial but commonly used documentation and code examples, I guess
>> the best example here is stackoverflow and friends?
> 
> This is going to cause you to hit INT_MAX relatively quickly.

Well part of it would be the current test case of "does anyone care",
e.g. do people actually use this/care enough to do the work to assign a
CVE, if someone wants to spend their time being the CNA for
stackoverflow and put out good CVEs I'm fine with that.

> 
> 
> khm
> 

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
