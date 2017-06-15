X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2272" "Thursday" "15" "June" "2017" "10:14:38" "-0700" "Feng Cao" "feng.cao@oracle.com" "<5942C07E.403@oracle.com>" "65" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^CC:" nil nil "6" "2017061517:14:38" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        feng.cao@ora Jun 15   65/2272  " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32608 invoked by uid 550); 15 Jun 2017 17:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21572 invoked from network); 15 Jun 2017 17:14:18 -0000
Message-ID: <5942C07E.403@oracle.com>
Organization: Oracle Corporation
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
References: <201706082349.03355@pali> <201706122347.54536@pali> <1497534642.3053.3.camel@redhat.com> <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
In-Reply-To: <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
CC: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 15 Jun 2017 10:14:38 -0700
From: Feng Cao <feng.cao@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()
To: oss-security@lists.openwall.com


There are several issues which need to be addressed before considering
CVE for documentation. First, most of the documentations have no version
control. Second, CPE doesn't have such a category. Third, it can easily
generate the confusion with CVE for the code fix.

My vote is no.

Thanks,

--Feng

On 6/15/2017 7:21 AM, Kurt Seifried wrote:
> This does bring up an old question:
>
> Should we assign CVEs for code examples/documentation? E.g. We assign CVEs
> for code shipped to people in digital form. Why not assign CVEs for code in
> documentation or commonly used examples? We can go with the rational that
> CVEs get assigned to the affected code bases (e.g. when someone implements
> that documentation/code), but it might also be good to educate the
> community about bad examples/documentation/etc.
>
> My thinking is:
>
> 1) Official documentation that says "do this [insecure thing]" should
> probably get a CVE (e.g. "turn off all the encryption to make it work more
> easily"). This should probably get a CVE, especially as it results in
> operational changes which won't get a CVE (since it's not in code that
> "ships", it's just on the end of whoever is using it).
>
> 2) Official code examples, as above, actual implementations get CVEs, it
> might be useful to raise awareness that the example is bad.
>
> 3) Unofficial but commonly used documentation and code examples, I guess
> the best example here is stackoverflow and friends?
>
> Thoughts/comments (feel free to reply privately if you don't want to be
> public)? I'd like to collect what people think and then present it to the
> CVE board later (this has been on my long term todo list).
>
>
> On Thu, Jun 15, 2017 at 7:50 AM, Adam Maris <amaris@redhat.com> wrote:
>
>> On Mon, 2017-06-12 at 23:47 +0200, Pali Rohár wrote:
>>> Hello!
>>>
>>> Any idea how to handle this particular problem?
>>>
>>>
>> Hi!
>>
>> Given that Oracle (silently) updated the vulnerable example in their
>> documentation, this likely indicates the way to handle this -
>> applications that copied the vulnerable example needs to be fixed and
>> CVEs will be assigned per application.
>>
>> Best Regards,
>>
>> --
>> Adam Mariš, Red Hat Product Security
>> 1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2
>>
>
>

