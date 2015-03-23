X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["909" "Monday" "23" "March" "2015" "10:43:07" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<550FC40B.1050808@openwall.com>" "19" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032307:43:07" "[oss-security] CVE for Kali Linux" (number mark "        ch3root@open Mar 23   19/909   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<877fu8bnks.fsf@hope.eyrie.org>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<877fu8bnks.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7259 invoked by uid 550); 23 Mar 2015 07:43:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7238 invoked from network); 23 Mar 2015 07:43:20 -0000
Message-ID: <550FC40B.1050808@openwall.com>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com>	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>	<20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com> <877fu8bnks.fsf@hope.eyrie.org>
In-Reply-To: <877fu8bnks.fsf@hope.eyrie.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Mon, 23 Mar 2015 10:43:07 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 23.03.2015 02:48, Russ Allbery wrote:
> Alexander Cherepanov <ch3root@openwall.com> writes:
>
>> There are some attacks even if you verify signatures, e.g. serving old,
>> known-vulnerable versions. HTTPS can help here (until signatures start
>> to be widely accompanied by expiring timestamps or something).
>
> Debian is indeed moving in exactly that direction, using the Valid-Until
> attribute of the archive metadata.  This currently isn't (yet?) enabled
> for the main stable archive, but is for the unstable and testing archives,
> the security archive, and the backports archive.

Yes, and Release file for stable includes Date header, which is good 
enough for manual inspection. But cd images have only their SHA256SUMS 
signed, right? This means that file names are signed too so an attacker 
cannot substitute debian 7.7. for debian 7.8 but dates are harder to check.

-- 
Alexander Cherepanov
