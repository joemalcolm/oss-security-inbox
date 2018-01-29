X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["962" "Monday" "29" "January" "2018" "11:29:14" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<7835816e-4c5d-94a7-0de3-4b69fe7f4cb7@orlitzky.com>" "26" "Re: [oss-security] CVE-2017-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0" nil nil nil "1" "2018012916:29:14" "[oss-security] CVE-2017-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0" (number mark "U       michael@orli Jan 29   26/962   " thread-indent "\"Re: [oss-security] CVE-2017-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0\"\n") "<8e45c60c-44db-c9ba-c804-bb45bd0a3b0a@redhat.com>" ("<efa2af21-aeb9-39a0-bc87-38842e56a9b2@orlitzky.com>" "<a1a06b98-7f7b-60f9-dff9-0396a522d428@orlitzky.com>" "<8e45c60c-44db-c9ba-c804-bb45bd0a3b0a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7569 invoked by uid 550); 29 Jan 2018 16:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7551 invoked from network); 29 Jan 2018 16:29:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1517243355; bh=zgRN1PdpqGHt9EZI0dOtf1RoF6zV779QsWZbyJ2yddI=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=noBlJKfcflZuOtdQtZDjEaQIBTSRB5tVSNY+vWllC+tuaKhJq14VsdNPxAiCXE0vr
	 T4CTNEFATmyvWqpEuQ2VtRkq7bqApKRvAa339MRG3tn3afquyEDBv9Pm55j0PJrhln
	 DZCKEPJ4tuPD1xMdbDaGZb2xXkWDzxrJsezK2rgc=
To: oss-security@lists.openwall.com
References: <efa2af21-aeb9-39a0-bc87-38842e56a9b2@orlitzky.com>
 <a1a06b98-7f7b-60f9-dff9-0396a522d428@orlitzky.com>
 <8e45c60c-44db-c9ba-c804-bb45bd0a3b0a@redhat.com>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <7835816e-4c5d-94a7-0de3-4b69fe7f4cb7@orlitzky.com>
Date: Mon, 29 Jan 2018 11:29:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <8e45c60c-44db-c9ba-c804-bb45bd0a3b0a@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2017-18078: systemd-tmpfiles root privilege
 escalation with fs.protected_hardlinks=0

On 01/29/2018 11:13 AM, Florian Weimer wrote:
> On 01/29/2018 05:09 PM, Michael Orlitzky wrote:
>> Correction to the CVE-ID: it's 2017, not 2018. So CVE-2017-18078.
> 
> Isn't it a duplicate of CVE-2013-4392?
> 

They look pretty similar. The symlink issue was fixed as far as I can
tell -- I tried to exploit them, and failed. The tmpfiles code is using
a clever trick:

  xsprintf(fn, "/proc/self/fd/%i", fd);
  ...
  if (chown(fn, ...

On Linux, the proc stuff is magic, and that just does the right thing,
even though a priori it looks like "chown" will follow symlinks.

Hard links were a different story, and there was no attempt made to
avoid them outside of relying on the fs.protected_hardlinks sysctl. So
if the administrator disables that protection, there's no safety net.

Did you cover the hard link problem in CVE-2013-4392, too? Regardless,
there is now some extra protection built-in to tmpfiles to reduce the
risk when the sysctl is disabled.

