X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["496" "Thursday" "17" "September" "2015" "14:51:26" "-0400" "Steve Dickson" "SteveD@redhat.com" "<55FB0BAE.8070101@RedHat.com>" "19" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091718:51:26" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        SteveD@redha Sep 17   19/496   " thread-indent "\"[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>" ("<20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9321 invoked by uid 550); 17 Sep 2015 19:04:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13871 invoked from network); 17 Sep 2015 18:51:39 -0000
References: <20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>
Message-ID: <55FB0BAE.8070101@RedHat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com
Date: Thu, 17 Sep 2015 14:51:26 -0400
From: Steve Dickson <SteveD@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind
To: cve-assign@mitre.org, meissner@suse.de



On 09/17/2015 12:20 PM, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
>> http://www.spinics.net/lists/linux-nfs/msg53045.html
>> https://bugzilla.suse.com/show_bug.cgi?id=946204
> 
>> frees the netbuf caller_addr and caller_addr.buf. However, it does not
>> clear xp_rtaddr, so xp_rtaddr.buf now refers to memory region A, which
>> is free.
>>
>> ... It will reuse the buffer inside xp_rtaddr
> 
> Use CVE-2015-7236.
Will there be a bz opened up? 

steved.
