X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2462" "Tuesday" "24" "March" "2015" "16:53:30" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<55116C5A.4000803@openwall.com>" "57" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032413:53:30" "[oss-security] CVE for Kali Linux" (number mark "        ch3root@open Mar 24   57/2462  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150324105121.GF23630@suse.de>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<20150323103854.GA28211@suse.de>" "<551081E2.8000607@openwall.com>" "<20150323214101.GA23630@suse.de>" "<20150324105121.GF23630@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19508 invoked by uid 550); 24 Mar 2015 13:53:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19478 invoked from network); 24 Mar 2015 13:53:50 -0000
Message-ID: <55116C5A.4000803@openwall.com>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com> <20150323103854.GA28211@suse.de> <551081E2.8000607@openwall.com> <20150323214101.GA23630@suse.de> <20150324105121.GF23630@suse.de>
In-Reply-To: <20150324105121.GF23630@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 24 Mar 2015 16:53:30 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 2015-03-24 13:51, Marcus Meissner wrote:
> On Mon, Mar 23, 2015 at 10:41:01PM +0100, Marcus Meissner wrote:
>> On Tue, Mar 24, 2015 at 12:13:06AM +0300, Alexander Cherepanov wrote:
>>> On 2015-03-23 13:38, Marcus Meissner wrote:
>>>>> There are some attacks even if you verify signatures, e.g. serving
>>>>> old, known-vulnerable versions. HTTPS can help here (until
>>>>> signatures start to be widely accompanied by expiring timestamps or
>>>>> something).
>>>>
>>>> SUSE has added an expiry tag in the YUM metadata for such cases.
>>>
>>> It's nice to see progress in this area. Does SUSE guard against
>>> other attacks from [1] too?
>>>
>>> [1] https://isis.poly.edu/~jcappos/papers/cappos_pmsec_tr08-02.pdf
>>
>> Our statements from 2008 (7 years ago) still stand and our package
>> manager does the full repository signing since 2006 already.
>>
>> https://lizards.opensuse.org/2008/07/16/package-management-security-on-opensuse/

Judging only from this text, it seems that one of the crucial points of 
your system is "[t]he openSUSE download redirector [that] serves the 
metadata from a known and trusted source". And it lives at... 
http://download.opensuse.org and is not available over HTTPS at all?

>> "Endless Data Attack" is open, as it is hard to solve for openSUSE with
>> its public mirror system.

If you have signed metadata it should be easy to counter this attack for 
packages, right? If you serve you metadata from a trusted source then 
it's also solved for metadata. Even if you serve metadata over 
non-trusted channel it should be easy to bound the size of "root" 
metadata file and record sizes of the next level files in it, etc. Am I 
missing any complications?

>> The expiry was something added a bit later after the paper to address
>> the downgrade and replay attacks.
>
> Some more notes.
>
> While the "Update Scenario" is well covered, we are of course facing issues of "bringing up a system".
>
> Like discussed in the thread, how does the customer find a known good ISO image
> for download.
>
> While our installer is protecting itself with GPG signatures, but there is need for
> the root of trust of the CD medium itself.
>
> So for SUSE we publish SHA256 checksums on the https://download.suse.com/ website at least.
> For openSUSE the GPG/SHA and MD5 are on http://software.opensuse.org/132/de .

Hm, it's HTTP and a big part of this thread is about dangers of exactly 
this situation.

-- 
Alexander Cherepanov
