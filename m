X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2501" "Tuesday" "12" "January" "2021" "11:04:29" "-0500" "Sasha Levin" "sashal@kernel.org" "<20210112160429.GM4035784@sasha-vm>" "35" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011216:04:29" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       sashal@kerne Jan 12   35/2501  " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "<X/1YIT59FZ7clijT@kroah.com>" "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11574 invoked by uid 550); 12 Jan 2021 16:04:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11531 invoked from network); 12 Jan 2021 16:04:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1610467471;
	bh=/ex9+Z+fIEGYt9CjQr5i3vWy3HFU4zKFWIplyMhguv4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Od9oiAJXNGLwbx6CpDz2mxqBaT13Od91EeU0TtW2GGiGd0Mf9iOYkmJVsu3eeDPlf
	 dhtGz0dc3N5PQH/UfJEfojsevDpfAcDuZTlEc84ujKMaso+GRwH/7DQqH1wN+Fscsb
	 CrQHZSSS2r4TdBajw19OzeixliDmap+8jXOHDXa/T2jIoSk/v3q7wVw2d24fph1kVv
	 QQxWO1b9GoXa9omMXlHlROIw9KIxno80IqJbf/XGFcqWT0E2aRji/YVTeCH0627nY4
	 aJGcCCkYY1jJsaqyfofEG+jGTTxW0ogIC0Einq6LZW7UpLm0VPM1lwCf7YqE6EL92u
	 JME2IJQPz37xg==
Date: Tue, 12 Jan 2021 11:04:29 -0500
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <20210112160429.GM4035784@sasha-vm>
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
 <X/1YIT59FZ7clijT@kroah.com>
 <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic

On Tue, Jan 12, 2021 at 03:23:16PM +0000, John Haxby wrote:
>> On 12 Jan 2021, at 08:04, Greg KH <greg@kroah.com> wrote:
>>
>> I still do not understand why you report issues that are fixed over a
>> year ago (October 2019) and assign them a CVE like this.  Who does this
>> help out?  And what about the thousands of other issues that are fixed
>> in the kernel and not assigned a CVE like this, are they somehow not as
>> important to your group?
>>
>> What determines what you want to give a CVE to and what you do not?
>
>
>I think I can answer that.   There's nothing technical going on here, it's down to the behaviour of the end users of enterprise systems.
>
>A lot of those people have a hard time understanding that they do actually want bug fixes and an even harder time understanding that they need to actually do something to install those fixes.   (I was once asked if I could fix a problem without changing anything, anything at all when the fix was a one-off chmod.)   A CVE number gets attention: think of it as getting hold of the customer by the lapels and going nose-to-nose to explain in words of one syllable they if they don't update their systems that they will crash and they will get hacked.
>
>Ooh, no, they say, we can't possibly take the risk of updating our systems.  Suppose something goes wrong?   Sheesh.   Suppose, instead, someone comes along and sees a known, fixed bug is unfixed and uses that to trash your systems.    Or that you've got a bug that crashes the machine once a week for which there's a fix.   But, no, apparently the mythical risk of a tested update vs the actual quantifiable risk of leaving the bug unfixed is so great that they'd rather take the real, quantifiable risk.   I suppose that's understandable, after a fashion, even though actual regressions are quite rare.
>
>If you present a customer with a CVE number (with or without a score) then they have SLAs which will ensure that that fix gets applied.

The subject of this thread is a "vulnerability" that requires root to
exploit and was fixed ages ago.

If we all agree that CVEs (in the context of the kernel, not userspace)
aren't here to provide technical value but rather a marketing scheme,
maybe we should just start treating them as such?

About 95% of the commits that go in the stable tree qualify as CVEs,
maybe the path forward here is to request CVEs for a handful of those,
for each stable release and encourage customers to upgrade more often
that way?

-- 
Thanks,
Sasha
