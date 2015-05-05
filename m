X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1344" "Tuesday" "5" "May" "2015" "21:37:31" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55491BFB.5000009@redhat.com>" "35" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "5" "2015050519:37:31" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        fweimer@redh May  5   35/1344  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>" "<553943C3.5060704@redhat.com>" "<5548B4DC.4080305@redhat.com>" "<CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16129 invoked by uid 550); 5 May 2015 19:37:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16111 invoked from network); 5 May 2015 19:37:46 -0000
Message-ID: <55491BFB.5000009@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com> <55315C2B.6050207@redhat.com> <553943C3.5060704@redhat.com> <5548B4DC.4080305@redhat.com> <CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>
In-Reply-To: <CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 05 May 2015 21:37:31 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On 05/05/2015 09:01 PM, Tavis Ormandy wrote:
> On Tue, May 5, 2015 at 5:17 AM, Florian Weimer <fweimer@redhat.com> wrote:
>> On 04/23/2015 09:10 PM, Florian Weimer wrote:
>>> On 04/17/2015 09:16 PM, Florian Weimer wrote:
>>>> A quick update on the abrt situation.
>>>
>>> Another update.  We now have a public tracking bug listing the issues:
>>>
>>>   <https://bugzilla.redhat.com/show_bug.cgi?id=1214172>
>>
>>
>> There is a public build (against EPEL7) of the consolidated fixes,
>> available as a Copr repository:
>>
>>   <http://copr.fedoraproject.org/coprs/jfilak/abrt-hardened/>
>>
>> This also includes the consolidated fixes.
>>
>> At this stage, we'd appreciate additional comments/reviews.
> 
> Thanks Florian, this looks great. I'm just looking at the new ccpp, Is
> it intentional that os-release and so on are still copied from the
> process root?

Thanks for taking a look.  Have you downloaded the Copr builds?

In 0092-ccpp-do-not-read-data-from-root-directories.patch for abrt, the
root directory argument for dd_create_basic_files is changed to NULL,
which means that the copying inside dd_create_basic_files will not
happen (although the code is still around).  As far as I can tell, this
patch is also applied in the build.  Is there some other copying
operation I'm missing?

-- 
Florian Weimer / Red Hat Product Security
