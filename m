X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["377" "Tuesday" "28" "July" "2015" "14:39:59" "+0200" "Jan Rusnacko" "jrusnack@redhat.com" "<55B7781F.20804@redhat.com>" "9" "Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" nil nil nil "7" "2015072812:39:59" "[oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" (number mark "        jrusnack@red Jul 28    9/377   " thread-indent "\"Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129\"\n") "<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>" ("<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7822 invoked by uid 550); 28 Jul 2015 12:39:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7802 invoked from network); 28 Jul 2015 12:39:28 -0000
Message-ID: <55B7781F.20804@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
References: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
In-Reply-To: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Tue, 28 Jul 2015 14:39:59 +0200
From: Jan Rusnacko <jrusnack@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed
 in ruby-1.9.1-p129
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>, security@ruby-lang.org

On 07/28/2015 11:44 AM, Reed Loden wrote:
> * DL::Function#call could pass tainted arguments to a C function even if
> $SAFE > 0.
> https://github.com/ruby/ruby/commit/7269e3de3cee3bbb6ab77fc708f3a10cab00b65e
Could this be related to CVE-2013-2065 ?

https://www.ruby-lang.org/en/news/2013/05/14/taint-bypass-dl-fiddle-cve-2013-2065/
-- 
Jan Rusnacko, Red Hat Product Security
