X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1811" "Friday" "20" "March" "2015" "10:12:19" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<550C46E3.4010806@redhat.com>" "40" "Re: [oss-security] membership request to the closed linux-distros security mailing list" nil nil nil "3" "2015032016:12:19" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        kseifried@re Mar 20   40/1811  " thread-indent "\"Re: [oss-security] membership request to the closed linux-distros security mailing list\"\n") "<20150320155553.GN15408@suse.de>" ("<550C19ED.9030901@enea.com>" "<20150320145413.GA10416@openwall.com>" "<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>" "<20150320155026.GF3718@symphytum.spacehopper.org>" "<CA+aC4ktANtitip_dsvtwkuU6UEikdLzdH=prrhuXrcfL4LzQvA@mail.gmail.com>" "<20150320155553.GN15408@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19511 invoked by uid 550); 20 Mar 2015 16:12:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19492 invoked from network); 20 Mar 2015 16:12:34 -0000
Message-ID: <550C46E3.4010806@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <550C19ED.9030901@enea.com> <20150320145413.GA10416@openwall.com> <CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com> <20150320155026.GF3718@symphytum.spacehopper.org> <CA+aC4ktANtitip_dsvtwkuU6UEikdLzdH=prrhuXrcfL4LzQvA@mail.gmail.com> <20150320155553.GN15408@suse.de>
In-Reply-To: <20150320155553.GN15408@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Fri, 20 Mar 2015 10:12:19 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

On 03/20/2015 09:55 AM, Marcus Meissner wrote:
> On Fri, Mar 20, 2015 at 08:54:29AM -0700, Anthony Liguori wrote:
>> On Fri, Mar 20, 2015 at 8:50 AM, Stuart Henderson <stu@spacehopper.org> wrote:
>>> On 2015/03/20 08:16, Anthony Liguori wrote:
>>>>
>>>> I think the alternative is to formalize what already appears to be the
>>>> existing practice: disclose distros@ on the existence of a
>>>> vulnerability but require direct contact for the details of the
>>>> vulnerability if the submitter/upstream thinks the impact is high.
>>>
>>> Are private lists even needed if this policy is taken?
>>
>> I think there's a lot of value in being able to just send a low-medium
>> impact issue to a single list of groups that have gone through some
>> level of vetting without needing to respond directly to individuals
>> and making value judgements.
>>
>> I also think it's helpful to have a single point of contact so that an
>> upstream isn't dealing with 10 different people from a single
>> organization asking for details.
> 
> Why not just publishing a low - medium impact vulnerability directly?
> 
> Embargoe handling alwas also has some overhead , which is not necessary in such cases.
> 
> Ciao, Marcus


Agreed 100%, we're changing from the old default of "everything should
be embargoed unless it can be public" to "everything should be public
unless it must be embargoed" (and ideally a short embargo like this
weeks OpenSSL one). It creates a LOT less work. Especially with the
prevalence of GitHub which has no concept of private issues/commits, so
fixing things privately means you have to work outside of your normal
workflow which is insane for anything that isn't important/critical.


-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
