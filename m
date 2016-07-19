X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2329" "Tuesday" "19" "July" "2016" "08:32:38" "-0500" "Eric W. Biederman" "ebiederm@xmission.com" "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>" "56" "[oss-security] Re: subuid security patches for shadow package" nil nil nil "7" "2016071913:32:38" "[oss-security] Re: subuid security patches for shadow package" (number mark "U       ebiederm@xmi Jul 19   56/2329  " thread-indent "\"[oss-security] Re: subuid security patches for shadow package\"\n") "<20160719125119.GA7146@suse.de>" ("<20160719093915.GA29047@suse.de>" "<20160719125119.GA7146@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15984 invoked by uid 550); 19 Jul 2016 13:45:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15919 invoked from network); 19 Jul 2016 13:45:50 -0000
From: ebiederm@xmission.com (Eric W. Biederman)
To: Sebastian Krahmer <krahmer@suse.com>
Cc: oss-security@lists.openwall.com,
 pkg-shadow-devel@lists.alioth.debian.org,
 "Serge E. Hallyn" <serge@hallyn.com> 
References: <20160719093915.GA29047@suse.de> <20160719125119.GA7146@suse.de>
Date: Tue, 19 Jul 2016 08:32:38 -0500
In-Reply-To: <20160719125119.GA7146@suse.de> (Sebastian Krahmer's message of
	"Tue, 19 Jul 2016 14:51:19 +0200")
Message-ID: <871t2pycqx.fsf_-_@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1bPVL1-00035t-T9;;;mid=<871t2pycqx.fsf_-_@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=67.3.204.119;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1/L5ywLGc5ZLPLT/fPqvcHtcaU8xImXbVE=
X-SA-Exim-Connect-IP: 67.3.204.119
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Sebastian Krahmer <krahmer@suse.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 534 ms - load_scoreonly_sql: 0.04 (0.0%),
	signal_user_changed: 3.4 (0.6%), b_tie_ro: 2.5 (0.5%), parse: 0.66 (0.1%),
	extract_message_metadata: 13 (2.4%), get_uri_detail_list: 1.87 (0.4%),
	tests_pri_-1000: 4.7 (0.9%), tests_pri_-950: 1.18 (0.2%), tests_pri_-900:
	0.99 (0.2%), tests_pri_-400: 24 (4.5%), check_bayes: 23 (4.3%), b_tokenize: 6
	(1.1%), b_tok_get_all: 9 (1.6%), b_comp_prob: 2.4 (0.4%), b_tok_touch_all:
	3.3 (0.6%), b_finish: 0.73 (0.1%), tests_pri_0: 477 (89.3%),
	check_dkim_signature: 0.48 (0.1%), check_dkim_adsp: 88 (16.4%),
	tests_pri_500: 6 (1.2%), poll_dns_idle: 0.67 (0.1%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Subject: [oss-security] Re: subuid security patches for shadow package


Adding the shadow-development list, so there is a chance other people
familiar with the code can comment as well.

Sebastian Krahmer <krahmer@suse.com> writes:

> On Tue, Jul 19, 2016 at 11:39:15AM +0200, Sebastian Krahmer wrote:
>> Hi
>> 
>> The shadow package contains newuidmap and newgidmap suid
>> binaries in order to allow users to take advantage of the
>> userns feature of uid-mappings.
>> 
>> I added patches here:
>> 
>> https://bugzilla.suse.com/show_bug.cgi?id=979282
>> 
>> they consist of:
>> 
>> 1) Removing getlogin() to find out about users.
>>    It relies on utmp, which is not a trusted base of info (group writable).
>> 
>> 2) Cleaning up UID retrieval and computation. The 'long long' code was
>>    totally unclear to me, as the numbers are converted to ulong right
>>    afterwards anyway. Additionally there was a *int overflow*, which can be
>>    tested via 'newuidmap $$ 0 10000 -1' (given that 10000 is listed as allowed)
>>    which produces no error but tries to write large "count" values to the uid_map
>>    file. Kernel may check for overflows itself, but it should not be allowed
>>    by a suid binary to be written in the first place.
>
> After checking some kernels, it looks like this int wrap is exploitable as a LPE,
> as kernel is using 32bit uid's that are truncated from unsigned longs (64bit on x64)
> as returned by simple_strtoul() [map_write()]. So newuidmap and kernel have an entire
> different view on the upper and lower bounds, making newuidmap overflow (and pass)
> and still being in bounds inside the kernel.
>
> Maybe it would be wise to align integer widths of kernel and the userspace
> tools.
>
> So everyone shipping newuidmap as mode 04755 should fix it. :)

Thank you for the review and looking at this.  I agree that the integer
size issues should all be locked down and handled more clearly.

I think it should be code in have_sub_uids and have_sub_gids that should
be catching overflows and the like.  Limiting things to what is actually
allowed by the subuid file.

I also agree that the kernel is permitting more than it needs to which
in case like this is not helpful.

The issues with the library functions get_my_pwent and getulong I will
have to come up to speed on before I comment knowledgably, but they
definitely appear to be worth looking at.

Eric
